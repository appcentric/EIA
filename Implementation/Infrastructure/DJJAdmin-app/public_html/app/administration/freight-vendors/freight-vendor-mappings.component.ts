import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { DJJAPIService } from '../../services/DJJAPI.service';
import { ConfirmationService } from 'primeng/primeng';
import { FreightVendorMapping } from './freight-vendor-mapping';

@Component({
    selector: 'freightvendormappings',
    templateUrl: './app/administration/freight-vendors/freight-vendor-mappings.component.html',
    providers: [ConfirmationService]
})

export class FreightVendorMappingsComponent implements OnInit {
    selectedAPI = "FreightVendorMappings"

    form: FormGroup;

    displayDialog: boolean;

    freightVendorMapping: FreightVendorMapping = new PrimeFreightVendorMapping();

    newFreightVendorMapping: boolean;

    selectedFreightVendorMapping: FreightVendorMapping;

    freightVendorMappings: FreightVendorMapping[];

    loading;

    constructor(
        fb:FormBuilder, 
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
                freightVendorMappings => 
                this.freightVendorMappings = freightVendorMappings,
                null,
                () => { this.loading = false; });
    }
    refreshPage () {
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(
                freightVendorMappings => this.freightVendorMappings = freightVendorMappings,
                null,
                () => { this.loading = false; });
    }
    showDialogToAdd() {
        this.newFreightVendorMapping = true;
        this.freightVendorMapping = new PrimeFreightVendorMapping();
        this.displayDialog = true;
    }
    save(value: string) {
        var result;

        if (this.newFreightVendorMapping) {
            this.freightVendorMappings.push(this.freightVendorMapping);
            result = this._service.addFreightVendorMappingUrl(this.selectedAPI, JSON.stringify(this.form.value));
        } 
        else {
            this.freightVendorMappings[this.findSelectedFreightVendorMappingIndex()] = this.freightVendorMapping;
            result = this._service.addFreightVendorMappingUrl(this.selectedAPI, JSON.stringify(this.form.value));
        }
        result.subscribe(JSON.stringify);
        this.freightVendorMapping = null;
        this.displayDialog = false;
    }
    delete() {
        this._confirmService.confirm({
            message: 'Are you sure that you want delete this freight vendor mapping?',
            accept: () => {
                this.freightVendorMappings.splice(this.findSelectedFreightVendorMappingIndex(), 1); 

                 this._service.deleteMappingUrl(this.selectedAPI, this.freightVendorMapping.EntityID)
                    .subscribe(null,
                    err => {
                      alert("Could not delete the freight vendor mapping.");
                      this.freightVendorMappings.splice(this.findSelectedFreightVendorMappingIndex(), 0, this.freightVendorMapping);
                    });
                this.freightVendorMapping = null;
                this.displayDialog = false;
            },
            reject: () => {
                this.freightVendorMapping = null;
                this.displayDialog = false;
            }
        });
    }
    cancel() {
        this.displayDialog = false;
    }
    onRowSelect(event) {
        this.newFreightVendorMapping = false;
        this.freightVendorMapping = this.cloneFreightVendorMapping(event.data);
        this.displayDialog = true;
    }
    cloneFreightVendorMapping(f: FreightVendorMapping): FreightVendorMapping {
        let freightVendorMapping = new PrimeFreightVendorMapping();
        for (let prop in f) {
            freightVendorMapping[prop] = f[prop];
        }
        return freightVendorMapping;
    }
    findSelectedFreightVendorMappingIndex(): number {
        return this.freightVendorMappings.indexOf(this.selectedFreightVendorMapping);
    }    
}
class PrimeFreightVendorMapping implements FreightVendorMapping {
    constructor(public EntityID?, public ReferenceID?) { }
}