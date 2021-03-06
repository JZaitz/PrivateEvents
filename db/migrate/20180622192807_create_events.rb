class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :location
      t.date :date
      t.text :description
      t.string :title
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
