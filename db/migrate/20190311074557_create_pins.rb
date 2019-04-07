class CreatePins < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      t.string :text1
      t.text :text2

      t.timestamps
    end
  end
end
