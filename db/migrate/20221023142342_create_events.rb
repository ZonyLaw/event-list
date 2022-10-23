class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.text :details
      t.date :date, defualt: Date.today

      t.timestamps
    end
  end
end
