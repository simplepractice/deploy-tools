Gem::Specification.new do |s|
  s.name        = "deploy-tools"
  s.version     = "0.2.0"
  s.required_ruby_version = ">= 2.7"
  s.summary     = "Deploy tools"
  s.description = "A set of script used for deployment"
  s.authors     = ["Tony Nyurkin", "Serhii Voronoi", "George Pantazes"]
  s.email       = "infra@simplepractice.com"
  s.homepage    = "https://github.com/simplepractice/deploy-tools"
  s.files       = ["README.md", *Dir.glob("bin/*")]
  s.bindir      = "bin"
  s.executables = [
    "blue_green_switch",
    "detect_inactive_color",
    "prompt_for_unusual_local_git_state"
  ]
  s.add_runtime_dependency "aws-sdk-elasticloadbalancingv2", "~>1.44"
end
