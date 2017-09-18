import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, FormBuilder, Validators } from '@angular/forms';
import { DJJAPIService } from '../../../services/djj.service';

import { PurchaseOrder } from './purchase-order';
import { SelectItem } from 'primeng/primeng';

@Component({
    selector: 'purchaseorders',
    templateUrl: './purchase-orders.html'
})

export class PurchaseOrdersComponent implements OnInit {

    purchaseOrders: any[]; 

    purchaseOrderAck: any[];

    form: FormGroup;

    errorMessage: string;

    weights: SelectItem[];
    modeCodes: SelectItem[];

    selectedWeight: string[] = ['LBS'];

    loading: boolean;
    
    ackloading: boolean;

    constructor(
        fb: FormBuilder,
        private _service: DJJAPIService
        ){
        this.weights = [];
        this.weights.push({label: 'LBS', value: 'LBS'});
        this.weights.push({label: 'GT', value: 'GT'});

        this.form = fb.group({
            'PONumber': new FormControl('', Validators.compose([Validators.required, Validators.minLength(5), Validators.maxLength(7), Validators.pattern('[0-9]+')]))
        });
    }
    ngOnInit(){
    }
    submit(PONumber: number) {
        this.loading = true;
        // this.ackloading = true;

        this._service.getPurchaseOrders(PONumber)
            .subscribe(
                purchaseOrders => { this.purchaseOrders = purchaseOrders.POHeader; },
                error => { this.errorMessage = <any>error; this.loading = false; },
                () => this.loading = false);
    
        this._service.getPOAcknowledgementUrl(PONumber)
            .subscribe(
                purchaseOrderAck => { this.purchaseOrderAck = purchaseOrderAck; },
                error => { this.errorMessage = <any>error; this.loading = false; },
                () => this.ackloading = false);
    }
    //Download file as .json 
    // downloadFile(){
    //     var blob = new Blob([JSON.stringify(this.POs)], { type: 'application/json' });
    //     var url= window.URL.createObjectURL(blob);
    //     window.open(url);
    // }
    closeError(){
        this.errorMessage = null;
        this.form.reset();
    }
}