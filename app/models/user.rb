# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string
#  email_address   :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#  role            :string           default("user")
#

class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true, uniqueness: true
  validates :email_address, presence: true, uniqueness: true

  has_many :libraries
  has_many :games, through: :libraries
  has_many :platforms, through: :libraries
  has_many :sources, through: :libraries
  has_many :genres, through: :games
  has_many :modes, through: :games
  has_many :themes, through: :games

  def admin?
    self.role == "admin"
  end
end
