class Vocab < ApplicationRecord
  belongs_to :user
  has_many :tags, dependent: :destroy
end
