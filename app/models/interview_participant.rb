class InterviewParticipant < ApplicationRecord
  belongs_to :interview
  belongs_to :interviewer
  belongs_to :candidate
end
