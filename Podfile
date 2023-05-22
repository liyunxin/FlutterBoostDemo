use_frameworks!
platform:ios, '13.0'

source 'https://github.com/CocoaPods/Specs.git' #官方库

flutter_application_path = './flutter_module'
load File.join(flutter_application_path, '.ios', 'Flutter', 'podhelper.rb')

target 'ZhiyinIOS' do
   pod 'MJRefresh'
   install_all_flutter_pods(flutter_application_path)
end

post_install do |installer|
  flutter_post_install(installer) if defined?(flutter_post_install)
end
