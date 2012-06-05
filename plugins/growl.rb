begin
  require 'growl'
  if Growl.installed?
    timer = Ti::Timer
    timer.every 30 do
      Growl.notify_info timer.task, title: "Working #{timer.minutes} minutes for #{timer.client}"
    end
  end
rescue LoadError
end

