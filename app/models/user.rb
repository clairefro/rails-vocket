class User < ApplicationRecord
  has_many :vocabs, dependent: destroy
  has_many :tags, through: :vocabs, dependent: destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
