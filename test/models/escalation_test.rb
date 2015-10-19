# == Schema Information
#
# Table name: escalations
#
#  id            :integer          not null, primary key
#  name          :string
#  response_time :integer
#  default       :boolean
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class EscalationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
