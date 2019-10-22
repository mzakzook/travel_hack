class CreateHacks < ActiveRecord::Migration[6.0]
  def change
    create_table :hacks do |t|
      t.string :category
      t.string :title
      t.text :content
      t.references :user, null: false, foreign_key: true
      t.references :destination, null: false, foreign_key: true

      t.timestamps
    end
  end
end
