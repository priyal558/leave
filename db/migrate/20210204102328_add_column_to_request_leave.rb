class AddColumnToRequestLeave < ActiveRecord::Migration[6.1]
  def change
  	add_column :request_leaves , :leave_type, :string
  	add_column :request_leaves, :description, :string
  	add_column :request_leaves, :status , :integer ,default: 0, null: false
  	add_reference :request_leaves, :user
  end
end
