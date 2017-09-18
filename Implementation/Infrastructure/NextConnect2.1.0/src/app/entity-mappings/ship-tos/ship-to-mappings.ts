import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { DJJAPIService } from '../../services/DJJAPI.service';
import { ConfirmationService } from 'primeng/primeng';
import { ShipToMapping } from './ship-to-mapping';

@Component({
    selector: 'shiptomappings',
    templateUrl: './ship-to-mappings.html',
    providers: [ConfirmationService]
})

export class ShipToMappingsComponent implements OnInit {
    selectedAPI = "ShipToMappings"

    form: FormGroup;

    displayDialog: boolean;

    shipToMapping: ShipToMapping = new PrimeShipToMapping();

    newShipToMapping: boolean;

    selectedShipToMapping: ShipToMapping;

    shipToMappings: ShipToMapping[];

    errorMessage: string;

    loading: boolean;

    constructor(
        fb: FormBuilder,
        private _router: Router,
        private _service: DJJAPIService,
        private _confirmService: ConfirmationService
    ) {
        this.form = fb.group({
            'EntityID': new FormControl('', Validators.required),
            'ReferenceID': new FormControl('', Validators.required)
        });
    }
    ngOnInit() {
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(
                shipToMappings => { this.shipToMappings = shipToMappings },
                error => { this.errorMessage = <any>error; this.loading = false; },
                () => this.loading = false);

    }
    refreshPage() {
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(
                shipToMappings => { this.shipToMappings = shipToMappings },
                error => { this.errorMessage = <any>error; this.loading = false; },
                () => this.loading = false);
    }
    showDialogToAdd() {
        this.newShipToMapping = true;
        this.shipToMapping = new PrimeShipToMapping();
        this.displayDialog = true;
    }
    save(value: string) {
        if (this.newShipToMapping){
            this._service.putShipToMappingUrl(this.selectedAPI, this.form.value)
                .subscribe(
                    success => {
                        this.loading = true;
                        this._service.getUrl(this.selectedAPI)
                            .subscribe(
                                shipToMappings => { this.shipToMappings = shipToMappings },
                                error => { this.errorMessage = <any>error; this.loading = false; },
                                () => this.loading = false);},
                    error => { this.errorMessage = <any>error; this.loading = false; }
                )
        }
        else {
            this.shipToMappings[this.findSelectedShipToMappingIndex()] = this.shipToMapping;
            this._service.putShipToMappingUrl(this.selectedAPI, this.form.value)
                .subscribe(
                    success => {
                        this.loading = true;
                        this._service.getUrl(this.selectedAPI)
                            .subscribe(
                                shipToMappings => { this.shipToMappings = shipToMappings },
                                error => { this.errorMessage = <any>error; this.loading = false; },
                                () => this.loading = false);},
                    error => { this.errorMessage = <any>error; this.loading = false; }
                )
        }
        this.shipToMapping = null;
        this.displayDialog = false;
    }
    delete() {
        this._confirmService.confirm({
            message: 'Are you sure that you want delete this ship to mapping?',
            accept: () => {
                this.shipToMappings.splice(this.findSelectedShipToMappingIndex(), 1);

                this._service.deleteMappingUrl(this.selectedAPI, this.shipToMapping.EntityID)
                    .subscribe(
                        success => {
                            this.loading = true;
                            this._service.getUrl(this.selectedAPI)
                                .subscribe(
                                    shipToMappings => { this.shipToMappings = shipToMappings },
                                    error => { this.errorMessage = <any>error; this.loading = false; },
                                    () => this.loading = false);},
                        err => {
                            alert("Could not delete this ship to mapping.");
                            this.shipToMappings.splice(this.findSelectedShipToMappingIndex(), 0, this.shipToMapping);
                        });
                this.shipToMapping = null;
                this.displayDialog = false;
            },
            reject: () => {
                this.shipToMapping = null;
                this.displayDialog = false;
            }
        });
    }
    onRowSelect(event) {
        this.newShipToMapping = false;
        this.shipToMapping = this.cloneShipToMapping(event.data);
        this.displayDialog = true;
    }
    cloneShipToMapping(s: ShipToMapping): ShipToMapping {
        let shipToMapping = new PrimeShipToMapping();
        for (let prop in s) {
            shipToMapping[prop] = s[prop];
        }
        return shipToMapping;
    }
    findSelectedShipToMappingIndex(): number {
        return this.shipToMappings.indexOf(this.selectedShipToMapping);
    }
    closeForm(){
        this.form.reset();
    }
    closeError(){
        this.errorMessage = null;
    }
}
class PrimeShipToMapping implements ShipToMapping {

    constructor(public EntityID?, public ReferenceID?) { }
}