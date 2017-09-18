import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, FormBuilder, Validators } from '@angular/forms';
import { DJJAPIService } from '../../../services/djj.service';
import { AuthService } from '../../../services/auth.service';
import { Shipment } from './shipment';

import { SelectItem } from 'primeng/primeng';

@Component({
    selector: 'shipmentsbydate',
    templateUrl: './shipments-date.html'
})

export class ShipmentsByDateComponent implements OnInit {

    shipments: Shipment[];

    shipmentAck: any[];

    form: FormGroup;

    fromDate: Date;

    toDate: Date;

    minDate: Date;

    maxDate: Date;

    dateShippedDateFilter: string;

    lastUpdatedDateFilter: string;

    errorMessage: string;

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
        
        this._service.getShipmentsByDate(this.fromDate, this.toDate)
            .subscribe(
                shipments => { this.shipments = shipments },
                error => { this.errorMessage = <any>error; this.loading = false; },
                () => this.loading = false);

        // .subscribe(
        //     shipments => { this.shipments = shipments },
        //     error => { this.errorMessage = <any>error; this.loading = false; },
        //     () => this.loading = false);

        // this._service.getShipmentAcknowledgementUrl(shipmentNumber)
        //     .subscribe(
        //         shipmentAck => { this.shipmentAck = shipmentAck; },
        //         error => { this.errorMessage = <any>error; this.loading = false; },
        //         () => this.ackloading = false);        
    }
    resetTable(dt){
        this.dateShippedDateFilter = null;
        this.lastUpdatedDateFilter = null;
        dt.reset();
    }
    closeError(){
        this.errorMessage = null;
        this.form.reset();
    }
}