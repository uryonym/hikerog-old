class CreateYamalogPics < ActiveRecord::Migration
  def change
    create_table :yamalog_pics do |t|
      t.text :image

      t.timestamps null: false
    end
  end
end
