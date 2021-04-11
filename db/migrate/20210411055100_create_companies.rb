class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :location
      t.string :contact
      t.references :job, null: false, foreign_key: true

      t.timestamps
    end
  end
end
