class Restaurant < ApplicationRecord
  #associations has_many has_one
  #validations validate name: presense: true

  has_many :reviews, dependent: :destroy

  validates :name, :address, presence: true
  # validates :phone_number, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }, presence: true



end
