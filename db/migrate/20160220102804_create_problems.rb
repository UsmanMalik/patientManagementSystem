class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.string :current_problem
      t.string :history
      t.string :diagnosis

      t.timestamps null: false
    end
  end
end
