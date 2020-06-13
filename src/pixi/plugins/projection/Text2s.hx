package pixi.plugins.projection;

@:native("PIXI.projection.Text2s")
extern class Text2s extends pixi.plugins.projection.mixins.Text {
	function new(?text:String, ?style:Dynamic, ?canvas:js.html.CanvasElement);
	var proj : ProjectionSurface;
	var aTrans : pixi.plugins.projection.mixins.Matrix;
	//final worldTransform : Dynamic;
	//static var prototype : Text2s;
}