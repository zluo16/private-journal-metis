class Journal < ApplicationRecord
  belongs_to :user
  has_many :entries
  validates :user_id, presence: true
  validates :title, presence: true
end
