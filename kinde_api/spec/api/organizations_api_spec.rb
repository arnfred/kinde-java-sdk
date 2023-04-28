=begin
#Kinde Management API

#Provides endpoints to manage your Kinde Businesses

The version of the OpenAPI document: 1
Contact: support@kinde.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.4.0

=end

require 'spec_helper'
require 'json'

# Unit tests for KindeApi::OrganizationsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'OrganizationsApi' do
  before do
    # run before each test
    @api_instance = KindeApi::OrganizationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrganizationsApi' do
    it 'should create an instance of OrganizationsApi' do
      expect(@api_instance).to be_instance_of(KindeApi::OrganizationsApi)
    end
  end

  # unit tests for add_organization_users
  # Assign Users to an Organization
  # Add existing users to an organization.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :code The organization&#39;s code.
  # @option opts [AddOrganizationUsersRequest] :add_organization_users_request 
  # @return [AddOrganizationUsers200Response]
  describe 'add_organization_users test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_organization
  # Create Organization
  # Create an organization.
  # @param [Hash] opts the optional parameters
  # @option opts [CreateOrganizationRequest] :create_organization_request Organization details.
  # @return [CreateOrganization201Response]
  describe 'create_organization test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_organization_feature_flag_override
  # Delete organization feature flag override
  # Delete organization feature flag override.
  # @param org_code The identifier for the organization.
  # @param feature_flag_key The identifier for the feature flag.
  # @param [Hash] opts the optional parameters
  # @return [SuccessResponse]
  describe 'delete_organization_feature_flag_override test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_organization_feature_flag_overrides
  # Delete all organization feature flag overrides
  # Delete all organization feature flag overrides.
  # @param org_code The identifier for the organization.
  # @param [Hash] opts the optional parameters
  # @return [SuccessResponse]
  describe 'delete_organization_feature_flag_overrides test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_organization
  # Get Organization
  # Gets an organization given the organization&#39;s code. 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :code The organization&#39;s code.
  # @return [Organization]
  describe 'get_organization test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_organization_users
  # List Organization Users
  # Get users in an organization.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :sort Field and order to sort the result by.
  # @option opts [Integer] :page_size Number of results per page. Defaults to 10 if parameter not sent.
  # @option opts [String] :next_token A string to get the next page of results if there are more results.
  # @option opts [String] :code The organization&#39;s code.
  # @option opts [String] :permissions Filter by user permissions
  # @return [GetOrganizationUsers200Response]
  describe 'get_organization_users test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_organizations
  # List Organizations
  # Get a list of organizations. 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :sort Field and order to sort the result by.
  # @option opts [Integer] :page_size Number of results per page. Defaults to 10 if parameter not sent.
  # @option opts [String] :next_token A string to get the next page of results if there are more results.
  # @return [GetOrganizations200Response]
  describe 'get_organizations test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_organization_users
  # Remove Users from an Organization
  # Remove existing users from an organization.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :code The organization&#39;s code.
  # @option opts [RemoveOrganizationUsersRequest] :remove_organization_users_request 
  # @return [RemoveOrganizationUsers200Response]
  describe 'remove_organization_users test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_organization_feature_flag_override
  # Update organization feature flag override
  # Update organization feature flag override.
  # @param org_code The identifier for the organization
  # @param feature_flag_key The identifier for the feature flag
  # @param value Override value
  # @param [Hash] opts the optional parameters
  # @return [SuccessResponse]
  describe 'update_organization_feature_flag_override test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end