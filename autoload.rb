require 'activeresource'
require 'http_logger'
require 'pry'

Dir[File.join(__dir__, 'active_resource', '**', '*.rb')].each { |file| require file }
Dir[File.join(__dir__, 'config', '**', '*.rb')].each { |file| require file }
