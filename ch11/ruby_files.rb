require 'yaml'

files_rb = Dir['../*/*.rb']
puts files_rb

filename = 'ruby_files.txt'
File.open(filename, 'w') do |f|
  f.write(files_rb.to_yaml)
  f.close
end
