class CreateTasklists < ActiveRecord::Migration
  def change
    create_table :tasklists do |t|
      t.string :title
      t.belongs_to :course
      t.belongs_to :user

      t.timestamps
    end
    add_index :tasklists, :course_id
    add_index :tasklists, :user_id
  end
end
