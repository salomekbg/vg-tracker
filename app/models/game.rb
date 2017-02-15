# == Schema Information
#
# Table name: games
#
#  id                :integer          not null, primary key
#  title             :string
#  status            :string
#  rating            :integer
#  hours_played      :integer
#  number_of_players :string
#  notes             :text
#  user_id           :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Game < ApplicationRecord
  belongs_to :user
  has_many :classifications
  has_many :genres, through: :classifications
  has_many :releases
  has_many :platforms, through: :releases
  has_many :acquisitions
  has_many :sources, through: :acquisitions
end
