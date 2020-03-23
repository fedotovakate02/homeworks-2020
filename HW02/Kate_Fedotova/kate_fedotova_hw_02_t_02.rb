log_file = File.open('task_2.txt'){|file| file.read}

unless File.exist?('task_2.txt')
    abort 'File is not exist!'
end
 
if File.open('task_2.txt')
puts 'File open:' + 'task_1.txt'
end

file = File.new('task_2.txt')

logs = file.readlines

  
def new_format(lines)
    array = []
    lines.each do |line|
    if line.match(/^\d{1,3}\.\d{1,3}\.\d*\.\d* \- \- \[\d.\/+\w*\/\d*\:\d.\:\d.\:\d. \+\d*\] \"\w* \/\w*\/\d\/\w* \w*\/\d\.\d\"/)
    ip = line.match(/\d{1,3}\.\d{1,3}\.\d*\.\d*/)
    date = line.match(/\d.\/+\w*\/\d*\:\d.\:\d.\:\d. \+\d*/)
    messege = line.match(/ \/\w*\/\d\/\w*/)[0].upcase
    array.push "#{date} FROM: #{ip} TO:#{messege}"
    end
  end
  array
end

puts new_format(logs)




    
   
