# == Schema Information
#
# Table name: jobs
#
#  id             :integer          not null, primary key
#  request_time   :datetime
#  request_date   :datetime
#  status         :text
#  request_wait   :integer
#  provider_total :integer
#  provider_list  :text
#  language       :string
#  duration       :integer
#  patient        :string
#  requester_id   :integer
#  interpreter_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class JobTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
