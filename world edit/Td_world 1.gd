























































































































[gd_scene load_steps=4 format=3 uid="uid://cubuw042yqgix"]

[ext_resource type="Script" path="res://change_lvl.gd" id="1_jdkf1"]

[sub_resource type="RectangleShape2D" id="RectangleShape2D_x587g"]
size = Vector2(50, 89.5)

[sub_resource type="PlaceholderTexture2D" id="PlaceholderTexture2D_2r2qe"]

[node name="change_lvl" type="Area2D"]
script = ExtResource("1_jdkf1")

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2(0, -20.25)
shape = SubResource("RectangleShape2D_x587g")

[node name="Sprite2D" type="Sprite2D" parent="."]
position = Vector2(0, -20)
scale = Vector2(46, 86)
texture = SubResource("PlaceholderTexture2D_2r2qe")

[connection signal="body_entered" from="." to="." method="_on_body_entered"]
