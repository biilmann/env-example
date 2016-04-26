require 'fileutils'

FileUtils.mkdir_p("build")

File.open("build/index.html", "w") do |file|
  file << %{<!doctype html>
<html>
<head><title>Hello #{ENV['NAME']}</title></head>
<body>
  <h1>#{if ENV['NAME'] == 'Aaron' then 'Hello there Aaron!' else 'This is a tutorial for Aaron...' end}</h1>

  <p>This site is at <a href="#{ENV['URL']}">#{ENV['URL']}</a></p>
</body>
</html>}
end
