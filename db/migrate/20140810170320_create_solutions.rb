class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.references :project, index: true
      t.text :repo
      t.text :result

      t.timestamps
    end
  end
end
