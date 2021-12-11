class Lead < ApplicationRecord
  validates :name, :email, :phone, :status, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: "Email validos por favor" }, uniqueness: true
  validates :phone, numericality: { only_integer: true, message: "Poner 9 digitos del telefono,  solamente numeros" }
  # t.string "status", default: "prospecto"
  # t.string "email"
  # t.string "name"
  # t.string "phone"
  # t.date "indate"


  belongs_to :user

  has_many :meetings, dependent: :destroy
  accepts_nested_attributes_for :meetings

  has_many :users, through: :meetings
  #enum :status [:prospecto, :interesado, :cliente]
end
