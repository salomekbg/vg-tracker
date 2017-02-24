# == Schema Information
#
# Table name: users
#
#  id            :integer          not null, primary key
#  username      :string
#  email_address :string
#  password      :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class User < ApplicationRecord
  has_many :libraries
  has_many :games, through: :libraries
  has_many :platforms, through: :libraries
  has_many :sources, through: :libraries
  has_many :genres, through: :games
end
