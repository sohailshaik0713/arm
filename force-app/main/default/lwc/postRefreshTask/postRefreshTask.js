import { LightningElement, track } from 'lwc';
import MetadataMethod from '@salesforce/apex/MetadataClass.MetadataMethod';
import performQuery from '@salesforce/apex/MetadataClass.performQuery';
 
const datatablecolumns = [
    { label: "ApexClassName", fieldName: "Name", type: "text" },
    { label: "Status", fieldName: "Status" }
];
 

export default class PostRefreshTask extends LightningElement {

    @track picklistOptions = [
        { label: '--None--', value: '--None--' },
        { label: 'ApexClass', value: 'ApexClass' },
        { label: 'CustomLabels', value: 'CustomLabels' }
    ];
 
    @track dtcol = datatablecolumns;
    @track metadatatype;
    @track apexclassesData;
    datatableToggle = false;
    customlabelToggle = false;
    @track CustomlabelsData = [];
    @track selectedValue;
    selectedDataflag=false;
    activeTab = '1';    
 
    handlePicklistChange(event) {
        this.metadatatype = event.target.value;
        if (this.metadatatype == 'ApexClass') {
            MetadataMethod()
                .then(result => {
                    console.log(result);
                    this.apexclassesData = result;
                    //alert('1')
                    //this.datatableFlag = true;
                    this.datatableToggle=true;
                   
                    //this.customlabelsFlag = false;
                })
                .catch(error => {
                    alert('Failed to fetch Apex Classes');
                });
        } else if (this.metadatatype == 'CustomLabels') {
            performQuery()
                .then(response => {
                    console.log(response);
                    this.CustomlabelsData = response;
                    this.datatableToggle=false;
                    this.customlabelToggle=true;
                    this.selectedDataflag=true;
                    activeTab='2'
                    //this.datatableFlag = false;
                })
                .catch(error => {
                    alert('Failed to fetch Custom Labels');
                });
        }
    }
 
    Rows = [];
    selectedrowshandler(event){
        this.Rows = event.detail.selectedRows;
    }
 
    @track selectedapexclassesData;
    add(event){
        if(this.Rows.length>0){
            this.selectedapexclassesData=this.Rows;
            this.selectedDataflag=true;
        }
        this.selectedValue='--None--';
    }
}