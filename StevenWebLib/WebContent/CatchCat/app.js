/**
 * 应用程序js
 */

var stage = new createjs.Stage("gameView");
createjs.Ticker.setFPS(30);
createjs.Ticker.addEventListener("tick", stage);

var gameView = new createjs.Container();
gameView.x = 30;
gameView.y = 30;
stage.addChild(gameView);

// 9行9列
var circleArr = [ [], [], [], [], [], [], [], [], [] ];

function addCircles() {
	for (var indexY = 0; indexY < 9; indexY++) {
		for (var indexX = 0; indexX < 9; indexX++) {
			var c = new Circle();
			gameView.addChild(c);
			circleArr[indexX][indexY] = c;
			c.indexX = indexX;
			c.indexY = indexY;
			c.x = indexY % 2 ? indexX * 55 + 25 : indexX * 55;
			c.y = indexY * 55;
			if (indexX == 4 && indexY == 4) {
				c.setCircleType(3);
			}
		}
	}
}

addCircles();
