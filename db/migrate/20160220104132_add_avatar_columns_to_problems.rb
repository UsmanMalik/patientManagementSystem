class AddAvatarColumnsToProblems < ActiveRecord::Migration
  def up
    add_attachment :problems, :avatar
  end

  def down
    remove_attachment :problems, :avatar
  end
end
