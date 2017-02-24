# == Schema Information
#
# Table name: libraries
#
#  id              :integer          not null, primary key
#  user_id         :integer
#  game_id         :integer
#  platform_id     :integer
#  source_id       :integer
#  status          :string
#  personal_rating :integer
#  hours_played    :integer
#  notes           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Library < ApplicationRecord
  belongs_to :user
  belongs_to :game
  belongs_to :platform
  belongs_to :source
end
