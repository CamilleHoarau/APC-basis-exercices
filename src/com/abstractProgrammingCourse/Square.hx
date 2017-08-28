package com.abstractProgrammingCourse;
import pixi.core.graphics.Graphics;

/**
 * ...
 * @author ...
 */
class Square extends Rectangle
{
	public function new() 
	{		
		super();
		_width = _height;
		draw();
	}
	
	override public function setHeight(pHeight:Float) 
	{
		_width = pHeight;
		super.setHeight(pHeight);
	}
	
	override public function setWidth(pWidth:Float) 
	{
		_height = pWidth;
		super.setWidth(pWidth);
	}
}