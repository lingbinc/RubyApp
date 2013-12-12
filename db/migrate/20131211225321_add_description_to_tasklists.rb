class AddDescriptionToTasklists < ActiveRecord::Migration
  def change
    add_column :tasklists, :description, :string
  end
end
