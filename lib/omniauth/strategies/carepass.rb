require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Carepass < OmniAuth::Strategies::OAuth2
      class NotRegisteredForCarepassSiteError < StandardError; end

      option :client_options, {
        :site => 'https://www.carepass.com/carepass',
        :authorize_url => 'https://www.carepass.com/carepass/oauth/authorize',
        :token_url => 'https://www.carepass.com/carepass/oauth/token'
      }

      uid { raw_info['id'] }

      info do
        {
          'email' => raw_info['email'],
          'first_name' => raw_info['firstName'],
          'last_name' => raw_info['lastName']
        }
      end

      extra do
        { :raw_info => raw_info }
      end

      def raw_info
        url = "https://api.carepass.com/user-directory-api/users/currentUser/biography"
        params = {:params => { :access_token => access_token.token}}
        @raw_info ||= access_token.client.request(:get, url, params).parsed

        unless @raw_info
          raise NotRegisteredForCarepassSiteError, "User is not registered for Aetna Carepass"
        end

        @raw_info
      end
    end
  end
end

OmniAuth.config.add_camelization 'carepass', 'Carepass'
