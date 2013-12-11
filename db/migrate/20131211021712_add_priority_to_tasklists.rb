class AddPriorityToTasklists < ActiveRecord::Migration
  def change
    add_column :tasklists, :priority, :integer
  end
end
