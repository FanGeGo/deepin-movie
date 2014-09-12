import QtQuick 2.1
import Deepin.Widgets 1.0

DWindow {
	width: 980
	height: 560
	flags: Qt.Popup
	color: "transparent"

	Rectangle {
		radius: 3
		color: Qt.rgba(0, 0, 0, 0.8)
		border.width: 1
		border.color: Qt.rgba(1, 1, 1, 0.8)

		anchors.fill: parent

		Item {
			anchors.fill: parent
			anchors.margins: { 50, 50, 50, 50}

			Row {
				height: parent.height

				Column {
					spacing: 30

					ShortcutsSection {
						title: dsTr("Playback")

						ShortcutsLabel {
							title: dsTr("Pause/Play")
							shortcut: config.hotkeysPlayTogglePlay+"" || dsTr("Disabled")
						}
						ShortcutsLabel {
							title: dsTr("Forward")
							shortcut: config.hotkeysPlayForward+"" || dsTr("Disabled")
						}
						ShortcutsLabel {
							title: dsTr("Rewind")
							shortcut: config.hotkeysPlayBackward+"" || dsTr("Disabled")
						}
						ShortcutsLabel {
							title: dsTr("Fullscreen")
							shortcut: config.hotkeysPlayToggleFullscreen+"" || dsTr("Disabled")
						}
						ShortcutsLabel {
							title: dsTr("Playlist")
							shortcut: config.hotkeysPlayTogglePlaylist+"" || dsTr("Disabled")
						}
						ShortcutsLabel {
							title: dsTr("Accelerate playback")
							shortcut: config.hotkeysPlaySpeedUp+"" || dsTr("Disabled")
						}
						ShortcutsLabel {
							title: dsTr("Decelerate playback")
							shortcut: config.hotkeysPlaySlowDown+"" || dsTr("Disabled")
						}
						ShortcutsLabel {
							title: dsTr("Restore playback speed")
							shortcut: config.hotkeysPlayRestoreSpeed+"" || dsTr("Disabled")
						}
					}

					ShortcutsSection {
						title: dsTr("Files")

						ShortcutsLabel {
							title: dsTr("Open a file")
							shortcut: config.hotkeysFilesOpenFile+"" || dsTr("Disabled")
						}
						ShortcutsLabel {
							title: dsTr("Open previous")
							shortcut: config.hotkeysFilesPlayPrevious+"" || dsTr("Disabled")
						}
						ShortcutsLabel {
							title: dsTr("Open next")
							shortcut: config.hotkeysFilesPlayNext+"" || dsTr("Disabled")
						}
					}
				}

				Column {
					spacing: 90

					ShortcutsSection {
						title: dsTr("Frame/Sound")

						ShortcutsLabel {
							title: dsTr("Mini mode")
							shortcut: config.hotkeysFrameSoundToggleMiniMode+"" || dsTr("Disabled")
						}
						ShortcutsLabel {
							title: dsTr("Rotate counterclockwise")
							shortcut: config.hotkeysFrameSoundRotateAnticlockwise+"" || dsTr("Disabled")
						}
						ShortcutsLabel {
							title: dsTr("Rotate clockwise")
							shortcut: config.hotkeysFrameSoundRotateClockwise+"" || dsTr("Disabled")
						}
						ShortcutsLabel {
							title: dsTr("Volume up")
							shortcut: config.hotkeysFrameSoundIncreaseVolume+"" || dsTr("Disabled")
						}
						ShortcutsLabel {
							title: dsTr("Volume down")
							shortcut: config.hotkeysFrameSoundDecreaseVolume+"" || dsTr("Disabled")
						}
						ShortcutsLabel {
							title: dsTr("Mute")
							shortcut: config.hotkeysFrameSoundToggleMute+"" || dsTr("Disabled")
						}
					}

					ShortcutsSection {
						title: dsTr("Other")

						ShortcutsLabel {
							title: dsTr("Left click")
							shortcut: config.othersLeftClick ? dsTr("Pause/Play") : dsTr("Disabled")
						}

						ShortcutsLabel {
							title: dsTr("Double click")
							shortcut: config.othersDoubleClick ? dsTr("Fullscreen") : dsTr("Disabled")
						}

						ShortcutsLabel {
							title: dsTr("Scroll")
							shortcut: config.othersWheel ? dsTr("Volume") : dsTr("Disabled")
						}
					}
				}

				ShortcutsSection {
					title: dsTr("Subtitles")

					ShortcutsLabel {
						title: dsTr("Forward 0.5s")
						shortcut: config.hotkeysSubtitlesSubtitleForward+"" || dsTr("Disabled")
					}
					ShortcutsLabel {
						title: dsTr("Delay 0.5s")
						shortcut: config.hotkeysSubtitlesSubtitleBackward+"" || dsTr("Disabled")
					}
					ShortcutsLabel {
						title: dsTr("Subtitle up")
						shortcut: config.hotkeysSubtitlesSubtitleMoveUp+"" || dsTr("Disabled")
					}
					ShortcutsLabel {
						title: dsTr("Subtitle down")
						shortcut: config.hotkeysSubtitlesSubtitleMoveDown+"" || dsTr("Disabled")
					}
				}
			}
		}
	}
}