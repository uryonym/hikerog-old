class AddDestroyToYamalogPics < ActiveRecord::Migration
  def change
    add_column :yamalog_pics, :_destroy, :boolean, default: false
  end
end
