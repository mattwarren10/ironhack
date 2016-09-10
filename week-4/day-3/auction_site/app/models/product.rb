class Product < ApplicationRecord
  belongs_to :user
  has_one :bid

  attr_accessor :email, :bid
end
