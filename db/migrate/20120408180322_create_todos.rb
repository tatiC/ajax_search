class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :name
      t.string :status
      t.references :user

      t.timestamps
    end
    add_index :todos, :user_id
  end
end
