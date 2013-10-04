CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => 'AKIAJ6YPJBHMWMKURMJA',
    :aws_secret_access_key  => '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',
    :region                 => 'us-east-1'
  }
  config.fog_directory  = 'PhotoPal'
  config.fog_public     = true
  config.fog_attributes = {'Cache-Control' => 'max-age=315576000'}
end

