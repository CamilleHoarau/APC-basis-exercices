package com.abstractProgrammingCourse;
import pixi.core.display.Container;

/**
 * ...
 * @author ...
 */
class Enemy extends Container
{

	public function new() 
	{
		super();
		var triangle:TriangleIso = new TriangleIso();
		addChild(triangle);
		triangle.setHeight(40);
		triangle.setBase(30);
		triangle.setColor(0x0000FF);
	}
	
}