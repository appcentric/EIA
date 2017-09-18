import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, FormBuilder, Validators } from '@angular/forms';
import { DJJAPIService } from '../../services/DJJAPI.service';

@Component({
    selector: 'shipments',
    templateUrl: './app/consumers/shipments/shipments.component.html'
})
export class ShipmentsComponent implements OnInit {
    shipments: any[];

    form: FormGroup;

    warning = true;

    loading;
    
    constructor(
        fb: FormBuilder,
        private _service: DJJAPIService
        ){
        this.form = fb.group({
            'shipmentNumber': new FormControl('', Validators.compose([Validators.required, Validators.minLength(5), Validators.maxLength(7)]))
        });
    }

    ngOnInit(){

    }
    submit(shipmentNumber: number) {
        this.loading = true;

        this._service.getShipments(shipmentNumber)
            .subscribe(shipments => 
                this.shipments = shipments.PurchaseShipmentHeaders,
                null,
                () => { this.loading = false; });
    }
    closeWarning(){
        this.warning = false;
    }
}