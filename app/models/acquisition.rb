# == Schema Information
#
# Table name: acquisitions
#
#  id         :integer          not null, primary key
#  game_id    :integer
#  source_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Acquisition < ApplicationRecord
  belongs_to :game
  belongs_to :source
end
