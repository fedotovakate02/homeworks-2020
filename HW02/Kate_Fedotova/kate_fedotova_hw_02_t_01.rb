puts 'File open: task_1.txt' if File.open('task_1.txt')

abort 'File is not exist!' unless File.exist?('task_1.txt')

lines = File.readlines('task_1.txt')

lines.each do |line|
  puts line if line.include?('error')
end
