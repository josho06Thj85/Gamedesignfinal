extends Node2D


@export var contents: Dictionary = {}
var OPEN_STATE = false
var regex = RegEx.new()


func in_range(player) -> bool:
	return player.data.state != player.STATES.DEAD and \
		   $StaticBody2D/Area2D.overlaps_body(player)


func interact(player):
	if not OPEN_STATE:
		open_chest(player)


func open_chest(player):
	OPEN_STATE = true
	$Sprite2D.frame = 1
	for item in contents.keys():
		drop_item(item, contents[item], player)
		await get_tree().create_timer(0.5).timeout
	contents = {}


func bounce_towards_player(item, player):
	var direction = (player.global_position - global_position).normalized()
	var BOUNCE_DISTANCE = 50.0
	var bounce_path = direction * BOUNCE_DISTANCE + \
					  Vector2(randf_range(-10.0, 10.0), randf_range(-10.0, 10.0))
	var tween = get_tree().create_tween()
	tween.set_trans(Tween.TRANS_BOUNCE)
	tween.set_ease(Tween.EASE_OUT)
	tween.tween_property(item, "global_position", item.global_position + bounce_path, 0.5)
	tween.play()
	await tween.finished


func drop_item(item_name)























func _ready():
	pass 



func _process(delta):
	pass
