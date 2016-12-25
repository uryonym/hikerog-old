class RemoveYamalogPic2FromYamalogs < ActiveRecord::Migration
  def change
    rename_column :yamalogs, :yamalog_pic1, :yamalog_pic
    remove_column :yamalogs, :yamalog_pic2, :text
    remove_column :yamalogs, :yamalog_pic3, :text
  end
end
