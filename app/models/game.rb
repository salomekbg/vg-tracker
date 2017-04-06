# == Schema Information
#
# Table name: games
#
#  id         :integer          not null, primary key
#  title      :string
#  year       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Game < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :year, presence: true

  has_many :libraries
  has_many :users, through: :libraries
  has_many :platforms, through: :libraries
  has_many :sources, through: :libraries
  has_many :classifications
  has_many :genres, through: :classifications

  def self.search(term)
    where("LOWER(title) LIKE ?", "%#{term.downcase}%")
  end
end
