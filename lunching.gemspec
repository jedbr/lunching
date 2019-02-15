require File.expand_path('../lib/lunching', __FILE__)

Gem::Specification.new do |s|
  s.name = 'lunching'
  s.version = '0.0.1'
  s.date = '2018-12-12'
  s.summary = 'To order fooooood'
  s.authors = ['Jędrzej Bryll', 'Szymon Sobecki']
  s.files = Dir[
    'lib/**/*.rb',
    'Gemfile',
    'config_sample.yml'
  ]
  s.executables   = ['lunching', 'lunching_start']
end
