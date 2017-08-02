require_relative '../config/environment'
require_relative 'runner'
ActiveRecord::Base.logger = nil

current_session = CLIRunner.new

current_session.welcome

current_session.validate_user

runner(current_session)
