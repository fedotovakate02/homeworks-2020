require 'date'
require 'time'

log_file = File.open('task_3.txt'){|file| file.read}

unless File.exist?('task_3.txt')
    abort 'File is not exist!'
end
 
if File.open('task_3.txt')
puts 'File open:' + 'task_3.txt'
end

file = File.new('task_3.txt')

logs = file.readlines

def get_events_interval(lines)
    valid_events = lines.select{|line| line.include?('Calling core with action')}
        if valid_events.size <= 1
            return [0]
        else valid_events.each_cons(2) do |first, second|
        first_log = first.match(/^\d*\-\d.\-\d. \d.\:\d.\:\d.\.\d/)[0]
        second_log = second.match(/^\d*\-\d.\-\d. \d.\:\d.\:\d.\.\d/)[0]
        puts Time.parse(second_log) - Time.parse(first_log)
        end
    end
end

puts get_events_interval(logs)
   

    
 
          
        
        

    


