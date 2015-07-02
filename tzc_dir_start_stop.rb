#!/bin/ruby

class TzcDirStartStop
  
  def initialize()
    @TZC_DIR_START = 'monit -g tzc_dir start'
    @TZC_DIR_STOP  = 'monit -g tzc_dir stop' 

  end
  
  def tzc_dir_start()
    ret = system @TZC_DIR_START
    p ret
  end
  
  def tzc_dir_stop()
    ret = system @TZC_DIR_STOP
    p ret
  end
  
end

tzcDirStartStop = TzcDirStartStop.new

tzcDirStartStop.tzc_dir_start()

sleep(10)

tzcDirStartStop.tzc_dir_stop()

  


