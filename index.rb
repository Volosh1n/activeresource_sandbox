require 'activeresource'
require 'pry'

class ApplicationCollectionParser < ActiveResource::Collection
  def initialize(parsed = {})
    @elements = parsed['data']
  end
end

class ApplicationResource < ActiveResource::Base
  self.site = 'https://api.coincap.io/v2/'
  self.include_format_in_path = false
  self.collection_parser = ApplicationCollectionParser
end

class Asset < ApplicationResource
  has_many :markets
end

class Market < ApplicationResource
  belongs_to :asset
end

class Rate < ApplicationResource
end

class Exchange < ApplicationResource
end
