let numbers = [2, 5, 12, 13, 15, 18, 22];
//ここに答えを実装してください。↓↓↓
let num;
for(i = 0;i<numbers.length;i++){
    if(numbers[i]%2 === 0){
        num = numbers[i];
        isEven();
        
    }
    }


function isEven() {
    console.log(num + 'は偶数です');
}

class Car{

    constructor(gass,number){
        this.gass=gass;
        this.number=number;
    }
    getNumGas(){
        console.log(`ガソリンは${this.gass}です。ナンバーは${this.number}です`)
    }
}
let car = new Car('300','184');
car.getNumGas();