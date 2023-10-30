=begin
#Kinde Management API

#Provides endpoints to manage your Kinde Businesses

The version of the OpenAPI document: 1
Contact: support@kinde.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.4.0

=end

require 'cgi'

module KindeApi
  class FeatureFlagsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Feature Flag
    # Create feature flag.
    # @param create_feature_flag_request [CreateFeatureFlagRequest] Flag details.
    # @param [Hash] opts the optional parameters
    # @return [SuccessResponse]
    def create_feature_flag(create_feature_flag_request, opts = {})
      data, _status_code, _headers = create_feature_flag_with_http_info(create_feature_flag_request, opts)
      data
    end

    # Create Feature Flag
    # Create feature flag.
    # @param create_feature_flag_request [CreateFeatureFlagRequest] Flag details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SuccessResponse, Integer, Hash)>] SuccessResponse data, response status code and response headers
    def create_feature_flag_with_http_info(create_feature_flag_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeatureFlagsApi.create_feature_flag ...'
      end
      # verify the required parameter 'create_feature_flag_request' is set
      if @api_client.config.client_side_validation && create_feature_flag_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_feature_flag_request' when calling FeatureFlagsApi.create_feature_flag"
      end
      # resource path
      local_var_path = '/api/v1/feature_flags'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/json; charset=utf-8'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_feature_flag_request)

      # return_type
      return_type = opts[:debug_return_type] || 'SuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['kindeBearerAuth']

      new_options = opts.merge(
        :operation => :"FeatureFlagsApi.create_feature_flag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeatureFlagsApi#create_feature_flag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Feature Flag
    # Delete feature flag
    # @param feature_flag_key [String] The identifier for the feature flag.
    # @param [Hash] opts the optional parameters
    # @return [SuccessResponse]
    def delete_feature_flag(feature_flag_key, opts = {})
      data, _status_code, _headers = delete_feature_flag_with_http_info(feature_flag_key, opts)
      data
    end

    # Delete Feature Flag
    # Delete feature flag
    # @param feature_flag_key [String] The identifier for the feature flag.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SuccessResponse, Integer, Hash)>] SuccessResponse data, response status code and response headers
    def delete_feature_flag_with_http_info(feature_flag_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeatureFlagsApi.delete_feature_flag ...'
      end
      # verify the required parameter 'feature_flag_key' is set
      if @api_client.config.client_side_validation && feature_flag_key.nil?
        fail ArgumentError, "Missing the required parameter 'feature_flag_key' when calling FeatureFlagsApi.delete_feature_flag"
      end
      # resource path
      local_var_path = '/api/v1/feature_flags/{feature_flag_key}'.sub('{' + 'feature_flag_key' + '}', CGI.escape(feature_flag_key.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/json; charset=utf-8'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['kindeBearerAuth']

      new_options = opts.merge(
        :operation => :"FeatureFlagsApi.delete_feature_flag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeatureFlagsApi#delete_feature_flag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Replace Feature Flag
    # Update feature flag.
    # @param feature_flag_key [String] The key identifier for the feature flag.
    # @param name [String] The name of the flag.
    # @param description [String] Description of the flag purpose.
    # @param type [String] The variable type
    # @param allow_override_level [String] Allow the flag to be overridden at a different level.
    # @param default_value [String] Default value for the flag used by environments and organizations.
    # @param [Hash] opts the optional parameters
    # @return [SuccessResponse]
    def update_feature_flag(feature_flag_key, name, description, type, allow_override_level, default_value, opts = {})
      data, _status_code, _headers = update_feature_flag_with_http_info(feature_flag_key, name, description, type, allow_override_level, default_value, opts)
      data
    end

    # Replace Feature Flag
    # Update feature flag.
    # @param feature_flag_key [String] The key identifier for the feature flag.
    # @param name [String] The name of the flag.
    # @param description [String] Description of the flag purpose.
    # @param type [String] The variable type
    # @param allow_override_level [String] Allow the flag to be overridden at a different level.
    # @param default_value [String] Default value for the flag used by environments and organizations.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SuccessResponse, Integer, Hash)>] SuccessResponse data, response status code and response headers
    def update_feature_flag_with_http_info(feature_flag_key, name, description, type, allow_override_level, default_value, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeatureFlagsApi.update_feature_flag ...'
      end
      # verify the required parameter 'feature_flag_key' is set
      if @api_client.config.client_side_validation && feature_flag_key.nil?
        fail ArgumentError, "Missing the required parameter 'feature_flag_key' when calling FeatureFlagsApi.update_feature_flag"
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling FeatureFlagsApi.update_feature_flag"
      end
      # verify the required parameter 'description' is set
      if @api_client.config.client_side_validation && description.nil?
        fail ArgumentError, "Missing the required parameter 'description' when calling FeatureFlagsApi.update_feature_flag"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling FeatureFlagsApi.update_feature_flag"
      end
      # verify enum value
      allowable_values = ["str", "int", "bool"]
      if @api_client.config.client_side_validation && !allowable_values.include?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'allow_override_level' is set
      if @api_client.config.client_side_validation && allow_override_level.nil?
        fail ArgumentError, "Missing the required parameter 'allow_override_level' when calling FeatureFlagsApi.update_feature_flag"
      end
      # verify enum value
      allowable_values = ["env", "org"]
      if @api_client.config.client_side_validation && !allowable_values.include?(allow_override_level)
        fail ArgumentError, "invalid value for \"allow_override_level\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'default_value' is set
      if @api_client.config.client_side_validation && default_value.nil?
        fail ArgumentError, "Missing the required parameter 'default_value' when calling FeatureFlagsApi.update_feature_flag"
      end
      # resource path
      local_var_path = '/api/v1/feature_flags/{feature_flag_key}'.sub('{' + 'feature_flag_key' + '}', CGI.escape(feature_flag_key.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'name'] = name
      query_params[:'description'] = description
      query_params[:'type'] = type
      query_params[:'allow_override_level'] = allow_override_level
      query_params[:'default_value'] = default_value

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/json; charset=utf-8'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['kindeBearerAuth']

      new_options = opts.merge(
        :operation => :"FeatureFlagsApi.update_feature_flag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeatureFlagsApi#update_feature_flag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
