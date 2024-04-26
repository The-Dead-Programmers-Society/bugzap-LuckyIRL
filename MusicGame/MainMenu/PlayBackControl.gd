extends Control

var audioEffect
var recording

func _ready():
	var index = AudioServer.get_bus_index("Record")
	audioEffect = AudioServer.get_bus_effect(index, 0)



func _on_record_button_pressed():
	if audioEffect.is_recording_active():
		recording = audioEffect.get_recording()
		audioEffect.set_recording_active(false)
		$RecordButton.text = "Record"
	else:
		audioEffect.set_recording_active(true)
		$RecordButton.text = "Stop"


func _on_play_button_pressed():
	$PlayBackPlayer.stream = recording
	$PlayBackPlayer.play()
	recording = null
