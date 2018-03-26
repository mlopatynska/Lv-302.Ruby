class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #validates :name, length: { minimum: 3 }
  #validates :surname, length: { minimum: 3 }
  #validates :email, format: { minimum: 2 }

end
