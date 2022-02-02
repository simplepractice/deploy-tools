Gem::Specification.new do |s|
  s.name        = 'deploy-tools'
  s.version     = '0.1.1'
  s.date        = '2022-02-01'
  s.summary     = "Deploy tools"
  s.description = "A set of script used for deployment"
  s.authors     = ["Tony Nyurkin", "Serhii Voronoi"]
  s.email       = 'tony@simplepractice.com'
  s.files       = `git ls-files `.split("\n")
  s.bindir      = "bin"
  s.executables = ["blue_green_switch", "detect_inactive_color"]
  s.add_runtime_dependency 'aws-sdk-elasticloadbalancingv2', '~>1.44'
end
