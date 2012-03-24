Gem::Specification.new do |s|
  s.name = 'cinch-basic_ctcp'
  s.version = '1.0.2'
  s.summary = 'Implement the most important CTCP replies for Cinch bots'
  s.description = 'Implement the most important CTCP replies for Cinch bots'
  s.authors = ['Dominik Honnef']
  s.email = ['dominikh@fork-bomb.org']
  s.homepage = 'http://rubydoc.info/github/cinchrb/cinch-basic_ctcp'
  s.required_ruby_version = '>= 1.9.1'
  s.files = Dir['LICENSE', 'README.md', '{lib,examples}/**/*']
  s.add_dependency("cinch", "~> 2.0")
end
