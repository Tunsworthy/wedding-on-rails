class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :date
      t.string :location
      t.boolean :active
      t.boolean :registry
      t.string :title
      t.text :registry_body
      t.timestamps
    end
  end
end
