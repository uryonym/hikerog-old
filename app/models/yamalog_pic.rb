class YamalogPic < ActiveRecord::Base
  belongs_to :yamalog

  mount_uploader :image, YamalogPicUploader

end
