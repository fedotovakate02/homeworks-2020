require 'time'

puts 'File open: task_2.txt' if File.open('task_2.txt')

abort 'File is not exist!' unless File.exist?('task_2.txt')

logs = File.readlines('task_3.txt')

def get_events_interval(lines)
  array = []
  valid_events = lines.select { |line| line.include?('Calling core with') }
  return [0] if valid_events.size <= 1

  valid_events.each_cons(2) do |first, second|
    first_log = first.match(/^\d*\-\d.\-\d. \d.\:\d.\:\d.\.\d/)[0]
    second_log = second.match(/^\d*\-\d.\-\d. \d.\:\d.\:\d.\.\d/)[0]
    array.push Time.parse(second_log) - Time.parse(first_log)
  end
  array
end

puts get_events_interval(logs)
