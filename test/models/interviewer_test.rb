require 'test_helper'

class InterviewerTest < ActiveSupport::TestCase
  test "upcoming interviews with candidate data" do
  	interviewer = interviewers(:hr)
		interviews = interviewer.upcoming_two_interviews

    assert_not_nil interviews.first.candidate.name
  end
end
