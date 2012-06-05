begin
  require 'rainbow'
rescue LoadError
  class String
    def color arg
      self
    end
  end
end

timer = Ti::Timer

timer.every 1 do
  msg = "Working for #{timer.client.color(:green)}"
  msg += " on #{timer.task.color(:green)}" if timer.task != ''
  msg += " for #{timer.minutes.to_s.color(:red)} minutes"
  puts msg
end

timer.on :finish do
  puts "Done with #{timer.client.color(:green)}"
end
