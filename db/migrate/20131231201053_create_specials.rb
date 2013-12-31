class CreateSpecials < ActiveRecord::Migration
  def change
    create_table :specials do |t|
      t.string :name

      t.timestamps
    end
  end
end
