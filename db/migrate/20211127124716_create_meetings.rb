class CreateMeetings < ActiveRecord::Migration[6.1]
  def change
    create_table :meetings do |t|
      t.string :summary
      t.string :content
      t.references :user, null: false, foreign_key: true
      t.references :lead, null: false, foreign_key: true

      t.timestamps
    end
  end
end
