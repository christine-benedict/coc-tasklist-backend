class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :poc
      t.string :dminuscat
      t.date :duedate
      t.string :taskstatus
      t.string :notes

      t.timestamps
    end
  end
end
