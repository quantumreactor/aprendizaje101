class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable

  has_many :leads, through: :meetings, dependent: :destroy
  #accepts_nested_attributes_for :leads

  has_many :meetings
  #accepts_nested_attributes_for :meetings
end
