class AddYamalogRefToYamalogPic < ActiveRecord::Migration
  def change
    add_reference :yamalog_pics, :yamalog, index: true, foreign_key: true
  end
end
