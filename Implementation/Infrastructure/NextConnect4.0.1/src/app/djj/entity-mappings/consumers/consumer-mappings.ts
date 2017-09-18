import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormControl, FormGroup, FormsModule, ReactiveFormsModule, Validators } from '@angular/forms'
import { Router } from '@angular/router';
import { DJJAPIService } from '../../../services/djj.service';

import { ConfirmationService } from 'primeng/primeng';
import { ConsumerMapping } from './consumer-mapping';

@Component({
    selector: 'consumermappings',
    templateUrl: './consumer-mappings.html',
    providers: [ConfirmationService]
})

export class ConsumerMappingsComponent implements OnInit {
    selectedAPI = "ConsumerMappings";

    form: FormGroup;

    displayDialog: boolean;

    consumerMapping: ConsumerMapping = new PrimeConsumerMapping();

    newConsumerMapping: boolean;

    selectedConsumerMapping: ConsumerMapping;

    consumerMappings: ConsumerMapping[];

    errorMessage: string;

    loading: boolean;

    constructor(
        fb: FormBuilder,
        private _router: Router,
        private _service: DJJAPIService,
        private _confirmService: ConfirmationService
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
                consumerMappings => { this.consumerMappings = consumerMappings },
                error => { this.errorMessage = <any>error; this.loading = false; },
                () => this.loading = false);
    }
    refreshPage() {
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(
                consumerMappings => { this.consumerMappings = consumerMappings },
                error => { this.errorMessage = <any>error; this.loading = false; },
                () => this.loading = false);
    }
    showDialogToAdd() {
        this.newConsumerMapping = true;
        this.consumerMapping = new PrimeConsumerMapping();
        this.displayDialog = true;
    }
    save(value: string) {
        if (this.newConsumerMapping){
            this._service.putConsumerMappingUrl(this.selectedAPI, this.form.value)
                .subscribe(
                    success => {
                        this.loading = true;
                        this._service.getUrl(this.selectedAPI)
                        .subscribe(
                            consumerMappings => { this.consumerMappings = consumerMappings },
                            error => { this.errorMessage = <any>error; this.loading = false; },
                            () => this.loading = false);},
                    error => { this.errorMessage = <any>error; this.loading = false; }
                )
        }
        else{
            this.consumerMappings[this.findSelectedConsumerMappingIndex()] = this.form.value;
            this._service.putConsumerMappingUrl(this.selectedAPI, this.form.value)
                .subscribe(
                    success => {
                        this.loading = true;
                        this._service.getUrl(this.selectedAPI)
                        .subscribe(
                            consumerMappings => { this.consumerMappings = consumerMappings },
                            error => { this.errorMessage = <any>error; this.loading = false; },
                            () => this.loading = false);},
                    error => { this.errorMessage = <any>error; this.loading = false; }
                )
        }
        this.consumerMapping = null;
        this.displayDialog = false;
    }
    delete() {
        this._confirmService.confirm({
            message: 'Are you sure that you want delete this consumer mapping?',
            accept: () => {
                this.consumerMappings.splice(this.findSelectedConsumerMappingIndex(), 1);

                this._service.deleteMappingUrl(this.selectedAPI, this.consumerMapping.EntityID)
                    .subscribe(
                        success => {
                            this.loading = true;
                            this._service.getUrl(this.selectedAPI)
                            .subscribe(
                                consumerMappings => { this.consumerMappings = consumerMappings },
                                error => { this.errorMessage = <any>error; this.loading = false; },
                                () => this.loading = false);},
                        err => {
                            alert("Could not delete the consumer mapping.");
                            this.consumerMappings.splice(this.findSelectedConsumerMappingIndex(), 0, this.consumerMapping);
                    });
                this.consumerMapping = null;
                this.displayDialog = false;
            },
            reject: () => {
                this.consumerMapping = null;
                this.displayDialog = false;
            }
        });
    }
    onRowSelect(event) {
        this.newConsumerMapping = false;
        this.consumerMapping = this.cloneConsumerMapping(event.data);
        this.displayDialog = true;
    }
    cloneConsumerMapping(s: ConsumerMapping): ConsumerMapping {
        let consumerMapping = new PrimeConsumerMapping();
        for (let prop in s) {
            consumerMapping[prop] = s[prop];
        }
        return consumerMapping;
    }
    findSelectedConsumerMappingIndex(): number {
        return this.consumerMappings.indexOf(this.selectedConsumerMapping);
    }
    closeForm(){
        this.form.reset();
    }
    closeError(){
        this.errorMessage = null;
    }
}
class PrimeConsumerMapping implements ConsumerMapping {
    constructor(public EntityID?, public ReferenceID?) { }
}