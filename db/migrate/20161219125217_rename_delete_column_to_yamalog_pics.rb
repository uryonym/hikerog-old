class RenameDeleteColumnToYamalogPics < ActiveRecord::Migration
  def change
    rename_column :yamalog_pics, :_destroy, :deletepic
  end
end
