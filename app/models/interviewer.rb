class Interviewer < ApplicationRecord
  has_many :answer_ratings
  has_many :interview_participants
  has_many :interviews, through: :interview_participants

  def upcoming_interviews
  	self.interviews.upcoming(Time.zone.now).includes(:candidate)
  end

  def upcoming_two_interviews
  	self.interviews.upcoming_two(Time.zone.now).includes(:candidate)
  end
end
