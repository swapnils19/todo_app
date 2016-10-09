class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_and_belongs_to_many :projects
  has_many :todos

  DEVELOPER = 'Developer'
  ADMIN     = 'Admin'
  ROLES     = [DEVELOPER, ADMIN]

  def self.developers
    User.where(role: DEVELOPER)
  end

  def self.admin?(current_user)
    current_user.role == ADMIN
  end
end
