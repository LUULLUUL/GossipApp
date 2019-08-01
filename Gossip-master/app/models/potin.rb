class Potin < ApplicationRecord
  belongs_to :user
  has_many :join_table_potin
  has_many :tags, through: :join_table_potin
  has_many :comment
end
