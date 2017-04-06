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

  has_many :classifications
  has_many :games, through: :classifications
  has_many :genres, through: :classifications
  has_many :themes, through: :classifications
  has_many :users, through: :games
  has_many :platforms, through: :games
  has_many :sources, through: :games
end
