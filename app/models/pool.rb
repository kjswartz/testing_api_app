# == Schema Information
#
# Table name: pools
#
#  id         :integer          not null, primary key
#  name       :string
#  staff      :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Pool < ActiveRecord::Base
  has_many :interpreter_pools, dependent: :destroy
  has_many :interpreters, through: :interpreter_pools

  before_save :pool_languages

  def pool_languages
    @languages = []
    self.interpreters.each do |i|
      @languages << i.language[:name]
    end
    @language = @languages.flatten.uniq
    self.update_attributes(languages: {name: @language})
  end


end
