import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { DJJAPIService } from '../../services/DJJAPI.service';
import { ConfirmationService } from 'primeng/primeng';
import { FreightVendorMapping } from './freight-vendor-mapping';

@Component({
    selector: 'freightvendormappings',
    templateUrl: './freight-vendor-mappings.html',
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

    errorMessage: string;

    loading: boolean;

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
                freightVendorMappings => { this.freightVendorMappings = freightVendorMappings },
                error => { this.errorMessage = <any>error; this.loading = false; },
                () => this.loading = false);
    }
    refreshPage () {
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(
                freightVendorMappings => { this.freightVendorMappings = freightVendorMappings },
                error => { this.errorMessage = <any>error; this.loading = false; },
                () => this.loading = false);
    }
    showDialogToAdd() {
        this.newFreightVendorMapping = true;
        this.freightVendorMapping = new PrimeFreightVendorMapping();
        this.displayDialog = true;
    }
    save(value: string) {
        if (this.newFreightVendorMapping) {
            this._service.putFreightVendorMappingUrl(this.selectedAPI, this.form.value)
                .subscribe(
                    success => {
                        this.loading = true;
                            this._service.getUrl(this.selectedAPI)
                            .subscribe(
                                freightVendorMappings => { this.freightVendorMappings = freightVendorMappings },
                                error => { this.errorMessage = <any>error; this.loading = false; },
                                () => this.loading = false);},
                    error => { this.errorMessage = <any>error; this.loading = false; }
                )
        } 
        else{
            this.freightVendorMappings[this.findSelectedFreightVendorMappingIndex()] = this.freightVendorMapping;
            this._service.putFreightVendorMappingUrl(this.selectedAPI, this.form.value)
                .subscribe(
                    success => {
                        this.loading = true;
                        this._service.getUrl(this.selectedAPI)
                            .subscribe(
                                freightVendorMappings => { this.freightVendorMappings = freightVendorMappings },
                                error => { this.errorMessage = <any>error; this.loading = false; },
                                () => this.loading = false);},
                    error => { this.errorMessage = <any>error; this.loading = false; }
                )
        }
        this.freightVendorMapping = null;
        this.displayDialog = false;
    }
    delete() {
        this._confirmService.confirm({
            message: 'Are you sure that you want delete this freight vendor mapping?',
            accept: () => {
                this.freightVendorMappings.splice(this.findSelectedFreightVendorMappingIndex(), 1); 

                 this._service.deleteMappingUrl(this.selectedAPI, this.freightVendorMapping.EntityID)
                    .subscribe(
                        success => {
                            this.loading = true;
                            this._service.getUrl(this.selectedAPI)
                            .subscribe(
                                freightVendorMappings => { this.freightVendorMappings = freightVendorMappings },
                                error => { this.errorMessage = <any>error; this.loading = false; },
                                () => this.loading = false);},
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
    closeForm(){
        this.form.reset();
    }
    closeError(){
        this.errorMessage = null;
    }
}
class PrimeFreightVendorMapping implements FreightVendorMapping {
    constructor(public EntityID?, public ReferenceID?) { }
}