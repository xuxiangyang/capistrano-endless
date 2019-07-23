lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "capistrano-endless"
  spec.version       = "0.1.0"
  spec.authors       = ["xuxiangyang"]
  spec.email         = ["xxy@xuxiangyang.com"]

  spec.summary       = %q[capistrano plugin for golang endless]
  spec.description   = %q[capistrano plugin for golang endless]
  spec.homepage      = "https://github.com/xuxiangyang/capistrano-endless"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "capistrano", "~> 3.1"
  spec.add_dependency "capistrano-rvm", "~> 0.1"
  spec.add_dependency "capistrano-bundler", "~> 1.2"
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
