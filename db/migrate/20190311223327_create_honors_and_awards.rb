class CreateHonorsAndAwards < ActiveRecord::Migration[5.2]
  def change
    create_table :honors_and_awards do |t|
      t.string :honor_or_award
      t.string :grantor
      t.date :date_received
      t.references :personal_detail, foreign_key: true

      t.timestamps
    end
  end
end
