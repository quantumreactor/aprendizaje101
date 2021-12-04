class CreateMeetings < ActiveRecord::Migration[6.1]
  def change
    create_table :meetings do |t|
      t.string :summary
      t.string :content
      t.belongs_to :user
      t.belongs_to :lead

      t.timestamps
    end
  end
end
