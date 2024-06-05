extends TileMap



var width = 100
var height = 100

var random = 0

var altitude = {}

var noisegenerator = FastNoiseLite.new()






var tiles = {
	"grass": Vector2i(0,0),
	"ice": Vector2i(1,0),
	"dirt": Vector2i(2,0),
	"sand": Vector2i(3,0)
}
var biomes = {
	"Greenland":{"grass":1},
	"Thundra":{"ice":2},
	"Mountain":{"dirt":3},
	"Dungon":{"dirt":4},
	"Desert":{"sand":5}
}

func generate_noise(freq,oct):
	noisegenerator.seed = randi_range(0,1000000)
	noisegenerator.frequency = freq
	noisegenerator.fractal_octaves = oct
	noisegenerator.noise_type = FastNoiseLite.TYPE_SIMPLEX
	var grid = {}
	for x in width:
		for y in height:
			random = (abs(noisegenerator.get_noise_2d(x,y)))
			grid[Vector2(x,y)] = random
	return grid




func generate_tiles(width,height):
	for x in range(height):
		
		







# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
