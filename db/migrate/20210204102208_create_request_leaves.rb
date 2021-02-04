class CreateRequestLeaves < ActiveRecord::Migration[6.1]
  def change
    create_table :request_leaves do |t|

      t.timestamps
    end
  end
end
