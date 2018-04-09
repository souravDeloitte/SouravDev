public class TestCalculator {

public Decimal inputField1{get;set;}
public Decimal outputField1{get;set;}
public Decimal outputField2{get;set;}
public Decimal outputField3{get;set;}

public void calculate(){
    System.debug('Entered method '+ this.inputField1);
    if(null != this.inputField1){
        this.outputField1 = 0.25 * this.inputField1;
        this.outputField2 = 0.33 * this.inputField1;
        this.outputField3 = 0.25 * this.inputField1;
    }
}
}