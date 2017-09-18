import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { DJJAPIService } from '../../services/DJJAPI.service';
import { ConfirmationService } from 'primeng/primeng';
import { ConsumerMapping } from './consumer-mapping';

@Component({
    selector: 'consumermappings',
    templateUrl: './app/administration/consumers/consumer-mappings.component.html',
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

    loading;

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
                consumerMappings => this.consumerMappings = consumerMappings,
                error =>  this.errorMessage = <any>error,
                () => { this.loading = false; });
    }
    refreshPage() {
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(
                consumerMappings =>
                    this.consumerMappings = consumerMappings,
                    null,
                    () => { this.loading = false; });
    }
    showDialogToAdd() {
        this.newConsumerMapping = true;
        this.consumerMapping = new PrimeConsumerMapping();
        this.displayDialog = true;
    }
    save(value: string) {
        var result;

        if (this.newConsumerMapping){
            this.consumerMappings.push(this.consumerMapping);
            result = this._service.addConsumerMappingUrl(this.selectedAPI, this.form.value);
        }
        else{
            this.consumerMappings[this.findSelectedConsumerMappingIndex()] = this.consumerMapping;
            result = this._service.addConsumerMappingUrl(this.selectedAPI, this.form.value);
        }
        result.subscribe(JSON.stringify);
        this.consumerMapping = null;
        this.displayDialog = false;
    }
    delete() {
        this._confirmService.confirm({
            message: 'Are you sure that you want delete this consumer mapping?',
            accept: () => {
                this.consumerMappings.splice(this.findSelectedConsumerMappingIndex(), 1);

                this._service.deleteMappingUrl(this.selectedAPI, this.consumerMapping.EntityID)
                    .subscribe(null,
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
    cancel() {
        this.displayDialog = false;
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
}
class PrimeConsumerMapping implements ConsumerMapping {
    constructor(public EntityID?, public ReferenceID?) { }
}