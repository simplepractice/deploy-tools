Gem::Specification.new do |s|
  s.name        = 'deploy-tools'
  s.version     = '0.0.5'
  s.date        = '2021-03-17'
  s.summary     = "Deploy tools"
  s.description = "A set of script used for deployment"
  s.authors     = ["Tony Nyurkin"]
  s.email       = 'tony@simplepractice.com'
  s.files       = `git ls-files `.split("\n")
  s.bindir      = "bin"
  s.executables = ["blue_green_switch", "detect_inactive_color"]
  s.add_runtime_dependency 'aws-sdk-elasticloadbalancingv2', '~>1.44'
end
