CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => "AWS",
    :aws_access_key_id      => "AKIAI52PZEY7FCLTU7WA",
    :aws_secret_access_key  => "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",
    :region                 => "eu-west-1"
  }
  config.fog_directory = "weddingapplocal"
end
