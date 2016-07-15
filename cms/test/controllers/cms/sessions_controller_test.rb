require 'test_helper'

module Cms
  class SessionsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get new" do
      get sessions_new_url
      assert_response :success
    end

  end
end
