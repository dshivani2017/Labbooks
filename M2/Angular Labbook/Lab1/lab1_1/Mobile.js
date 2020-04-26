"use strict";
exports.__esModule = true;
var BasicPhone_1 = require("./BasicPhone");
var SmartPhone_1 = require("./SmartPhone");
var Mobile = /** @class */ (function () {
    function Mobile(array) {
        this.mobileId = array[0];
        this.mobileName = array[1];
        this.mobileCost = array[2];
        if (array[3] == 'BasicPhone') {
            this.Type = new BasicPhone_1.BasicPhone();
        }
        else if (array[3] == 'Android') {
            this.Type = new SmartPhone_1.SmartPhone();
        }
        this.Type.mobileType = array[3];
    }
    Mobile.prototype.printMObileDetails = function () {
        console.log("Shivani");
        console.log(this.mobileName);
        console.log(this.mobileId);
        console.log(this.mobileCost);
        console.log(this.Type.mobileType);
    };
    return Mobile;
}());
exports.Mobile = Mobile;
