require 'fileutils'

FileUtils.mkdir("build")

File.open("build/index.html", "w") do |file|
  file << %{<!doctype html>
<html>
<head><title>Hello</title></head>
<body>
  <h1>Hello</h1>
</body>
</html>}
end
