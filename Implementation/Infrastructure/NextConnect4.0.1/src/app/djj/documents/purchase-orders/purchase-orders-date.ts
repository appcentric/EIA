import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, FormBuilder, Validators } from '@angular/forms';
import { DJJAPIService } from '../../../services/djj.service';
import { AuthService } from '../../../services/auth.service';

import { SelectItem } from 'primeng/primeng';

@Component({
    selector: 'purchaseordersbydate',
    templateUrl: './purchase-orders-date.html'
})

export class PurchaseOrdersByDateComponent implements OnInit {

    purchaseOrders: any[]; 

    purchaseOrderAck: any[];

    form: FormGroup;

    fromDate: Date;

    toDate: Date;

    minDate: Date;

    maxDate: Date;

    effectiveDateFilter: string;
    
    expirationDateFilter: string;

    lastUpdatedDateFilter: string;

    errorMessage: string;

    weights: SelectItem[];
    modeCodes: SelectItem[];

    selectedWeight: string[] = ['LBS'];

    loading: boolean;
    
    ackloading: boolean;

    constructor(
        fb: FormBuilder,
        private _service: DJJAPIService,
        public auth: AuthService
        ){
        this.form = fb.group({
            'fromDate': new FormControl('', Validators.required),
            'toDate': new FormControl('', Validators.required)
        });
        this.weights = [];
        this.weights.push({label: 'LBS', value: 'LBS'});
        this.weights.push({label: 'GT', value: 'GT'});
    }
    ngOnInit(){
        let today = new Date();
        let month = today.getMonth();
        let year = today.getFullYear();
        let prevMonth = (month === 0) ? 11 : month -2;
        let prevYear = (prevMonth === 11) ? year - 1 : year;
        let nextMonth = (month === 11) ? 0 : month;
        let nextYear = (nextMonth === 0) ? year + 1 : year;
        this.minDate = new Date();
        this.minDate.setMonth(prevMonth);
        this.minDate.setFullYear(prevYear);
        this.maxDate = new Date();
        this.maxDate.setMonth(nextMonth);
        this.maxDate.setFullYear(nextYear);
    }
    submit(fromDate, toDate) {
        this.loading = true;
        // this.ackloading = true;

        this._service.getPurchaseOrdersByDate(this.fromDate, this.toDate)
            .subscribe(
                purchaseOrders => { this.purchaseOrders = purchaseOrders.POHeader; },
                error => { this.errorMessage = <any>error; this.loading = false; },
                () => this.loading = false);
    
        // this._service.getPOAcknowledgementUrl(PONumber)
        //     .subscribe(
        //         purchaseOrderAck => { this.purchaseOrderAck = purchaseOrderAck; },
        //         error => { this.errorMessage = <any>error; this.loading = false; },
        //         () => this.ackloading = false);
    }
    resetTable(dt){
        this.effectiveDateFilter = null;
        this.expirationDateFilter = null;
        this.lastUpdatedDateFilter = null;
        dt.reset();
    }
    closeError(){
        this.errorMessage = null;
        this.form.reset();
    }
}