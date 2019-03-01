$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'mailgun_catcher/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = 'mailgun_catcher'
  spec.version     = MailgunCatcher::VERSION
  spec.authors     = ['Stjepan Hadjić']
  spec.email       = ['d4be4st@gmail.com']
  spec.homepage    = 'https://github.com/infinum/rails-infinum-maingun_catcher'
  spec.summary     = 'Engine for maingun hooks'
  spec.description = 'Engine for maingun hooks'
  spec.license     = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.add_dependency 'bugsnag'
  spec.add_dependency 'rails', '~> 5.0'
end
