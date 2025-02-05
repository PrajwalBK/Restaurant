# frozen_string_literal: true
begin
  require_relative 'lib/webrick/version'
rescue LoadError
  # for Ruby core repository
  require_relative 'version'
end

Gem::Specification.new do |s|
  s.name = "webrick"
  s.version = WEBrick::VERSION
  s.summary = "HTTP server toolkit"
  s.description = "WEBrick is an HTTP server toolkit that can be configured as an HTTPS server, a proxy server, and a virtual-host server."

  s.require_path = %w{lib}
  s.files =  [
    "Gemfile",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "lib/webrick.rb",
    "lib/webrick/accesslog.rb",
    "lib/webrick/cgi.rb",
    "lib/webrick/compat.rb",
    "lib/webrick/config.rb",
    "lib/webrick/cookie.rb",
    "lib/webrick/htmlutils.rb",
    "lib/webrick/httpauth.rb",
    "lib/webrick/httpauth/authenticator.rb",
    "lib/webrick/httpauth/basicauth.rb",
    "lib/webrick/httpauth/digestauth.rb",
    "lib/webrick/httpauth/htdigest.rb",
    "lib/webrick/httpauth/htgroup.rb",
    "lib/webrick/httpauth/htpasswd.rb",
    "lib/webrick/httpauth/userdb.rb",
    "lib/webrick/httpproxy.rb",
    "lib/webrick/httprequest.rb",
    "lib/webrick/httpresponse.rb",
    "lib/webrick/https.rb",
    "lib/webrick/httpserver.rb",
    "lib/webrick/httpservlet.rb",
    "lib/webrick/httpservlet/abstract.rb",
    "lib/webrick/httpservlet/cgi_runner.rb",
    "lib/webrick/httpservlet/cgihandler.rb",
    "lib/webrick/httpservlet/erbhandler.rb",
    "lib/webrick/httpservlet/filehandler.rb",
    "lib/webrick/httpservlet/prochandler.rb",
    "lib/webrick/httpstatus.rb",
    "lib/webrick/httputils.rb",
    "lib/webrick/httpversion.rb",
    "lib/webrick/log.rb",
    "lib/webrick/server.rb",
    "lib/webrick/ssl.rb",
    "lib/webrick/utils.rb",
    "lib/webrick/version.rb",
    "sig/accesslog.rbs",
    "sig/cgi.rbs",
    "sig/compat.rbs",
    "sig/config.rbs",
    "sig/cookie.rbs",
    "sig/htmlutils.rbs",
    "sig/httpauth.rbs",
    "sig/httpauth/authenticator.rbs",
    "sig/httpauth/basicauth.rbs",
    "sig/httpauth/digestauth.rbs",
    "sig/httpauth/htdigest.rbs",
    "sig/httpauth/htgroup.rbs",
    "sig/httpauth/htpasswd.rbs",
    "sig/httpauth/userdb.rbs",
    "sig/httpproxy.rbs",
    "sig/httprequest.rbs",
    "sig/httpresponse.rbs",
    "sig/https.rbs",
    "sig/httpserver.rbs",
    "sig/httpservlet.rbs",
    "sig/httpservlet/abstract.rbs",
    "sig/httpservlet/cgi_runner.rbs",
    "sig/httpservlet/cgihandler.rbs",
    "sig/httpservlet/erbhandler.rbs",
    "sig/httpservlet/filehandler.rbs",
    "sig/httpservlet/prochandler.rbs",
    "sig/httpstatus.rbs",
    "sig/httputils.rbs",
    "sig/httpversion.rbs",
    "sig/log.rbs",
    "sig/manifest.yaml",
    "sig/server.rbs",
    "sig/ssl.rbs",
    "sig/utils.rbs",
    "sig/version.rbs",
    "webrick.gemspec",
  ]
  s.required_ruby_version = ">= 2.4.0"

  s.authors = ["TAKAHASHI Masayoshi", "GOTOU YUUZOU", "Eric Wong"]
  s.email = [nil, nil, 'normal@ruby-lang.org']
  s.homepage = "https://github.com/ruby/webrick"
  s.licenses = ["Ruby", "BSD-2-Clause"]

  if s.respond_to?(:metadata=)
    s.metadata = {
      "bug_tracker_uri" => "https://github.com/ruby/webrick/issues",
    }
  end
end
