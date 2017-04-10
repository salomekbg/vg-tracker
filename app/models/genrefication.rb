# == Schema Information
#
# Table name: genrefications
#
#  id         :integer          not null, primary key
#  game_id    :integer
#  genre_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Genrefication < ApplicationRecord
  validates :game_id, presence: true
  validates :genre_id, presence: true

  belongs_to :game
  belongs_to :genre
end
