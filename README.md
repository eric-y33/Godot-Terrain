# Godot Shader Enhancements

[My submission for Acerola's Dirt Jam](https://berc33.itch.io/godot-shader-enhancements). Improvements include:
- Separating mesh generation from shader recompilation
- Linear and exponential fog
- Specular highlights
- Soft and hard shadows

![demo](./demo.gif)

Everything after "Lambertian Diffuse" in the demo above is my own work. Original project details follow this section (the fog effect in the image below was not included in the original repository).

# Godot Terrain Generator

by Acerola

Implements simple perlin noise based fractional brownian motion as a Godot compositor effect for use as a base or reference in my event [Dirt Jam](https://itch.io/jam/acerola-dirt-jam/).

![example](./example.png)

## How To Use

* Create a new godot project with a 3D root node
* Add `DirectionalLight3D`, `Camera3D`, and `WorldEnvironment` nodes to the scene
* Add a `Compositor` to the `WorldEnvironment` node
* Add an element to the `Compositor Effects` array
* Instantiate a new `DrawTerrainMesh` in the element field
* Click the box to open the settings list for the terrain, hover over settings to get an explanation for what it does!
