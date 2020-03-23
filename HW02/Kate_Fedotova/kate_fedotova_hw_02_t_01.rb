log_file = File.open('task_1.txt'){|file| file.read}

unless File.exist?('task_1.txt')
    abort 'File is not exist!'
end
 
if File.open('task_1.txt')
puts 'File open:' + 'task_1.txt'
end

file = File.new('task_1.txt')

lines = file.readlines

lines.each do |line|
    if line.match('')
        puts line
    end
end
