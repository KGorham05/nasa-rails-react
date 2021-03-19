class CreatePictures < ActiveRecord::Migration[6.0]
  def change
    create_table :pictures do |t|
      t.string :copyright
      t.string :date
      t.text   :explanation
      t.string :hdurl
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end
