require File.dirname(__FILE__) + '/lib/yap-shell-addon-tab-completion/version'

Gem::Specification.new do |spec|
  spec.name    = 'yap-shell-addon-tab-completion'
  spec.version = YapShellAddonTabCompletion::VERSION
  spec.authors  = ['Your name']
  spec.email    = 'you@example.com'
  spec.date    = Date.today.to_s

  spec.summary = 'tab-completion summary goes here.'
  spec.description = 'tab-completion description goes here.'
  spec.homepage = ''
  spec.license = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(/^(test|spec|features)\//) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(/^exe\//) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "yap-shell", "~> 0.6"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 11.2"
  spec.add_development_dependency "rspec", "~> 3.4"
end
