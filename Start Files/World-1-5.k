/*
 * File: World-1-5.k
 * ---------------------------
 * Stepwise refinement test! Let's collect
 * these beepers!
 */


import "turns";


/* MAIN FUNCTION */

function CollectBeeperTowers(){
	collectAllBeepers();
	dropAllBeepers();
	returnHome();
}





/*    SUB-FUNCTIONS   */


/* Collect All Beepers */
function collectAllBeepers() {
	while(frontIsClear()){
		collectOneTower();
		move();
	}
	collectOneTower();
}


/* Drop All Beepers */
function dropAllBeepers(){
	while(beepersInBag()){
	putBeeper();
	}
}


/* Return Home */
function returnHome(){
	turnAround();
	moveToWall();
	turnAround();
}


/* Collect One Tower */
function collectOneTower(){
	if(beepersPresent()){
		turnLeft();
		collectLineOfBeepers();
		turnAround();
		moveToWall();
		turnLeft();
	}
}


/* Collect Line of Beepers */
function collectLineOfBeepers(){
	while(beepersPresent()){
		pickBeeper();
		move();
	}
}


/* MOVE TO WALL */
function moveToWall(){
	while(frontIsClear()){
		move();
	}
}

