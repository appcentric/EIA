import { Component, OnInit } from '@angular/core';
import { FormArray, FormBuilder, FormControl, FormGroup, Validators } from '@angular/forms';
import { DJJAPIService } from '../../services/djj.service';
import { AuthService } from '../../services/auth.service';
import { MenuItem, SelectItem } from 'primeng/primeng';
import { Acknowledgement } from './acknowledgement';

@Component({
    selector: 'acknowledgements',
    templateUrl: './acknowledgements.html'
})

export class AcknowledgementsComponent implements OnInit{

    acknowledgements: Acknowledgement[];
    
    selectedAcknowledgement: Acknowledgement;

    acknowledgement: Acknowledgement = new PrimeAcknowledgement();

//Filter dropdown for ClientStatusID
    statusID: SelectItem[];

//Filter dropdown for Acknowledgement StatusID
    ackStatusID: SelectItem[];

//selected filters
    selectedClientStatusID: string;
    selectedAckStatusID: string;
    dateFilter: string;

//acknowledged
    acknowledgedAckStatusID: string;
    acknowledgedStatusID: string;

//Which API endpoint to select from PO, Shipment, Invoices. Default is 1 or PO
    APIendpoint: SelectItem[];
    selectedAPIendpoint: string = '1';

//Show only Acknowledged item switch. Default is set to true
    showAcknowledged: SelectItem[];
    selectedShowAcknowledged: string = 'true';

//Right click menu on selected row of datatable for posting acknowledgement
    form: FormGroup;

    displayDialog: boolean;
    errorMessage: string;
    loading: boolean;

