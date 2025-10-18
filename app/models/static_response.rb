class StaticResponse < ApplicationRecord
  belongs_to :static_query
  has_many :static_response_references
end
