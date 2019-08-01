class Tag < ApplicationRecord
  belongs_to :user
  has_many :join_table_potin
  has_many :potins, through: :join_table_potin

end
