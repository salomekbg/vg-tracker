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

require 'test_helper'

class ReleaseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
