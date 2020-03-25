require 'time'

if File.open('task_3.txt')
    puts 'File open:' + 'task_3.txt'
end

unless File.exist?('task_3.txt')
    abort 'File is not exist!'
end
 
logs = File.readlines('task_3.txt')

def get_events_interval(lines)
    array = []
    valid_events = lines.select{|line| line.include?('Calling core with action')}
        if valid_events.size <= 1
            return [0]
        else valid_events.each_cons(2) do |first, second|
        first_log = first.match(/^\d*\-\d.\-\d. \d.\:\d.\:\d.\.\d/)[0]
        second_log = second.match(/^\d*\-\d.\-\d. \d.\:\d.\:\d.\.\d/)[0]
        array.push Time.parse(second_log) - Time.parse(first_log)
        end
    end
    array
end

puts get_events_interval(logs)
