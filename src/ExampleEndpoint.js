"use strict";

const STATE_IDLE = "IDLE";
const STATE_BUY = "BUY";
const STATE_SELL = "SELL";

module.exports = class ExampleEndpoint{
	onInit(bid,ask){
		console.log("INIT:",{bid: bid,ask: ask});

		return STATE_BUY;
	}

	onTick(bid,ask){
		console.log("TICK:",{bid: bid,ask: ask});	

		return STATE_IDLE;
	}

	onDeInit(bid,ask){
		console.log("DEINIT:",{bid: bid,ask: ask});			

		return STATE_SELL;
	}
}