module Spina
  class IconUploader < Spina::DefaultStoreUploader
    include CarrierWave::MiniMagick

    version :image do
      process resize_to_fit: [400, 400], if: :too_large?
    end

    version :thumb do
      process resize_to_fill: [200, 200]
    end

    version :small_thumb do
      process resize_to_fill: [100, 100]
    end

    def too_large?(new_file)
      new_file.size > 120 * 1000
    end

    def extension_white_list
      %w(jpg jpeg gif png)
    end

  end
end
