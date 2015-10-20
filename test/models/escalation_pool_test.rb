# == Schema Information
#
# Table name: escalation_pools
#
#  id            :integer          not null, primary key
#  escalation_id :integer
#  pool_id       :integer
#  p_id          :integer
#  response_time :integer
#  name          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class EscalationPoolTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
