package com.abstractProgrammingCourse;

import haxe.ds.Vector;
import js.Browser;
import js.html.svg.Number;
import pixi.core.display.Container;
import pixi.core.graphics.Graphics;
import pixi.core.math.Point;
import pixi.core.renderers.webgl.WebGLRenderer;
import pixi.core.renderers.Detector;
import pixi.core.sprites.Sprite;

/**
 * ...
 * @author Camille Hoarau
 */

class Main 
{
	
	/**
	 * instance unique de la classe Main
	 */
	private static var instance: Main;
	
	private var renderer:WebGLRenderer;
	private var stage:Container;
	
	/**
	 * initialisation générale
	 */
	private static function main ():Void {
		Main.getInstance();
	}

	/**
	 * Retourne l'instance unique de la classe, et la crée si elle n'existait pas au préalable
	 * @return instance unique
	 */
	public static function getInstance (): Main {
		if (instance == null) instance = new Main();
		return instance;
	}	
	
    public static inline var WIDTH:Int = 960;
    public static inline var HEIGHT:Int = 640;
    private var player:Player = new Player();
	private var enemy:Enemy = new Enemy();
	
	/**
	 * création du jeu
	*/
	private function new () {
		renderer = Detector.autoDetectRenderer(WIDTH, HEIGHT,{backgroundColor : 0x000000});
		Browser.document.body.appendChild(renderer.view);
		
		stage = new Container();
		
		stage.addChild(player);
		player.x = WIDTH / 2;
		player.y = HEIGHT / 2;
		stage.addChild(enemy);
		enemy.x = Math.random()*WIDTH;
		enemy.y = Math.random()*HEIGHT;
		
		Browser.window.requestAnimationFrame(cast gameLoop);
		//createSquare (200);
		//createTriangle (100);
		//createTriangleEqui (1);
	}
	
	var speedX:Float = 10;
	var speedY:Float = 10;
	
	/**
	 * game loop
	 */
	private function gameLoop() {
		Browser.window.requestAnimationFrame(cast gameLoop);
		renderer.render(stage);
		
		enemy.x += speedX;
		if (enemy.x > WIDTH){
			speedX = -10 ;
		}
		else if (enemy.x < 0){
			speedX = 10;
		}
		
		enemy.y += speedY;
		if (enemy.y > HEIGHT){
			speedY = -10 ;
		}
		else if (enemy.y < 0){
			speedY = 10;
		}
		
		enemy.rotation = Math.atan2(speedY, speedX);
		var mousePosition:Point = renderer.plugins.interaction.mouse.global;
		
		var playerToMouse:Point = new Point(mousePosition.x - player.x , mousePosition.y - player.y);
		
		player.canon.rotation = Math.atan2(playerToMouse.y,playerToMouse.x);
	}
	
	/**
	 * détruit l'instance unique et met sa référence interne à null
	 */
	public function destroy (): Void {
		instance = null;
	}
	
}