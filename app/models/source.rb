# == Schema Information
#
# Table name: sources
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Source < ApplicationRecord
  has_many :acquisitions
  has_many :games, through: :acquisitions
  has_many :users, through: :games
  has_many :genres, through: :games
  has_many :platforms, through: :games
end
