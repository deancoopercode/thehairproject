class CreateStyles < ActiveRecord::Migration[5.0]
  def change
    create_table :styles do |t|
      t.string :type
      t.string :studioname
      t.string :studiowebsiteurl
      t.string :hairdressername
      t.string :hairpicfront
      t.string :hairpicback
      t.string :hairpicside
      t.decimal :price, precision: 10, scale: 2
      t.integer :rating

      t.timestamps
    end
  end
end
