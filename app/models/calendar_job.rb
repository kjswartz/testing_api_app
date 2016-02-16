# == Schema Information
#
# Table name: calendar_jobs
#
#  id          :integer          not null, primary key
#  name        :string
#  attrib_list :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class CalendarJob < ActiveRecord::Base
  has_many :providers, dependent: :destroy
  accepts_nested_attributes_for :providers
  has_many :sessions, dependent: :destroy
  accepts_nested_attributes_for :sessions
  serialize :attrib_list




end
