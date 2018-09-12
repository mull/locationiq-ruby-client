=begin
#LocationIQ

#LocationIQ provides flexible enterprise-grade location based solutions. We work with developers, startups and enterprises worldwide serving billions of requests everyday. This page provides an overview of the technical aspects of our API and will help you get started.

OpenAPI spec version: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.2.3

=end

# Common files
require 'locationiq-ruby-client/api_client'
require 'locationiq-ruby-client/api_error'
require 'locationiq-ruby-client/version'
require 'locationiq-ruby-client/configuration'

# Models
require 'locationiq-ruby-client/models/address'
require 'locationiq-ruby-client/models/balance'
require 'locationiq-ruby-client/models/daybalance'
require 'locationiq-ruby-client/models/error'
require 'locationiq-ruby-client/models/location'
require 'locationiq-ruby-client/models/namedetails'

# APIs
require 'locationiq-ruby-client/api/balance_api'
require 'locationiq-ruby-client/api/reverse_api'
require 'locationiq-ruby-client/api/search_api'

module LocationIQClient
  class << self
    # Customize default settings for the SDK using block.
    #   LocationIQClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end