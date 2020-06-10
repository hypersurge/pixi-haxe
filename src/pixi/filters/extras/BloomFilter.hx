package pixi.filters.extras;

import pixi.core.renderers.webgl.filters.Filter;

@:native("PIXI.filters.BloomFilter")
extern class BloomFilter extends Filter {
	/**
	 * The BloomFilter applies a Gaussian blur to an object.
	 * The strength of the blur can be set for x- and y-axis separately.<br>
	 * ![original](../tools/screenshots/dist/original.png)![filter](../tools/screenshots/dist/bloom.png)
	 *
	 * @class
	 * @extends PIXI.Filter
	 * @memberof PIXI.filters
	 * @see {@link https://www.npmjs.com/package/@pixi/filter-bloom|@pixi/filter-bloom}
	 * @see {@link https://www.npmjs.com/package/pixi-filters|pixi-filters}
	 * @param {number|PIXI.Point|number[]} [blur=2] Sets the strength of both the blurX and blurY properties simultaneously
	 * @param {number} [quality=4] The quality of the blurX & blurY filter.
	 * @param {number} [resolution=PIXI.settings.RESOLUTION] The resolution of the blurX & blurY filter.
	 * @param {number} [kernelSize=5] The kernelSize of the blurX & blurY filter.Options: 5, 7, 9, 11, 13, 15.
	 */
	function new(blur:Float = 2, quality:Int = 4, resolution:Float = 1, kernelSize:Int = 5);

	var blur:Float;
	var blurX:Float;
	var blurY:Float;
}
