#!/usr/bin/env ruby
require 'aws-sdk-elasticloadbalancingv2'
require 'pry'

lb_name = ARGV[0]
lb_port = 443
domain = ARGV[1]
tg_prefix = ARGV[2]


client = Aws::ElasticLoadBalancingV2::Client.new
alb = client.describe_load_balancers.load_balancers.find {|x| x.load_balancer_name==lb_name}
listener = client.describe_listeners(load_balancer_arn: alb.load_balancer_arn).listeners.find {|x| x.port == lb_port}
rule = client.describe_rules(listener_arn: listener.listener_arn).rules.find {|x| x.conditions.first.values.include? domain}
tg_green = client.describe_target_groups.target_groups.find {|x| x.target_group_name == "#{tg_prefix}-green"}
tg_blue = client.describe_target_groups.target_groups.find {|x| x.target_group_name == "#{tg_prefix}-blue"}

if rule.actions.first.target_group_arn.include? 'blue'
  puts 'Detected blue tg, switching to green'
  tg_color = tg_green
elsif rule.actions.first.target_group_arn.include? 'green'
  puts 'Detected blue green, switching to blue'
  tg_color = tg_blue
else
  fail 'Cannot detect current color'
end

client.modify_rule(rule_arn: rule.rule_arn, actions: [{ type: 'forward', target_group_arn: tg_color.target_group_arn }])
