# Godot Music Demo

Name:Peter Kelly

Student Number: C23775565

Class Group: Game Design

# Description of the project
A simple music demo in Godot that plays bell sounds when the mouse hovers over the buttons.
# Instructions for use
On the main menu press start to load the scene. Move the mouse over the bells to play the sounds.

# How it works
It uses the on mouse enter and on mouse exit signals to play the sounds when the mouse hovers over the bells.

# List of classes/assets in the project 

| Class/asset | Source |
|-----------|-----------|
| TestScene.gd | Self written |
| Orb.gd | Modified from [reference](https://docs.godotengine.org/en/3.0/getting_started/step_by_step/your_first_game.html) |
| RecordPlay.gd | From [reference](https://www.youtube.com/watch?v=AzNSbkoompg&t=3s) |

# References

# What I am most proud of in the assignment
That I had the idea to use the on mouse enter instead of the on button pressed signal to play the sounds.

# What I would do to improve the assignment in the future

*More* sounds and *more* buttons. I would also like to add a feature that allows the user to record and play back the sounds. 
Also, I would like to add a feature that allows the user to change the pitch of the sounds. And I would like to add some sort of sound **visualizer** 
and sound modulation feature.

- *More* sounds
- *More* buttons
- **More** **Fun**
- **More** **Features**

*I will do this in the next couple of days.*

## This is how to markdown text:

This is *emphasis*

*WOW*

This is **strong emphasis**

**WTF**

This is `inline code`



This is a quote:

> "We succeeded in taking that picture [from deep space], and, if you look at it, you see a dot. That's here. That's home. That's us. On it, everyone you ever heard of, every human being who ever lived, lived out their lives. The aggregate of all our joys and sufferings, thousands of confident religions, ideologies and economic doctrines, every hunter and forager, every hero and coward, every creator and destroyer of civilizations, every king and peasant, every young couple in love, every hopeful child, every mother and father, every inventor and explorer, every teacher of morals, every corrupt politician, every superstar, every supreme leader, every saint and sinner in the history of our species, lived there on a mote of dust, suspended in a sunbeam. The earth is a very small stage in a vast cosmic arena. Think of the rivers of blood spilled by all those generals and emperors so that in glory and in triumph they could become the momentary masters of a fraction of a dot. Think of the endless cruelties visited by the inhabitants of one corner of the dot on scarcely distinguishable inhabitants of some other corner of the dot. How frequent their misunderstandings, how eager they are to kill one another, how fervent their hatreds. Our posturings, our imagined self-importance, the delusion that we have some privileged position in the universe, are challenged by this point of pale light. Our planet is a lonely speck in the great enveloping cosmic dark. In our obscurity -- in all this vastness -- there is no hint that help will come from elsewhere to save us from ourselves. It is up to us. It's been said that astronomy is a humbling, and I might add, a character building experience. To my mind, there is perhaps no better demonstration of the folly of human conceits than this distant image of our tiny world. To me, it underscores our responsibility to deal more kindly and compassionately with one another and to preserve and cherish that pale blue dot, the only home we've ever known.- Carl Sagan -" 

![Pale Blue Dot](https://www.cnet.com/a/img/resize/c4cd819550122976bf17dc9b2aff1e35677324e1/hub/2020/02/12/36eb3bc4-8b47-4eb5-bc43-47d9b267f8df/palebluedot.jpg?auto=webp&width=1920)


Link to the Youtube video of my Godot project:

![YouTube](https://www.youtube.com/watch?v=S_fmlTQDqLM)
[![YouTube](https://media.discordapp.net/attachments/1164234194877157501/1233188175627817051/GodotImage.png?ex=662c2f7c&is=662addfc&hm=9d3aa60ba1bd139f9108e1e92170c8d011137ce74dc2c9ec099c795fb5b5c0c0&=&format=webp&quality=lossless&width=1395&height=785)](https://www.youtube.com/watch?v=S_fmlTQDqLM)

![My Itch.io page](https://luckyirl.itch.io/)

This is a horizontal rule:

---

This is a bulleted list

- Item
- Item

This is a numbered list

1. Item
1. Item

This is a [hyperlink](http://bryanduggan.org)

# Headings
## Headings
#### Headings
##### Headings

This is code:

```Java
public void render()
{
	ui.noFill();
	ui.stroke(255);
	ui.rect(x, y, width, height);
	ui.textAlign(PApplet.CENTER, PApplet.CENTER);
	ui.text(text, x + width * 0.5f, y + height * 0.5f);
}
```

So is this without specifying the language:

```
public void render()
{
	ui.noFill();
	ui.stroke(255);
	ui.rect(x, y, width, height);
	ui.textAlign(PApplet.CENTER, PApplet.CENTER);
	ui.text(text, x + width * 0.5f, y + height * 0.5f);
}
```

```Java
void setup() {
  size(400, 400);
  background(255);
  stroke(0);
  drawBranch(200, 380, 100, 0);
}

void drawBranch(float x, float y, float length, float angle) {
  if (length > 2) {
	float x2 = x + length * cos(radians(angle));
	float y2 = y - length * sin(radians(angle));
	line(x, y, x2, y2);
	drawBranch(x2, y2, length * 0.7, angle + 30);
	drawBranch(x2, y2, length * 0.7, angle - 25);
  }
}
```

```Python
import turtle

def tree(branchLen,t):
	if branchLen > 5:
		t.forward(branchLen)
		t.right(20)
		tree(branchLen-15,t)
		t.left(40)
		tree(branchLen-15,t)
		t.right(20)
		t.backward(branchLen)

		def main():
		t = turtle.Turtle()
			myWin = turtle.Screen()
			t.left(90)
			t.up()
			t.backward(100)
			t.down()
			t.color("green")
			tree(75,t)
			myWin.exitonclick()

			main()
```

```gdscript
extends Node2D

var radius = 100
var angle = 0
var speed = 0.1
var color = Color(1, 0, 0, 1)

func _process(delta):
	angle += speed
	var x = radius * cos(angle)
	var y = radius * sin(angle)
	var point = Vector2(x, y)
	draw_circle(point, 10, color)

	func draw_circle(point, radius, color):
	var circle = CircleShape2D.new()
		circle.radius = radius
		var material = ShaderMaterial.new()
		material.shader = load("res://shader.shader")
		material.set_shader_param("color", color)
		var circle_node = CanvasItem.new()
		circle_node.set_shape(circle)
		circle_node.set_material(material)
		circle_node.set_position(point)
		add_child(circle_node)

```

This is an image using a relative URL:

![An image](images/p8.png)

This is an image using an absolute URL:

![A different image](https://bryanduggandotorg.files.wordpress.com/2019/02/infinite-forms-00045.png?w=595&h=&zoom=2)

This is a youtube video:

[![YouTube](http://img.youtube.com/vi/J2kHSSFA4NU/0.jpg)](https://www.youtube.com/watch?v=J2kHSSFA4NU)

This is a table:

| Game Engines I know | Game Engines I like |
|---------------------|---------------------|
|Godot                |       **Godot**     |
|Unreal Engine        |    *Unreal Engine*  |
|Unity                |        *Unity*      |
|Some stuff           |      Some Fluff     |

