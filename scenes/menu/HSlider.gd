extends HSlider

	
func _value_changed(new_value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("BGM"), new_value)
