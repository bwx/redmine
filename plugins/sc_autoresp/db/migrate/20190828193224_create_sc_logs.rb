class CreateScLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :sc_logs do |t|
      t.integer :ticket_id
      t.string :rec_email
      t.string :result
      t.integer :i_result
    end
  end
end
