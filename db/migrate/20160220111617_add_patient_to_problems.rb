class AddPatientToProblems < ActiveRecord::Migration
  def change
    add_reference :problems, :patient, index: true, foreign_key: true
  end
end
