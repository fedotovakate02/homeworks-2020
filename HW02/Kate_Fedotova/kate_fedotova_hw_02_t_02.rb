if File.open('task_2.txt')
  puts 'File open:' + 'task_2.txt'
end

unless File.exist?('task_2.txt')
  abort 'File is not exist!'
end

logs = File.readlines('task_2.txt')
  
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
