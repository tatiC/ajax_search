class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.references :user
      t.string :name
      t.string :status

      t.timestamps
    end
    add_index :searches, :user_id
  end
end
