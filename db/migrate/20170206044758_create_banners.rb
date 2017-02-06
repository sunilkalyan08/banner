class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.string :size
      t.float :amount

      t.timestamps null: false
    end
  end
end
