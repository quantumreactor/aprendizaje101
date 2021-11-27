class Lead < ApplicationRecord
  belongs_to :user

  has_many :meetings, dependent: :destroy
  accepts_nested_attributes_for :meetings


end
