Gem::Specification.new do |s|
  s.name = "rack-avvo_ignite"
  s.version = "0.0.3"
  s.description = "Integrate Avvo Ignite tracking into your Rack-based application"
  s.summary = "Integrate Avvo Ignite tracking into your Rack-based application"
  s.add_dependency "rack"

  s.author = "Jeff Ching"
  s.email = "jeff@chingr.com"
  s.homepage = "http://github.com/chingor13/rack-avvo_ignite"
  s.license = "MIT"

  s.files = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]
end
