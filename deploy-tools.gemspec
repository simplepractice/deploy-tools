Gem::Specification.new do |s|
  s.name        = 'deploy-tools'
  s.version     = '0.0.1'
  s.date        = '2020-09-03'
  s.summary     = "Deploy tools"
  s.description = "A set of script used for deployment"
  s.authors     = ["Tony Nyurkin"]
  s.email       = 'tony@simplepractice.com'
  s.files       = `git ls-files `.split("\n")
  s.executables = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.add_runtime_dependency 'aws-sdk-elasticloadbalancingv2', '~>1.44'
end
