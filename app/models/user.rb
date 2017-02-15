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
  has_many :games
  has_many :genres, through: :games
  has_many :platforms, through: :games
  has_many :sources, through: :games
end
