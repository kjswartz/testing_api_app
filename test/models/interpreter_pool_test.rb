# == Schema Information
#
# Table name: interpreter_pools
#
#  id             :integer          not null, primary key
#  interpreter_id :integer
#  pool_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class InterpreterPoolTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
