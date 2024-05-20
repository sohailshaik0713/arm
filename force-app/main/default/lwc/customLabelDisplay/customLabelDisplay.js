import { LightningElement, wire } from 'lwc';
import getAllCustomLabels from '@salesforce/apex/DynamicCustomLabels.findAllCustomLabels';
export default class CustomLabelDisplay extends LightningElement {
    customLabels = [];
    @wire(getAllCustomLabels)wiredCustomLabels({ data,error}){
        if(data){
            this.customLabels = data;
            console.log(data);
        } else if (error) {
            console.error(error);
        }
    }

}