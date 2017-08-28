package com.abstractProgrammingCourse;
import pixi.core.display.Container;

/**
 * ...
 * @author ...
 */
class Player extends Container
{

	public var canon:Rectangle = new Rectangle();
	
	public function new() 
	{
		super();
		var baseSquare:Square = new Square();
		addChild(baseSquare);
		baseSquare.setHeight(40);
		addChild(canon);
		canon.setHeight(10);
		canon.setWidth (60);
		var square:Square = new Square();
		canon.addChild(square);
		square.setHeight(10);
		square.x = canon.getWidth() / 2;
		square.setColor (0x00FF00);
	}
	
}