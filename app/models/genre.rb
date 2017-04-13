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
  validates :name, presence: true, uniqueness: true

  has_many :genrefications
  has_many :games, through: :genrefications
  has_many :users, through: :games
  has_many :platforms, through: :games
  has_many :sources, through: :games
  has_many :modes, through: :games
  has_many :themes, through: :games
end
