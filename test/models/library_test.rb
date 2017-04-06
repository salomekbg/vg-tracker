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
#  hours_played    :string
#  notes           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class LibraryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
