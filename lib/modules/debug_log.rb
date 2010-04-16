module DebugLog
  def debug_log(info = nil)
    DebugLogger.log("begin log at #{Time.now.to_s(:db)}".center(80, "="))
    DebugLogger.log("in #{self.class}")
    if self.respond_to?("params") and self.respond_to?("request")
      DebugLogger.log(self.params.merge({ :method => self.request.method }).inspect)
    end
    DebugLogger.log(info) if info
    DebugLogger.log("end log at #{Time.now.to_s(:db)}".center(80, "="))
    DebugLogger.log("\n\n")
  end
end
