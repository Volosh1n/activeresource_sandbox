require './autoload'

class ApplicationCollectionParser < ActiveResource::Collection
  def initialize(parsed = {})
    @elements = parsed['data']
  end
end

class ApplicationResource < ActiveResource::Base
  self.site = 'https://api.coincap.io/v2/'
  self.include_format_in_path = false
  # self.collection_parser = ApplicationCollectionParser
  self.format = ActiveResource::Formats::JsonApiFormat
end

class Asset < ApplicationResource
  has_many :markets

  # def markets
  #   Market.where(base_id: id)
  # end
end

class Market < ApplicationResource
  belongs_to :asset, foreign_key: 'base_id'
end

binding.pry
