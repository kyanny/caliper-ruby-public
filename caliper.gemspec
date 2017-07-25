$:.push File.expand_path("../lib", __FILE__)

require 'caliper/version'

Gem::Specification.new do |g|
	g.name        = "ims_caliper"
	g.version     = Caliper::VERSION
	g.authors     = ["Matthew Hogan", "Prashant Nayak", "Zhen Qian", "Anthony Whyte"]
	g.email       = ["lmattson@imsglobal.org"]
	g.homepage    = "https://github.com/IMSGlobal/caliper-ruby-public"
	g.summary     = "Caliper Sensor API"
	g.description = "Ruby implementation of the IMS Caliper Sensor."
	g.license     = "LGPL-3.0"

	#g.files = Dir["{app,config,db,lib}/**/*", "Rakefile"]
	g.files     = `git ls-files`.split($\)
	g.executables   = g.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
	g.test_files    = g.files.grep(%r{^(test|spec|features)/})
	g.require_path = 'lib'
end
