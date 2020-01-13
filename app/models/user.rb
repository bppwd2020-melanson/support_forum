class User < ApplicationRecord
  has_and_belongs_to_many :roles
  has_many :responses
  has_many :questions
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :questions

  def has_role(role)

    roles.each do |r|
      if r == role
        return true
      end
    end
    return false
  end
end
