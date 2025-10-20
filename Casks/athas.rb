# frozen_string_literal: true

cask 'athas' do
  version '0.1.2'

  # Intel Macs (x64/amd64)
  if Hardware::CPU.intel?
    url "https://github.com/athasdev/athas/releases/download/v#{version}/Athas_#{version}_x64.dmg"
    sha256 'e82d38abaa4925b8171951428008e6f770e157f64bb9a21f3faa1d8a358dfc58'
  # Apple Silicon Macs (M1, M2, M3, M4 - arm64/aarch64)
  else
    url "https://github.com/athasdev/athas/releases/download/v#{version}/Athas_#{version}_aarch64.dmg"
    sha256 'df49108f61f7bc5ca0d2ec0fa3cacb8ac5915983a00c226636f17d2891b995bb'
  end

  name 'Athas'
  desc 'A lightweight code editor'
  homepage 'https://github.com/athasdev/athas'

  app 'Athas.app'

  zap trash: [
    '~/Library/Application Support/athas',
    '~/Library/Caches/athas',
    '~/Library/Preferences/com.athas.app.plist'
  ]
end
