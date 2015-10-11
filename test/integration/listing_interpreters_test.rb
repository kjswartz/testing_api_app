require 'test_helper'
!
class ListingInterpretersTest < ActionDispatch::IntegrationTest !
  test 'returns list of all interpreters' do
￼￼￼    get '/api/v1/interpreters'
    assert_equal 200, response.status
    refute_empty response.body
  end
end
