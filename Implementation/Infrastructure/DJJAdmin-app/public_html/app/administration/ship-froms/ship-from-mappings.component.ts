import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { DJJAPIService } from '../../services/DJJAPI.service';
import { ConfirmationService } from 'primeng/primeng';
import { ShipFromMapping } from './ship-from-mapping';

@Component({
    selector: 'shipfrommappings',
    templateUrl: './app/administration/ship-froms/ship-from-mappings.component.html',
    providers: [ConfirmationService]
})

export class ShipFromMappingsComponent implements OnInit {
    selectedAPI = "ShipFromMappings";

    form: FormGroup;

    displayDialog: boolean;

    shipFromMapping: ShipFromMapping = new PrimeShipFromMapping();

    newShipFromMapping: boolean;

    selectedShipFromMapping: ShipFromMapping;

    shipFromMappings: ShipFromMapping[];

    loading;

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
                shipFromMappings => 
                    this.shipFromMappings = shipFromMappings,
                    response => {
                        if (response.status == 204) {
                            window.alert('This contains no data')
                        }
                    () => { this.loading = false; }
            });
    }
    refreshPage() {
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(
                shipFromMappings => 
                    this.shipFromMappings = shipFromMappings,
                    null,
                    () => { this.loading = false; });
    }
    showDialogToAdd() {
        this.newShipFromMapping = true;
        this.shipFromMapping = new PrimeShipFromMapping();
        this.displayDialog = true;
    }
    save(value: string) {
        var result;

        if (this.newShipFromMapping){
            this.shipFromMappings.push(this.shipFromMapping);
            result = this._service.addShipFromMappingUrl(this.selectedAPI, this.form.value);
        }  
        else {
            this.shipFromMappings[this.findSelectedShipFromMappingIndex()] = this.shipFromMapping;
            result = this._service.addShipFromMappingUrl(this.selectedAPI, this.form.value);
        }
        result.subscribe(JSON.stringify);
        this.shipFromMapping = null;
        this.displayDialog = false;
    }
    delete() {
        this._confirmService.confirm({
            message: 'Are you sure that you want delete this ship from mapping?',
            accept: () => {
                this.shipFromMappings.splice(this.findSelectedShipFromMappingIndex(), 1);

                this._service.deleteMappingUrl(this.selectedAPI, this.shipFromMapping.EntityID)
                    .subscribe(null,
                    err => {
                        alert("Could not delete the ship from mapping.");
                        this.shipFromMappings.splice(this.findSelectedShipFromMappingIndex(), 0, this.shipFromMapping);
                    });
                this.shipFromMapping = null;
                this.displayDialog = false;
            },
            reject: () => {
                this.shipFromMapping = null;
                this.displayDialog = false;
            }
        });
    }
    cancel() {
        this.displayDialog = false;
    }
    onRowSelect(event) {
        this.newShipFromMapping = false;
        this.shipFromMapping = this.cloneShipFromMapping(event.data);
        this.displayDialog = true;
    }
    cloneShipFromMapping(s: ShipFromMapping): ShipFromMapping {
        let shipFromMapping = new PrimeShipFromMapping();
        for (let prop in s) {
            shipFromMapping[prop] = s[prop];
        }
        return shipFromMapping;
    }
    findSelectedShipFromMappingIndex(): number {
        return this.shipFromMappings.indexOf(this.selectedShipFromMapping);
    }
    routerCanDeactivate() {
        if (this.form.dirty)
            return confirm('You have unsaved changes. Are you sure you want to navigate away?');

        return true;
    }
}
class PrimeShipFromMapping implements ShipFromMapping {
    constructor(public EntityID?, public ReferenceID?) { }
}