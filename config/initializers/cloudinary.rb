
Cloudinary.config_from_url(ENV['CLOUDINARY_URL'])
Cloudinary.config do |config|
  config.secure = true
  config.cdn_subdomain = true
end
