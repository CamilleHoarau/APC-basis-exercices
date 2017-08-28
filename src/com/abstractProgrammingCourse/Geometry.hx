package com.abstractProgrammingCourse;
import pixi.core.graphics.Graphics;

/**
 * ...
 * @author ...
 */
class Geometry extends Graphics
{
	private var lineThickness:Float = 1;
	private var _lineColor:Int = 0xFFFFFF;
	private var color:Int = 0xFF0000;
	private var _height:Float = 2;

	public function new() 
	{
		super();
	}
	
	private function draw(){
		/*// efface
		clear();
		
		//dessine 
		beginFill(color);
		lineStyle(lineThickness, _lineColor);
		
		var half_height:Float = _height / 2;
		
		moveTo( ,);
		lineTo(,);
		lineTo( ,);
		endFill();*/
	}
	
	public function setHeight (pHeight:Float)
	{		
		//met à jour nouvelle valeur du height
		_height = pHeight;
		draw();
	}
	
	
	public function setLineThickness (pThickness:Float)
	{		
		//met à jour nouvelle valeur du thickness
		lineThickness = pThickness;
		draw();
	}
	
	public function setLineColor (pLineColor:Int) 
	{
		//met à jour nouvelle valeur du linecolor
		_lineColor = pLineColor;
		draw();
		
	}
	
	public function setColor (pColor:Int) 
	{
		//met à jour nouvelle valeur du color
		color = pColor;
		draw();
		
	}
}