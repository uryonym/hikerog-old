class AddYamalogPic1ToYamalogs < ActiveRecord::Migration
  def change
    add_column :yamalogs, :yamalog_pic1, :text
    add_column :yamalogs, :yamalog_pic2, :text
    add_column :yamalogs, :yamalog_pic3, :text
  end
end
