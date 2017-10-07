class PhotoUploader < CarrierWave::Uploader::Base
  # Adiciona o MiniMagick para permitir o redimensionamento das imagens


  storage :file

  # Local onde será guardado as imagens
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  ## Tamanhos que o CarrierWave vai salvar as imagens

  # Thumb

  # Tipos de extensão aceitas
  def extension_whitelist
     %w(jpg jpeg gif png)
  end
end
