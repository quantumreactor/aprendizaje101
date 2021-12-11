class Meeting < ApplicationRecord
  validates :content, :summary, presence: true

  belongs_to :lead
  belongs_to :user


end

