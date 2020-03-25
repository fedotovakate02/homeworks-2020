if File.open('task_1.txt')
    puts 'File open:' + 'task_1.txt'
end

unless File.exist?('task_1.txt')
    abort 'File is not exist!'
end

lines = File.readlines('task_1.txt')

lines.each do |line|
    if line.include?('error')
        puts line
    end
end
