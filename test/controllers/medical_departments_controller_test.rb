require 'test_helper'

class MedicalDepartmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get medical_departments_show_url
    assert_response :success
  end

end
