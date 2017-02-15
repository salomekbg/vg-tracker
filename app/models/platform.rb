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
  has_many :releases
  has_many :games, through: :releases
  has_many :users, through: :games
  has_many :genres, through: :games
  has_many :sources, through: :games
end
