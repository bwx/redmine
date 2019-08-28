class CreateScConfigs < ActiveRecord::Migration[5.2]
  def change
    create_table :sc_configs do |t|
      t.string :subject, null: false
      t.text :body, null: false
      t.boolean :active, default: true
      t.string :s_status, null: false
      t.integer :i_status, null: false
      t.integer :days_ago, null: false
    end
  end
end
