=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for CyberSource::PayerAuthenticationApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PayerAuthenticationApi' do
  before do
    # run before each test
    @instance = CyberSource::PayerAuthenticationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PayerAuthenticationApi' do
    it 'should create an instance of PayerAuthenticationApi' do
      expect(@instance).to be_instance_of(CyberSource::PayerAuthenticationApi)
    end
  end

  # unit tests for check_payer_auth_enrollment
  # Check payer auth enrollment
  # This call verifies that the card is enrolled in a card authentication program.
  # @param check_payer_auth_enrollment_request 
  # @param [Hash] opts the optional parameters
  # @return [RiskV1AuthenticationsPost201Response]
  describe 'check_payer_auth_enrollment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for validate_authentication_results
  # Validate authentication results
  # This call retrieves and validates the authentication results from issuer and allows the merchant to proceed with processing the payment. 
  # @param request 
  # @param [Hash] opts the optional parameters
  # @return [RiskV1AuthenticationResultsPost201Response]
  describe 'validate_authentication_results test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
