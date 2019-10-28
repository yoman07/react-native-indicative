
Pod::Spec.new do |s|
  s.name         = "RNIndicative"
  s.version      = "1.0.0"
  s.summary      = "RNIndicative"
  s.description  = <<-DESC
                  RNIndicative
                   DESC
  s.homepage     = "https://github.com/yoman07/react-native-indicative"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/author/RNIndicative.git", :tag => "master" }
  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

  s.dependency "React"
  #s.dependency "others"

end

  
