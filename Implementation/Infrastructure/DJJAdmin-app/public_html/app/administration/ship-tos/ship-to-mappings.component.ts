import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { DJJAPIService } from '../../services/DJJAPI.service';
import { ConfirmationService } from 'primeng/primeng';
import { ShipToMapping } from './ship-to-mapping';

@Component({
    selector: 'shiptomappings',
    templateUrl: './app/administration/ship-tos/ship-to-mappings.component.html',
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
                shipToMappings =>
                    this.shipToMappings = shipToMappings,
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
                shipToMappings =>
                    this.shipToMappings = shipToMappings,
                    null,
                    () => { this.loading = false; });
    }
    showDialogToAdd() {
        this.newShipToMapping = true;
        this.shipToMapping = new PrimeShipToMapping();
        this.displayDialog = true;
    }
    save(value: string) {
        var result;

        if (this.newShipToMapping){
            this.shipToMappings.push(this.shipToMapping);
            result = this._service.addShipToMappingUrl(this.selectedAPI, this.form.value);
        }
        else {
            this.shipToMappings[this.findSelectedShipToMappingIndex()] = this.shipToMapping;
            result = this._service.addShipToMappingUrl(this.selectedAPI, this.form.value);
        }
        result.subscribe(JSON.stringify);
        this.shipToMapping = null;
        this.displayDialog = false;
    }
    delete() {
        this._confirmService.confirm({
            message: 'Are you sure that you want delete this ship to mapping?',
            accept: () => {
                this.shipToMappings.splice(this.findSelectedShipToMappingIndex(), 1);

                this._service.deleteMappingUrl(this.selectedAPI, this.shipToMapping.EntityID)
                    .subscribe(null,
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
    cancel() {
        this.displayDialog = false;
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
    routerCanDeactivate() {
        if (this.form.dirty)
            return confirm('You have unsaved changes. Are you sure you want to navigate away?');

        return true;
    }
}
class PrimeShipToMapping implements ShipToMapping {

    constructor(public EntityID?, public ReferenceID?) { }
}