    constructor(
        fb: FormBuilder,
        filterForm: FormBuilder,
        private _service: DJJAPIService,
        public auth: AuthService
        ) {
        this.form = fb.group({
            'APIUserID': new FormControl('', Validators.required),
            'ChangeVersionID': new FormControl('', Validators.required),
            'Comment': new FormControl(''),
            'StatusID': new FormControl('', Validators.required),
            'AcknowledgementStatusID': new FormControl('', Validators.required),
            'DataChangeTypeID': new FormControl('', Validators.required),
            'DataChangeChildTypeID': new FormControl('', Validators.required),
            'DataChangePrimaryID': new FormControl('', Validators.required)
        });
        this.APIendpoint = [];
        this.APIendpoint.push({label:'Purchase Orders', value:'1'});
        this.APIendpoint.push({label:'Shipments', value:'2'});
        // this.APIendpoint.push({label:'AR Invoices', value:'3'});
        this.APIendpoint.push({label:'AP Invoices', value:'4'});

        this.showAcknowledged = [];
        this.showAcknowledged.push({label:'True', value:'true'});
        this.showAcknowledged.push({label:'False', value:'false'});

        this.setDropdownFilters();           
    }
    setDropdownFilters() {
        this.statusID = [];
        this.statusID.push({label: 'Not yet acknowledged', value: 0});
        this.statusID.push({label: 'Success', value: 1});
        this.statusID.push({label: 'Error', value: 2});

        this.ackStatusID = [];
        this.ackStatusID.push({label: 'Requires Acknowledgement', value: 1});
        this.ackStatusID.push({label: 'Awaiting Acknowledgement', value: 2});
        this.ackStatusID.push({label: 'Acknowledged Successfully', value: 3});
        this.ackStatusID.push({label: 'Auto Acknowledgement - Error Max', value: 7});         
    }
    ngOnInit() {
        this.loading = true;
        this._service.getAcknowledgementUrl(this.selectedAPIendpoint, this.selectedShowAcknowledged)
            .subscribe(
                //successfully get and map data to variable
                acknowledgements => { this.acknowledgements = acknowledgements; },
                //error
                error => { this.errorMessage = <any>error; this.loading = false; },
                //completion of request. In this stops loading icon
                () => this.loading = false);
    }
    updateTable(){
        this.loading = true;
        this._service.getAcknowledgementUrl(this.selectedAPIendpoint, this.selectedShowAcknowledged)
            .subscribe(
                acknowledgements => { this.acknowledgements = acknowledgements },
                error => { this.errorMessage = <any>error; this.loading = false; },
                () => this.loading = false);
    }
    resetTable(dt) {
        this.selectedClientStatusID = null;
        this.selectedAckStatusID = null;
        this.dateFilter = null;
        
        this.setDropdownFilters();
        dt.reset();
    }
    onChange() {
        this.loading = true;
        this._service.getAcknowledgementUrl(this.selectedAPIendpoint, this.selectedShowAcknowledged)
            .subscribe(
                acknowledgements => { this.acknowledgements = acknowledgements },
                error => { this.errorMessage = <any>error; this.loading = false; },
                () => this.loading = false);
    }
    modifyAcknowledgement(value: string){
        this.acknowledgements[this.findSelectedAcknowledgementIndex()] = this.form.value;
        this._service.postAcknowledgement(this.form.value)
            .subscribe(
                success => {
                    this.loading = true;
                    this._service.getAcknowledgementUrl(this.selectedAPIendpoint, this.selectedShowAcknowledged)
                    .subscribe(
                        acknowledgements => { this.acknowledgements = acknowledgements },
                        error => { this.errorMessage = <any>error; this.loading = false; },
                        () => this.loading = false);},
                error => { this.errorMessage = <any>error; this.loading = false; }
            )
        this.form.reset();
        this.displayDialog = false;
    }
    onRowSelect(event){
        this.acknowledgement = this.cloneAcknowledgement(event.data);

        if (this.acknowledgement.ClientStatusID === 0) {
            this.acknowledgement.ClientStatusID = "Not yet acknowledged"
        }
        if (this.acknowledgement.ClientStatusID === 1) {
            this.acknowledgement.ClientStatusID = "Success"
        }
        if (this.acknowledgement.ClientStatusID === 2) {
            this.acknowledgement.ClientStatusID = "Error"
        }

        if (this.acknowledgement.AcknowledgementStatusID === 1) {
            this.acknowledgement.AcknowledgementStatusID = "Requires Acknowledgement"
        }
        if (this.acknowledgement.AcknowledgementStatusID === 2) {
            this.acknowledgement.AcknowledgementStatusID = "Awaiting Acknowledgement"
        }
        if (this.acknowledgement.AcknowledgementStatusID === 3) {
            this.acknowledgement.AcknowledgementStatusID = "Acknowledged Successfully"
        }
        if (this.acknowledgement.AcknowledgementStatusID === 7) {
            this.acknowledgement.AcknowledgementStatusID = "Auto Acknowledgement - Error Max"
        }

        this.displayDialog = true;
    }
    cloneAcknowledgement(a: Acknowledgement): Acknowledgement {
        let acknowledgement = new PrimeAcknowledgement();
        for (let prop in a) {
            acknowledgement[prop] = a[prop];
        }
        return acknowledgement;
    }
    findSelectedAcknowledgementIndex(): number {
        return this.acknowledgements.indexOf(this.selectedAcknowledgement);
    }
    closeForm(){
        this.form.reset();
    }
    closeError(){
        this.errorMessage = null;
    }
}
class PrimeAcknowledgement implements Acknowledgement {
    constructor(
        public DataChangeID?, 
        public APIUserID?, 
        public BizType?, 
        public DataChangePrimaryID?, 
        public ChangeVersionID?, 
        public DataChangeTypeID?,
        public DataChangeTypeName?,
        public DataChangeChildTypeID?,
        public APICallBatchID?,
        public AcknowledgementStatusID?,
        public AcknowledgementStatusName?,
        public AcknowledgementStatusDesc?,
        public AcknowledgedDate?,
        public ClientStatusID?, 
        public ErrorCount?,
        public ClientComment?,
        public ApplicationID?,
    ) { }
}