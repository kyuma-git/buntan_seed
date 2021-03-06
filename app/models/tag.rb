class Tag < ApplicationRecord
  has_and_belongs_to_many :items

  has_many :items_tags

  validates :name, presence: true, length: { maximum: 19 }

end
