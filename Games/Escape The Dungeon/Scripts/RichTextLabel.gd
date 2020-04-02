extends RichTextLabel

var ms = 9
var s = 59
# Called when the node enters the scene tree for the first time.
func _process(delta):
	
	if ms < 1:
		s += -1
		ms = 9
		
	set_text(str(s)+"."+str(ms))
	
	pass

func _on_ms_timeout():
	ms += -1
	pass # Replace with function body.
