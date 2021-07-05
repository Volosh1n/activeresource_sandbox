HttpLogger.logger = Logger.new(STDOUT)
HttpLogger.colorize = true # Default: true
HttpLogger.ignore = [/newrelic\.com/]
HttpLogger.log_headers = false  # Default: false
HttpLogger.log_request_body  = false  # Default: true
HttpLogger.log_response_body = false  # Default: true
HttpLogger.level = :info # Desired log level as a symbol. Default: :debug
HttpLogger.collapse_body_limit # Change default truncate limit. Default: 5000
