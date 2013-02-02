class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.references :user
      t.string :domain, :null => false
      t.string :name, :null => false
      t.text :introduce
      t.string :address
      t.string :site_url
      t.timestamps
    end
  end
end
