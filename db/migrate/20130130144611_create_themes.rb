class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.string :background_image
      t.string :background_color
      t.string :background_position
      t.timestamps
    end
  end
end
