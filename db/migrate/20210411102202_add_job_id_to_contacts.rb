class AddJobIdToContacts < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :job_id, :integer
  end
end
