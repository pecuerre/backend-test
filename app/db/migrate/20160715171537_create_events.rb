class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :dates
      t.string :place
      t.bool :featured
      t.string :image

      t.timestamps null: false
    end
  end
end
