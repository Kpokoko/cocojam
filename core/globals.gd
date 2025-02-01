extends Node

var points:= 0
var health := 100
var steps := 6
var damage := 15
var deafault_steps := 6

func change_point(diff: int):
	points += diff
	Events.point_changes.emit(points)
	
func change_health(diff: int):
	health += diff
	Events.health_changes.emit(health)
	
func set_damage(diff: int):
	damage = diff
	
func set_steps(diff: int):
	deafault_steps = diff
	
func change_steps(diff: int):
	steps += diff
	if steps <= 0:
		change_health(-damage)
		steps = deafault_steps
		
	Events.steps_changes.emit(steps)
