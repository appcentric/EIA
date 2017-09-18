import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, FormBuilder, Validators } from '@angular/forms';
import { DJJAPIService } from '../../../services/djj.service';
import { Shipment } from './shipment';

@Component({
    selector: 'shipments',
    templateUrl: './shipments.html'
})
export class ShipmentsComponent implements OnInit {
    shipments: Shipment[];

    shipmentAck: any[];

    shipmentString: string;

    form: FormGroup;

    errorMessage: string;

    loading: boolean;
    
    ackloading: boolean;

    constructor(
        fb: FormBuilder,
        private _service: DJJAPIService
        ){
        this.form = fb.group({
            'shipmentNumber': new FormControl('', Validators.compose([Validators.required, Validators.minLength(5), Validators.maxLength(7), Validators.pattern('[0-9]+')]))
        });
    }
    ngOnInit(){
        
    }
    submit(shipmentNumber: number) {
        this.loading = true;
        // this.ackloading = true;
        
        this._service.getShipments(shipmentNumber)
            .subscribe(
                shipments => { this.shipments = shipments },
                error => { this.errorMessage = <any>error; this.loading = false; },
                () => this.loading = false);
        
        this._service.getShipmentAcknowledgementUrl(shipmentNumber)
            .subscribe(
                shipmentAck => { this.shipmentAck = shipmentAck; },
                error => { this.errorMessage = <any>error; this.loading = false; },
                () => this.ackloading = false);        
    }
    //Download file as .json 
    // downloadFile(){
    //     var blob = new Blob([JSON.stringify(this.shipments)], { type: 'application/json' });
    //     var url= window.URL.createObjectURL(blob);
    //     window.open(url);
    // }
    closeError(){
        this.errorMessage = null;
        this.form.reset();
    }
}