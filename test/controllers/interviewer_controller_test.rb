require 'test_helper'

class InterviewerControllerTest < ActionDispatch::IntegrationTest
 test "should get interviews" do
 		interviewer = interviewers(:hr)
    get "/interviewers/#{interviewer.id}"
    assert_response :success
  end

  test "should get interviews with candidate data" do
 		interviewer = interviewers(:hr)
    get "/interviewers/#{interviewer.id}"
    json_response = JSON.parse(@response.body)
    assert_not_equal 0,json_response[0]['candidates'].length
  end

  test "should get interviews with questions data" do
 		interviewer = interviewers(:hr)
    get "/interviewers/#{interviewer.id}"
    json_response = JSON.parse(@response.body)
    assert_not_equal 0,json_response[0]['questions'].length
  end
end
