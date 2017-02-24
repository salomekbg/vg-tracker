# == Schema Information
#
# Table name: platforms
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Platform < ApplicationRecord
  has_many :libraries
  has_many :users, through: :libraries
  has_many :games, through: :libraries
  has_many :sources, through: :libraries
  has_many :genres, through: :games
end
