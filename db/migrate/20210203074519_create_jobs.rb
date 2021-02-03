class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :work_type
      t.string :company
      t.string :workplace_address
      t.integer :salary
      t.date :start_date

      t.timestamps
    end
  end
end
