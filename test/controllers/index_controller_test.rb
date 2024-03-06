# frozen_string_literal: true

require 'test_helper'

class IndexControllerTest < ActionDispatch::IntegrationTest
  # WIP
  test 'should get index' do
    get root_path
    assert_response :success
  end
end
