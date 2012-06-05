if ENV['TIMELOG']
  timer = Ti::Timer
  timer.on :start do
    system("echo \"i `date '+%Y-%m-%d %H:%M:%S'` #{timer.client}  #{timer.task}\" >> $TIMELOG")
  end

  timer.on :finish do
    system("echo o `date '+%Y-%m-%d %H:%M:%S'` >> $TIMELOG")
  end
end
