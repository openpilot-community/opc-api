# frozen_string_literal: true
require 'net/http'
require 'uri'

class JsonWebToken
  def self.verify(token)
    JWT.decode(token, nil,
        true, # Verify the signature of this token
        algorithm: 'RS256',                          # RS256 or HS256
        iss: 'https://vehicledb.auth0.com/',    # something like 000.eu.auth0.com
        verify_iss: true,
        aud: Rails.application.credentials[:auth0][:api_audience],
        verify_aud: true) do |header|
      jwks_hash[header['kid']]
    end
  end

  def self.jwks_hash
    jwks_raw = Net::HTTP.get URI("https://vehicledb.auth0.com/.well-known/jwks.json")
    jwks_keys = Array(JSON.parse(jwks_raw)['keys'])
    Hash[
      jwks_keys
      .map do |k|
        [
          k['kid'],
          OpenSSL::X509::Certificate.new(
            Base64.decode64(k['x5c'].first)
          ).public_key
        ]
      end
    ]
  end
end