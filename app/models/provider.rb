# == Schema Information
#
# Table name: providers
#
#  id              :integer          not null, primary key
#  name            :string
#  calendar_job_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Provider < ActiveRecord::Base
  belongs_to :calendar_job
  has_many :sessions, dependent: :destroy
  accepts_nested_attributes_for :sessions


end
