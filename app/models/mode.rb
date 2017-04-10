# == Schema Information
#
# Table name: modes
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Mode < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :modefications
  has_many :games, through: :modefications
  has_many :users, through: :games
  has_many :platforms, through: :games
  has_many :sources, through: :games
  has_many :genres, through: :games
  has_many :themes, through: :games
end
