import { LightningElement, track, wire } from 'lwc';
import metadataMethod from '@salesforce/apex/MetadataClass.metadataMethod';
import findAllCustomLabels from '@salesforce/apex/DynamicCustomLabels.findAllCustomLabels';
 
const datatablecolumns = [
    { label: "ApexClassName", fieldName: "Name", type: "text" },
    { label: "Status", fieldName: "Status" }
];
 
const customlabels = [
    { label: "Name", fieldName: "Name", type: "text" },
    { label: "Value", fieldName: "Value" }  
];
 

export default class postRefresh extends LightningElement {
    @track picklistOptions = [
        { label: '--None--', value: '--None--' },
        { label: 'ApexClass', value: 'ApexClass' },
        { label: 'CustomLabels', value: 'CustomLabels' }
    ];
 
    @track dtcol = datatablecolumns;
    @track labelColumns = customlabels;
    @track metadatatype;
    @track apexclassesData;
    @track customLabelsData = [];
    datatableToggle = false;
    customlabelToggle = false;
    @track selectedValue;
    selectedDataflag=false;
    activeTab = '1';

    handleActive(event){
        if(event.target.value=='1'){
            this.activeTab = '1';
        }else if(event.target.value=='2'){
            this.activeTab = '2';
        }
    }
 
    handlePicklistChange(event) {
        this.metadatatype = event.target.value;
        this.datatableToggle = false; // Reset toggles
        this.customlabelToggle = false;
    
        if (this.metadatatype =='ApexClass') {
            metadataMethod()
                .then(result => {
                    this.apexclassesData = result;
                    this.datatableToggle = true; // Show the Apex Classes datatable
                })
                .catch(error => {
                    console.error('Failed to fetch Apex Classes', error);
                });
        } else if (this.metadatatype == 'CustomLabels') {
            
             findAllCustomLabels()
               .then(result => {
                    this.customLabelsData = Object.keys(result).map(key => ({
                       Name: key,
                       Value: result[key]
                    }));
                 this.customlabelToggle = true; // Show the Custom Labels datatable
                })
           
                .catch(error => {
                    console.error('Failed to fetch Custom Labels', error);
                });
        }
    }
    
 
    Rows = [];
    selectedrowshandler(event) {
        this.Rows = event.detail.selectedRows;
    }
 
    @track selectedapexclassesData;
    add(event) {
        if (this.Rows.length > 0) {
            this.selectedapexclassesData = this.Rows;
            this.selectedDataflag = true;
        }
        this.selectedValue = '--None--';
    }
}