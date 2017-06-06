package com.abstractProgrammingCourse;

import js.Browser;
import pixi.core.display.Container;
import pixi.core.graphics.Graphics;
import pixi.core.renderers.webgl.WebGLRenderer;
import pixi.core.renderers.Detector;
import pixi.core.sprites.Sprite;

/**
 * ...
 * @author Théo Sabattié
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
    
	/**
	 * création du jeu
	*/
	private function new () {
		renderer = Detector.autoDetectRenderer(WIDTH, HEIGHT,{backgroundColor : 0x000000});
		Browser.document.body.appendChild(renderer.view);
		
		stage = new Container();
		
        var graph:Graphics = new Graphics();
        graph.beginFill(0xFF0000);
        graph.drawRect( -25, -25, 50, 50);
        graph.endFill();
        stage.addChild(graph);
        graph.x = WIDTH / 2;
        graph.y = HEIGHT / 2;
        
        untyped Object.defineProperty(window, 'stageWidth', { 
            get: function() { return WIDTH; }, 
        });
        
        untyped Object.defineProperty(window, 'stageHeight', { 
            get: function() { return HEIGHT; }, 
        });
        
        untyped Object.defineProperty(window, 'playerX', { 
            get: function() { return graph.x; }, 
            set : function(x) { graph.x = x; }
        });
        
        untyped Object.defineProperty(window, 'playerY', { 
            get: function() { return graph.y; }, 
            set : function(y) { graph.y = y; }
        });
        
		Browser.window.requestAnimationFrame(cast gameLoop);		
	}
	
	/**
	 * game loop
	 */
	private function gameLoop() {
		Browser.window.requestAnimationFrame(cast gameLoop);
		renderer.render(stage);
	}
	
	/**
	 * détruit l'instance unique et met sa référence interne à null
	 */
	public function destroy (): Void {
		instance = null;
	}
	
}