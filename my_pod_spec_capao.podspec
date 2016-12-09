Pod::Spec.new do |s|
  s.name         = "my_pod_spec_capao"
  s.version      = "0.0.1"
  s.summary      = "这是一个字符串类别的方法"
  s.homepage     = "https://github.com/lanchangbin/capao-textProject"
  s.license      = "MIT"
  s.author             = "capao"
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/lanchangbin/capao-textProject.git", :tag => "0.0.1" }
  s.source_files  = "sortString/*.{h,m}"
  s.framework  = "Foundation"
  s.requires_arc = true
end
