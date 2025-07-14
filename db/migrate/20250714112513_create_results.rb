class CreateResults < ActiveRecord::Migration[6.1]
  def change
    create_table :results do |t|
      t.integer :score,   null: false, default: 0
      t.integer :user_id, null: false
      t.timestamps
    end
  end
end
