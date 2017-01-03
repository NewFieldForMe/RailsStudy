class User < ApplicationRecord
  has_secure_password
  has_many :sheetrows, dependent: :destroy
end
