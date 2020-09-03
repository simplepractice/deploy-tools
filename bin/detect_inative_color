#!/usr/bin/env ruby
require 'aws-sdk-elasticloadbalancingv2'
require 'pry'

lb_name = ARGV[0]
lb_port = 443
domain = ARGV[1]

client = Aws::ElasticLoadBalancingV2::Client.new
alb = client.describe_load_balancers.load_balancers.find {|x| x.load_balancer_name==lb_name}
listener = client.describe_listeners(load_balancer_arn: alb.load_balancer_arn).listeners.find {|x| x.port == lb_port}
rule = client.describe_rules(listener_arn: listener.listener_arn).rules.find {|x| x.conditions.first.values.include? domain}

if rule.actions.first.target_group_arn.include? 'blue'
  puts 'green'
elsif rule.actions.first.target_group_arn.include? 'green'
  puts 'blue'
else
  fail 'Cannot detect current color'
end
