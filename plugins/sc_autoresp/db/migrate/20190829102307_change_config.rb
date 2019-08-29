class ChangeConfig < ActiveRecord::Migration[5.2]
  def change
    add_column :sc_configs, :from_email, :string
    add_column :sc_configs, :project_id, :integer
  end
end
