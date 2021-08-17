# frozen_string_literal: true

require_relative "sgis/version"

module Sgis
  class Error < StandardError
    puts 'errors'
  end
  
  class UserGem
    def initialize
      @context = Api::V1::ReceiptsController.new
    end

    def last_user
      User.last
    end

    def ios_devices
      @context.ios_devices?
    end

    def ios
      @context.ios
    end

    def esm_current_user
      @context.get_current_user
    end

    def user
      @current_user ||= warden.authenticate(scope: :user)
    end
  end
end
