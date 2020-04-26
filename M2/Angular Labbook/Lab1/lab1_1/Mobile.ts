import {BasicPhone} from './BasicPhone';
import {SmartPhone} from './SmartPhone';

export class Mobile{

    mobileId:number;
    mobileName:string;
    mobileCost:number;
    Type:any;

    constructor(array:any[]){
        this.mobileId=array[0];
        this.mobileName=array[1];
        this.mobileCost=array[2];
        if(array[3]=='BasicPhone'){
            this.Type=new BasicPhone();
        }else if(array[3]=='Android'){
            this.Type=new SmartPhone();
        }
        this.Type.mobileType=array[3];
    }
    printMObileDetails(){
		console.log("Shivani");
        console.log(this.mobileName);
        console.log(this.mobileId);
        console.log(this.mobileCost);
        console.log(this.Type.mobileType);
    }
}