require 'debug_logger'
require "modules/debug_log"

ActionController::Base.send(:include, DebugLog)
ActiveRecord::Base.send(:include, DebugLog)

