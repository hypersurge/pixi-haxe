package pixi.core;

import haxe.extern.EitherType;
import js.html.HtmlElement;
import js.html.Window;
import pixi.core.math.shapes.Rectangle;
import js.html.CanvasElement;
import pixi.core.renderers.AbstractRenderer;
import pixi.core.ticker.Ticker;
import pixi.core.display.Container;
import pixi.loaders.Loader;

typedef ApplicationOptions = {
	> RenderOptions,

	// automatically starts the rendering after the construction. Note that setting this parameter to false does NOT stop the shared ticker even if you set options.sharedTicker to true in case that it is already started. Stop it by your own.
	// default: true
	@:optional var autoStart:Bool;
	// true to use PIXI.ticker.shared, false to create new ticker.
	// default: false
	@:optional var sharedTicker:Bool;
	// true to use PIXI.loaders.shared, false to create new Loader.
	// default: false
	@:optional var sharedLoader:Bool;

	/**
	 * Element to automatically resize stage to.
	 */
	@:optional var resizeTo:EitherType<HtmlElement, Window>;
}

@:native("PIXI.Application")
extern class Application {
	/**
	 * Convenience class to create a new PIXI application.
	 * This class automatically creates the renderer, ticker
	 * and root container.
	 *
	 * @example
	 * // Create the application
	 * var app = new Application();
	 *
	 * // Add the view to the DOM
	 * document.body.appendChild(app.view);
	 *
	 * // ex, add display objects
	 * app.stage.addChild(PIXI.Sprite.fromImage('something.png'));
	 *
	 * @class
	 * @memberof PIXI
	 * @param {ApplicationOptions} [options] - The optional renderer parameters
	 */
	function new(?options:ApplicationOptions);

	/**
	 * Loader instance to help with asset loading.
	 */
	var loader(default, null):Loader;

	/**
	 * Renderer if available, otherwise CanvasRenderer
	 * @member {Renderer|CanvasRenderer}
	 */
	var renderer:AbstractRenderer;

	/**
	 * The element or window to resize the application to.
	 */
	var resizeTo:EitherType<HtmlElement, Window>;

	/**
	 * The root display container that's renderered.
	 * @member {Container}
	 */
	var stage:Container;

	/**
	 * Ticker for doing render updates.
	 * @member {Ticker}
	 */
	var ticker:Ticker;

	/**
	 * Reference to the renderer's canvas element.
	 * @member {HTMLCanvasElement}
	 * @readonly
	 */
	var view:CanvasElement;

	/**
	 * Reference to the renderer's screen rectangle. Its safe to use as filterArea or hitArea for whole screen
	 * @member {Rectangle}
	 * @readonly
	 */
	var screen:Rectangle;

	/**
	 * Render the current stage.
	 */
	function render():Void;

	/**
	 * Convenience method for stopping the render.
	 */
	function stop():Void;

	/**
	 * Convenience method for starting the render.
	 */
	function start():Void;

	/**
	 * Destroy and don't use after this.
	 * @param {Boolean} [removeView=false] Automatically remove canvas from DOM.
	 */
	function destroy(?removeView:Bool):Void;
}
