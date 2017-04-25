class Movement < ApplicationRecord
  belongs_to :client, counter_cache: true

  validates :name, presence: true
end
