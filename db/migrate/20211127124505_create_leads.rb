class CreateLeads < ActiveRecord::Migration[6.1]
  def change
    create_table :leads do |t|
      t.string :status, default: "prospecto"
      t.string :email
      t.string :name
      t.string :phone
      t.date :indate
      t.belongs_to :user

      t.timestamps
    end
  end
end
