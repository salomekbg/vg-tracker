# == Schema Information
#
# Table name: games
#
#  id         :integer          not null, primary key
#  year       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string
#  summary    :string
#  cover      :string
#

class Game < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :year, presence: true

  has_many :libraries
  has_many :users, through: :libraries
  has_many :platforms, through: :libraries
  has_many :sources, through: :libraries
  has_many :genrefications
  has_many :genres, through: :genrefications
  has_many :modefications
  has_many :modes, through: :modefications
  has_many :themefications
  has_many :themes, through: :themefications

  def self.search(term)
    where("LOWER(name) LIKE ?", "%#{term.downcase}%")
  end
end
