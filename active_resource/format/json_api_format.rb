# frozen_string_literal: true

# ALmost copy of:
# https://github.com/rails/activeresource/blob/main/lib/active_resource/formats/json_format.rb

require 'active_support/json'

module ActiveResource
  module Formats
    module JsonApiFormat
      extend self

      def extension
        'json'
      end

      def mime_type
        'application/json'
      end

      def encode(hash, options = nil)
        ActiveSupport::JSON.encode(hash, options)
      end

      def decode(json)
        return if json.nil?

        data = ActiveSupport::JSON.decode(json)['data']
        return data.transform_keys(&:underscore) if data.is_a?(Hash)

        data.map { _1.transform_keys(&:underscore) }
      end
    end
  end
end
