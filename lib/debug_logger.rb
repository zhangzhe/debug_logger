class DebugLogger < Logger
  def format_message(severity, timestamp, progname, msg)
    "#{msg}\n" 
  end 

  def self.log(info = "")
    d_log = DebugLogger.new(File.open('log/debug.log', 'a')) 
    d_log.info info
    d_log.close
  end
end
