extends Button

var team:String = 'red'

signal leader_selected(leader)

func prepare(leader):
	$sprite.prepare(leader)
	$name.text = leader
	
func _button_down():
	emit_signal("leader_selected", [$name.text, team])


func clear_color_remap():
	team = 'blue'
	$sprite.material = null
