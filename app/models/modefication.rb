# == Schema Information
#
# Table name: modefications
#
#  id         :integer          not null, primary key
#  game_id    :integer
#  mode_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Modefication < ApplicationRecord
  validates :game_id, presence: true
  validates :mode_id, presence: true

  belongs_to :game
  belongs_to :mode
end
