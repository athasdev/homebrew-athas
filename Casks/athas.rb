# frozen_string_literal: true

cask 'athas' do
  version '0.3.1'

  # Intel Macs (x64/amd64)
  if Hardware::CPU.intel?
    url "https://github.com/athasdev/athas/releases/download/v#{version}/Athas_#{version}_x64.dmg"
    sha256 'efc78e0c9b93a09c43e52a5537e2ac373d0e840a6386330afb48b4cf8561d2e2'
  # Apple Silicon Macs (M1, M2, M3, M4 - arm64/aarch64)
  else
    url "https://github.com/athasdev/athas/releases/download/v#{version}/Athas_#{version}_aarch64.dmg"
    sha256 '71f2bdb4e29e04ba7627cc07bb71c1ea543998b02291c6168954131e95c16250'
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
