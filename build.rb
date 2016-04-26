require 'fileutils'

FileUtils.mkdir("build")

File.open("build/index.html", "w") do |file|
  file << %{<!doctype html>
<html>
<head><title>Hello #{ENV['NAME']}</title></head>
<body>
  <h1>Hello #{ENV['NAME']}</h1>
</body>
</html>}
end
