require 'fileutils'

settings = YAML::load(File.open(File.join(Rails.root, 'config', 'aws.yaml')))

AWS::S3::Base.establish_connection!(
  :access_key_id      => settings['aws']['access_key'],
  :secret_access_key  => settings['aws']['secret']
)
Image.storage_bucket = settings['aws']['bucket']

# Initialize tmp directory
image_tmp = File.join(Rails.root, 'tmp', 'images')
unless File.directory? image_tmp
  FileUtils.mkdir(image_tmp)
end