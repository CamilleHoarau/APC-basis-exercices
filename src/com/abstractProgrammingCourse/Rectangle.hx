package com.abstractProgrammingCourse;
import pixi.core.graphics.Graphics;

/**
 * ...
 * @author ...
 */
class Rectangle extends Geometry
{
	private var _width:Float= 20;
	
	public function new() 
	{		
		super();
		draw();
	}
	
	
	public function getHeight():Float{
		return _height;
	}
	
	public function getWidth():Float{
		return _width;
	}
	
	override private function draw(){
		// efface
		clear();
		
		//dessine 
		beginFill(color);
		lineStyle(lineThickness, _lineColor);
		
		
		var halfHeight:Float = _height / 2 ;
		var halfWidth:Float = _width / 2 ;
		
		moveTo( -halfWidth, -halfHeight);
		lineTo(halfWidth, -halfHeight);
		lineTo(halfWidth, halfHeight);
		lineTo( -halfWidth, halfHeight);
		
		endFill();
	}
	
	public function setWidth (pWidth:Float):Void
	{		
		//met à jour nouvelle valeur du length
		_width = pWidth;
		draw();
	}
}