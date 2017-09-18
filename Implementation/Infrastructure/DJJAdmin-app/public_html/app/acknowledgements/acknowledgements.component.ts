import { Component, OnInit } from '@angular/core';
import { SelectItem } from 'primeng/primeng';
import { DJJAPIService } from '../services/DJJAPI.service';
import { Acknowledgement } from './acknowledgement';

@Component({
    selector: 'acknowledgements',
    templateUrl: './app/acknowledgements/acknowledgements.component.html'
})

export class AcknowledgementsComponent implements OnInit{

    acknowledgements: Acknowledgement[];
    
    selectedAcknowledgement: Acknowledgement;
    
    APIendpoint: SelectItem[];

    selectedAPIendpoint: string = '1';

    showAcknowledged: SelectItem[];

    selectedShowAcknowledged: string = 'true';

    loading;

    displayDialog: boolean;

    constructor(private _service: DJJAPIService) {
        this.APIendpoint = [];
        this.APIendpoint.push({label:'Purchase Orders', value:'1'});
        this.APIendpoint.push({label:'Shipments', value:'2'});
        // this.APIendpoint.push({label:'AR Invoices', value:'3'});
        this.APIendpoint.push({label:'AP Invoices', value:'4'});

        this.showAcknowledged = [];
        this.showAcknowledged.push({label:'True', value:'true'});
        this.showAcknowledged.push({label:'False', value:'false'});        
    }
    ngOnInit() {
        this.loading = true;
        this._service.getAcknowledgementUrl(this.selectedAPIendpoint, this.selectedShowAcknowledged)
            .subscribe(
                acknowledgements =>  
                    this.acknowledgements = acknowledgements,
                    null,
                    () => { this.loading = false; });
    }
    refreshPage(){
        this.loading = true;
        this._service.getAcknowledgementUrl(this.selectedAPIendpoint, this.selectedShowAcknowledged)
            .subscribe(
                acknowledgements =>  
                    this.acknowledgements = acknowledgements,
                    null,
                    () => { this.loading = false; });
    }
    onChange() {
        this.loading = true;
        this._service.getAcknowledgementUrl(this.selectedAPIendpoint, this.selectedShowAcknowledged)
            .subscribe(
                acknowledgements =>  
                    this.acknowledgements = acknowledgements,
                    null,
                    () => { this.loading = false; });
    }
    // showAcknowledgement(acknowledgement: Acknowledgement) {
    //     this.selectedAcknowledgement = acknowledgement;
    //     this.displayDialog = true;
    // }
}