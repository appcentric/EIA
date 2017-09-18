import { Component, Input, OnInit } from '@angular/core';
import { FormControl, FormGroup, FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { DJJAPIService } from '../../services/DJJAPI.service';
import { AuthService } from '../../services/auth.service';

@Component({
    selector: 'alldocs',
    templateUrl: './all-docs.html',
})
export class AllDocumentsComponent {

    dates: any;

    poTabs: any[];

    poTab: any;

    shipmentTabs: any[];
    
    shipmentTab: any;

    apInvoiceTabs: any[];

    apInvoiceTab: any;

    constructor(private _service: DJJAPIService, private auth: AuthService){ }

    ngOnInit(){     
        this.poTabs = [];
        this.shipmentTabs = [];
        this.apInvoiceTabs = [];
    }
    addPOTab(){
        this.poTab = {header: "Purchase Order"}
        this.poTabs.push(this.poTab);
    }
    addShipmentTab(){
        this.shipmentTab = {header: "Shipment"}
        this.shipmentTabs.push(this.shipmentTab);
    }
    addAPInvoiceTab(){
        this.apInvoiceTab = {header: "AP Invoice"}
        this.apInvoiceTabs.push(this.apInvoiceTab);
    }
}