extends CharacterBody3D

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("request_query"):
		$EnvironmentQuery.request_query()