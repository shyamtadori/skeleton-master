class CandidateTrackingFromInterviewParticipants < ActiveRecord::Migration[5.0]
  def up
  	remove_column :interviews, :candidate_id
  	add_column :interview_participants,  :candidate_id, :integer
  end

  def down
  	add_column :interviews, :candidate_id, :integer
  	add_column :interview_participants,  :candidate_id
  end
end
