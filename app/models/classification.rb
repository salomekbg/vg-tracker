# == Schema Information
#
# Table name: classifications
#
#  id         :integer          not null, primary key
#  game_id    :integer
#  genre_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Classification < ApplicationRecord
  belongs_to :game
  belongs_to :genre
end
