lib = File.expand_path("../lib/", __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name        = 'jokr'
  s.version     = '2.0.0'
  s.date        = '2014-05-30'
  s.executables << 'jokr'
  s.default_executable = 'jokr'
  s.summary     = "Find a random joke or funny image to lighten your mood"
  s.description = "Jokr is a supreme means of bringing a smile to an otherwise barrenly-lacking upside-down frown wasteland. Put simply, it helps you smile .. Something we all could use a bit more of in our lives. So enjoy (and don't resist the smile !)"
  s.authors     = ["Dinesh Rai","Jake Hunh"]
  s.email       = 'drai89@gmail.com','imasidonion@gmail.com'
  s.files       = ["lib/controller.rb","lib/viewer.rb","lib/reddit.rb"]
  s.homepage    =
    'http://rubygems.org/gems/jokr'
  s.license       = 'MIT'
end