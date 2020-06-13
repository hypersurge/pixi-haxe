package pixi.plugins.projection;

@:native("PIXI.projection.Text2d")
extern class Text2d extends pixi.plugins.projection.mixins.Text {
	function new(?text:String, ?style:Dynamic, ?canvas:js.html.CanvasElement);
	var proj : Projection2d;
	var vertexData2d : js.lib.Float32Array;
	//final worldTransform : Dynamic;
	//static var prototype : Text2d;
}