class Interview < ApplicationRecord
  scope :upcoming, ->(time) { where("interview_date > ?", time).order("interview_date asc") if time.present? }

   scope :upcoming_two, ->(time) { where("interview_date > ?", time).order("interview_date asc").limit(2) if time.present? }

  belongs_to :position
  has_many :interview_questions, -> {order("display_order Asc")}
  has_many :interview_participants
  has_many :questions, through: :interview_questions
  has_many :interviewers, through: :interview_participants
  has_many :candidates, through: :interview_participants
end
