# -*- encoding: utf-8 -*-
# stub: sqlite3_ar_regexp 2.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "sqlite3_ar_regexp".freeze
  s.version = "2.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Aaron Lasseigne".freeze]
  s.date = "2016-10-26"
  s.description = "Adds REGEXP support for SQLite3 in ActiveRecord.".freeze
  s.email = ["aaron.lasseigne@gmail.com".freeze]
  s.homepage = "https://github.com/AaronLasseigne/sqlite3_ar_regexp".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.rubygems_version = "2.6.13".freeze
  s.summary = "Adds REGEXP support for SQLite3 in ActiveRecord.".freeze

  s.installed_by_version = "2.6.13" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<activerecord>.freeze, [">= 3.2"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
    else
      s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_dependency(%q<activerecord>.freeze, [">= 3.2"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_dependency(%q<activerecord>.freeze, [">= 3.2"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
  end
end
