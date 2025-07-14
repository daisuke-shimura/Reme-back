class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :content,  null: false, default: ""
      t.boolean :made_ai, null: false, default: false
      t.timestamps
    end
  end
end
