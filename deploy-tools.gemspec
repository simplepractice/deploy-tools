Gem::Specification.new do |s|
  s.name        = 'deploy-tools'
  s.version     = '0.2.0'
  s.date        = '2024-04-11'
  s.summary     = "Deploy tools"
  s.description = "A set of script used for deployment"
  s.authors     = ["Tony Nyurkin", "Serhii Voronoi", "George Pantazes"]
  s.email       = 'infra@simplepractice.com'
  s.files       = `git ls-files `.split("\n")
  s.bindir      = "bin"
  s.executables = [
    'blue_green_switch',
    'detect_inactive_color',
    'prompt_for_unusual_local_git_state'
  ]
  s.add_runtime_dependency 'aws-sdk-elasticloadbalancingv2', '~>1.44'
end
