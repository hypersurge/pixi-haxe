package animatedsprite;

import pixi.extras.AnimatedSprite;
import pixi.loaders.Loader;
import pixi.core.Application;
import pixi.core.textures.Texture;
import js.Browser;

class Main extends Application {

	public function new() {
		var options:ApplicationOptions = {
			backgroundColor: 0xFFFFFF
		};
		super(options);
		_init();
	}

	function _init() {
		super.start();

		var mcloader:Loader = new Loader();
		mcloader.add("mc", "assets/movieclip/SpriteSheet.json");
		mcloader.load(_onLoaded);
	}

	function _onLoaded() {
		var explosionTextures = [];

		var texture:Texture;
		for (i in 0 ... 26) {
			texture = Texture.from("Explosion_Sequence_A " + (i + 1) + ".png");
			explosionTextures.push(texture);
		}

		var explosion:AnimatedSprite;
		for (i in 0 ... 80) {
			explosion = new AnimatedSprite(explosionTextures);
			explosion.position.x = Math.random() * Browser.window.innerWidth;
			explosion.position.y = Math.random() * Browser.window.innerHeight;
			explosion.anchor.set(0.5, 0.5);

			explosion.rotation = Math.random() * Math.PI;
			explosion.scale.x = explosion.scale.y = 0.75 + Math.random() * 0.5;

			explosion.gotoAndPlay(Std.random(27));
			explosion.animationSpeed = 0.8;

			stage.addChild(explosion);
		}
	}

	static function main() {
		new Main();
	}
}