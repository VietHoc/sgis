# frozen_string_literal: true

require_relative "sgis/version"

module Sgis
  class Error < StandardError
    puts 'errors'
  end
  
  class SgisController
    def initialize
      @context = Api::V1::ReceiptsController.new
    end

    def sgis_last_user
      User.last
    end

    def sgis_ios_devices
      @context.ios_devices?
    end

    def sgis_ios
      @context.ios
    end

    def index
      render json: {status: 200}
    end

    def sgis_current_user
      @context.get_current_user
    end
  end
end
