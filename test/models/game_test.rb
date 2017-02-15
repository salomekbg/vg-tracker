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

require 'test_helper'

class GameTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
