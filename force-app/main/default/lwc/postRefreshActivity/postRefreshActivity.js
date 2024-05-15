import { LightningElement, track } from 'lwc';
import MetadataMethod from '@salesforce/apex/MetadataClass.MetadataMethod';
import getCustomLabelsList from '@salesforce/apex/MetadataClass.getCustomLabelsList';

const datatableColumns = [
    { label: 'ApexClassName', fieldName: 'Name', type: 'text' },
    { label: 'Status', fieldName: 'Status' }
];

export default class postRefreshActivity extends LightningElement {

    @track picklistOptions = [
        
        { label: '--None--', value: '--None--' },
        { label: 'ApexClass', value: 'ApexClass' },
        { label: 'CustomLabels', value: 'CustomLabels' }
    ];

    @track dtCol = datatableColumns;
    @track labelColumns = customLabels;
    @track metadataType;
    @track apexClassesData;
    datatableToggle = false;
    customLabelToggle = false;
    @track customLabelsData = [];
    @track selectedValue;
    selectedDataFlag = false;
    activeTab = '1';

    handlePicklistChange(event) {
        this.metadataType = event.target.value;
        if (this.metadataType === 'ApexClass') {
            MetadataMethod()
                .then(result => {
                    console.log(result);
                    this.apexClassesData = result;
                    this.datatableToggle = true;
                })
                .catch(error => {
                    this.showToast('Error', 'Failed to fetch Apex Classes', 'error');
                });
        } else if (this.metadataType === 'CustomLabels') {
            getCustomLabelsList()
                .then(response => {
                    console.log(response);
                    
                })
                .catch(error => {
                    console.log('Error', 'Failed to fetch Custom Labels', 'error');
                });
        }
    }

    rows = [];
    selectedRowsHandler(event) {
        this.rows = event.detail.selectedRows;
    }

    @track selectedApexClassesData;
    add(event) {
        if (this.rows.length > 0) {
            this.selectedApexClassesData = this.rows;
            this.selectedDataFlag = true;
        }
        this.selectedValue = '--None--';
    }
}