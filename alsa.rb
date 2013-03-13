# -*- coding: utf-8 -*-
# aplayコマンドで音を鳴らす

Plugin.create :alsa do

  defsound :alsa, "ALSA" do |filename|
    if FileTest.exist?(filename)
      pid = Process.spawn("afplay", filename)
      Process.detach(pid)
    end
  end
end
