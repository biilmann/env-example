require 'fileutils'

FileUtils.mkdir_p("build")

File.open("build/index.html", "w") do |file|
  file << %{<!doctype html>
<html>
<head><title>Hello #{ENV['NAME']}</title></head>
<body>
  <h1>Hello #{ENV['NAME']}</h1>

  <p>This site is at <a href="#{ENV['URL']}">#{URL}</a></p>
</body>
</html>}
end
