package pixi.filters.extras;

import pixi.core.renderers.webgl.filters.Filter;

@:native("PIXI.filters.AdvancedBloomFilter")
extern class AdvancedBloomFilter extends Filter {
	/**
	 * The AdvancedBloomFilter applies a Bloom Effect to an object. Unlike the normal BloomFilter
	 * this had some advanced controls for adjusting the look of the bloom. Note: this filter
	 * is slower than normal BloomFilter.<br>
	 * ![original](../tools/screenshots/dist/original.png)![filter](../tools/screenshots/dist/advanced-bloom.png)
	 *
	 * @class
	 * @extends PIXI.Filter
	 * @memberof PIXI.filters
	 * @see {@link https://www.npmjs.com/package/@pixi/filter-advanced-bloom|@pixi/filter-advanced-bloom}
	 * @see {@link https://www.npmjs.com/package/pixi-filters|pixi-filters}
	 *
	 * @param {object|number} [options] - The optional parameters of advanced bloom filter.
	 *                        When options is a number , it will be `options.threshold`.
	 * @param {number} [options.threshold=0.5] - Defines how bright a color needs to be to affect bloom.
	 * @param {number} [options.bloomScale=1.0] - To adjust the strength of the bloom. Higher values is more intense brightness.
	 * @param {number} [options.brightness=1.0] - The brightness, lower value is more subtle brightness, higher value is blown-out.
	 * @param {number} [options.blur=8] - Sets the strength of the Blur properties simultaneously
	 * @param {number} [options.quality=4] - The quality of the Blur filter.
	 * @param {number[]} [options.kernels=null] - The kernels of the Blur filter.
	 * @param {number|number[]|PIXI.Point} [options.pixelSize=1] - the pixelSize of the Blur filter.
	 * @param {number} [options.resolution=PIXI.settings.RESOLUTION] - The resolution of the Blur filter.
	 */
	function new(?options:{
		?threshold:Float,
		?bloomScale:Float,
		?brightness:Float,
		?kernels:Int,
		?blur:Float,
		?quality:Int,
		?pixelSize:Int,
		?resolution:Float,
	});

	var threshold:Float;
	var kernels:Int;
	var blur:Float;
	var quality:Int;
	var pixelSize:Int;
}
