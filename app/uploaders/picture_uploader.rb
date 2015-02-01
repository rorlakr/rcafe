# encoding: utf-8

class PictureUploader < CarrierWave::Uploader::Base

  # 업로드 상단에 아래의 after 매크로를 추가한다.
  after :remove, :delete_empty_upstream_dirs

  def delete_empty_upstream_dirs
    path = ::File.expand_path(store_dir, root)
    Dir.delete(path) # fails if path not empty dir

    path = ::File.expand_path(base_store_dir, root)
    Dir.delete(path) # fails if path not empty dir
  rescue SystemCallError
    true # nothing, the dir is not empty
  end

  include CarrierWave::MiniMagick

  process :resize_to_fit => [800, 800]

  version :thumb do
    process :resize_to_fill => [200,200]
  end

  def extension_white_list
    %w(jpg jpeg gif png pdf)
  end

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

end