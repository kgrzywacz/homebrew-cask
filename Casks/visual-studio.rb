cask 'visual-studio' do
  version '7.0.1.24'
  sha256 '0a8eecf4e8ed430fa39f9b6097e4479d8b1f8640a0434de143ea6c13e0fac5f9'

  # dl.xamarin.com was verified as official when first introduced to the cask
  url "https://dl.xamarin.com/VsMac/VisualStudioForMac-#{version}.dmg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/vsmac/Mac/Universal/InstallationManifest.xml',
          checkpoint: '90e28111c98e8261b07800d9b33a6b09c6af8f51c315d5976a586bd4c922bc00'
  name 'Visual Studio for Mac'
  homepage 'https://www.visualstudio.com/vs/visual-studio-mac/'

  depends_on cask: 'mono-mdk'

  app 'Visual Studio.app'

  zap delete: [
                '~/Library/VisualStudio',
                '~/Library/Caches/VisualStudio',
                '~/Library/Logs/VisualStudio',
                '~/Library/Preferences/Visual*Studio',
                '~/Library/Application Support/CrashReporter/VisualStudio*',
                '/Applications/Xamarin Workbooks.app',
                '/Applications/Xamarin Profiler.app',
              ]
end
