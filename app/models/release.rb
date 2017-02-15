# == Schema Information
#
# Table name: releases
#
#  id          :integer          not null, primary key
#  game_id     :integer
#  platform_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Release < ApplicationRecord
  belongs_to :game
  belongs_to :platform
end
