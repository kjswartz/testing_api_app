# == Schema Information
#
# Table name: sessions
#
#  id              :integer          not null, primary key
#  start_time      :datetime
#  duration        :integer
#  state           :text
#  calendar_job_id :integer
#  provider_id     :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class SessionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
