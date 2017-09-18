import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { DJJAPIService } from '../../../services/djj.service';
import { ConfirmationService } from 'primeng/primeng';
import { SupplierMapping } from './supplier-mapping';

@Component({
    selector: 'suppliermappings',
    templateUrl: './supplier-mappings.html',
    providers: [ConfirmationService]
})

export class SupplierMappingsComponent implements OnInit {
    selectedAPI = "SupplierMappings";

    form: FormGroup;

    displayDialog: boolean;

    supplierMapping: SupplierMapping = new PrimeSupplierMapping();

    newSupplierMapping: boolean;

    selectedSupplierMapping: SupplierMapping;

    supplierMappings: SupplierMapping[];

    errorMessage: string;
    
    loading: boolean;

    constructor(
        fb: FormBuilder,
        private _router: Router,
        private _service: DJJAPIService,
        private _confirmService: ConfirmationService,
        ){
        this.form = fb.group({
            'EntityID': new FormControl('', Validators.required),
            'ReferenceID': new FormControl('', Validators.required)
        });
    }
    ngOnInit(){
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(
                supplierMappings => { this.supplierMappings = supplierMappings },
                error => { this.errorMessage = <any>error; this.loading = false; },
                () => this.loading = false);
    }
    refreshPage() {
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(
                supplierMappings => { this.supplierMappings = supplierMappings },
                error => { this.errorMessage = <any>error; this.loading = false; },
                () => this.loading = false);
    }
    showDialogToAdd() {
        this.newSupplierMapping = true;
        this.supplierMapping = new PrimeSupplierMapping();
        this.displayDialog = true;
    }
    save(value: string) {
        if (this.newSupplierMapping){
            this._service.putSupplierMappingUrl(this.selectedAPI, this.form.value)
                .subscribe(
                    success => {        
                        this.loading = true;
                        this._service.getUrl(this.selectedAPI)
                            .subscribe(
                                supplierMappings => { this.supplierMappings = supplierMappings },
                                error => { this.errorMessage = <any>error; this.loading = false; },
                                () => this.loading = false);},
                    error => { this.errorMessage = <any>error; this.loading = false; }
                )
        }
        else{
            this.supplierMappings[this.findSelectedSupplierMappingIndex()] = this.supplierMapping;
            this._service.putSupplierMappingUrl(this.selectedAPI, this.form.value)
                .subscribe(
                    success => {        
                        this.loading = true;
                        this._service.getUrl(this.selectedAPI)
                            .subscribe(
                                supplierMappings => { this.supplierMappings = supplierMappings },
                                error => { this.errorMessage = <any>error; this.loading = false; },
                                () => this.loading = false);},
                    error => { this.errorMessage = <any>error; this.loading = false; }
                )
        }
        this.supplierMapping = null;
        this.displayDialog = false;
    }
    delete() {
        this._confirmService.confirm({
            message: 'Are you sure that you want delete this supplier mapping?',
            accept: () => {
                this.supplierMappings.splice(this.findSelectedSupplierMappingIndex(), 1);

                this._service.deleteMappingUrl(this.selectedAPI, this.supplierMapping.EntityID)
                    .subscribe(                    
                        success => {        
                            this.loading = true;
                            this._service.getUrl(this.selectedAPI)
                                .subscribe(
                                    supplierMappings => { this.supplierMappings = supplierMappings },
                                    error => { this.errorMessage = <any>error; this.loading = false; },
                                    () => this.loading = false);},
                    err => {
                        alert("Could not delete the supplier mapping.");
                        this.supplierMappings.splice(this.findSelectedSupplierMappingIndex(), 0, this.supplierMapping);
                    });
                this.supplierMapping = null;    
                this.displayDialog = false;            },
            reject: () => {
                this.supplierMapping = null;    
                this.displayDialog = false;
            }
        });
    }
    onRowSelect(event) {
        this.newSupplierMapping = false;
        this.supplierMapping = this.cloneSupplierMapping(event.data);
        this.displayDialog = true;
    }
    cloneSupplierMapping(s: SupplierMapping): SupplierMapping {
        let supplierMapping = new PrimeSupplierMapping();
        for (let prop in s) {
            supplierMapping[prop] = s[prop];
        }
        return supplierMapping;
    }
    findSelectedSupplierMappingIndex(): number {
        return this.supplierMappings.indexOf(this.selectedSupplierMapping);
    } 
    closeForm(){
        this.form.reset();
    }
    closeError(){
        this.errorMessage = null;
    }
}
class PrimeSupplierMapping implements SupplierMapping {
    constructor(public EntityID?, public ReferenceID?) { }
}