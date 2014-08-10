class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :prompt
      t.text :solution_repo

      t.timestamps
    end
  end
end
