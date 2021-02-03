class CreateCandidates < ActiveRecord::Migration[6.0]
  def change
    create_table :candidates do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :mobile_number
      t.string :current_position
      t.string :current_employer
      t.string :location
      t.integer :rating
      t.integer :candidate_id

      t.timestamps
    end
  end
end
