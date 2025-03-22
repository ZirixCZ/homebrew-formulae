class CmusRpcC < Formula
  desc "Discord Rich Presence for cmus player written in C"
  homepage "https://github.com/ZirixCZ/cmus-rpc-c"
  url "https://github.com/ZirixCZ/cmus-rpc-c/archive/refs/tags/0.0.1.zip"
  sha256 "1ebb5ec079a571bddd7cb1b94d0b999cfd0e7f902eb3e15ccf4a6bf69faf0f71"
  head "https://github.com/ZirixCZ/cmus-rpc-c.git"

  def install
    system "mkdir -p bin"
    system "gcc main.c -o bin/cmus_rpc_c -I. -L./lib/aarch64 -Wl,-rpath,@loader_path/../lib/aarch64 ./lib/aarch64/discord_game_sdk.dylib"
    bin.install "#{buildpath}/bin/cmus_rpc_c"
    lib.install "#{buildpath}/lib"
  end
end
