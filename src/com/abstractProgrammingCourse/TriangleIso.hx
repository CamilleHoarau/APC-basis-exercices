package com.abstractProgrammingCourse;
import pixi.core.graphics.Graphics;

/**
 * ...
 * @author ...
 */
class TriangleIso extends Geometry
{
	private var base:Float = 100;
	
	public function new() 
	{
		super();
	}
	
	override private function draw(){
		// efface
		clear();
		
		//dessine 
		beginFill(color);
		lineStyle(lineThickness, _lineColor);
		
		
		var halfBase:Float = base / 2 ;
		var half_height:Float = _height / 2;
		
		moveTo( -half_height, -halfBase);
		lineTo(half_height, 0);
		lineTo( -half_height, halfBase);
		endFill();
	}
	
	public function setBase (pBase:Float)
	{		
		//met à jour nouvelle valeur du height
		base = pBase;
		draw();
	}
}