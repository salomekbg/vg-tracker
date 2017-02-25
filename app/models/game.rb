# == Schema Information
#
# Table name: games
#
#  id                :integer          not null, primary key
#  title             :string
#  number_of_players :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  year              :integer
#

class Game < ApplicationRecord
  has_many :libraries
  has_many :users, through: :libraries
  has_many :platforms, through: :libraries
  has_many :sources, through: :libraries
  has_many :classifications
  has_many :genres, through: :classifications
end
