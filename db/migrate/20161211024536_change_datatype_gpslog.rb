class ChangeDatatypeGpslog < ActiveRecord::Migration
  def change
    # [形式] change_column(テーブル名, カラム名, データタイプ, オプション)
    change_column :yamalogs, :gpslog, :text
  end
end
