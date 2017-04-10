# == Schema Information
#
# Table name: themes
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Theme < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :themefications
  has_many :games, through: :themefications
  has_many :users, through: :games
  has_many :platforms, through: :games
  has_many :sources, through: :games
  has_many :genres, through: :games
  has_many :modes, through: :games
end
