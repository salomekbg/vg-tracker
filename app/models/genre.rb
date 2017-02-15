# == Schema Information
#
# Table name: genres
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Genre < ApplicationRecord
  has_many :classifications
  has_many :games, through: :classifications
  has_many :users, through: :games
  has_many :platforms, through: :games
  has_many :sources, through: :games
end
