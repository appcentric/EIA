import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { SelectItem } from 'primeng/primeng';
import { DJJAPIService } from '../../services/DJJAPI.service';
import { ConfirmationService } from 'primeng/primeng';
import { ItemMapping } from './item-mapping';

@Component({
    selector: 'itemmappings',
    templateUrl: './item-mappings.html',
    providers: [ConfirmationService]
})

export class ItemMappingsComponent implements OnInit {
    selectedAPI = "ItemMappings";

    form: FormGroup;

    displayDialog: boolean;

    itemMapping: ItemMapping = new PrimeItemMapping();

    newItemMapping: boolean;

    selectedItemMapping: ItemMapping;

    itemMappings: ItemMapping[];

    AddressBookNums: SelectItem[];

    selectedAddressBookNum: string;

    errorMessage: string;

    inputSwitchSendData: boolean;

    loading: boolean;

    constructor(
        fb: FormBuilder,
        private _router: Router,
        private _service: DJJAPIService,
        private _confirmService: ConfirmationService
    ){
        this.form = fb.group({
            'ItemMasterID': new FormControl('', Validators.required),
            'ItemReferenceID': new FormControl('', Validators.required),
            'ItemName': new FormControl(''),
            'ItemLongName': new FormControl(''),
            'PackageCode': new FormControl(''),
            'PackageDescr': new FormControl(''),
            'ItemTypeID': new FormControl(''),
            'ItemTypeName': new FormControl(''),
            'SendData': new FormControl(''),
            'AddressBookTypeID': new FormControl('', Validators.required),
            'AddressBookTypeName': new FormControl(''),
            'AddressBookNum': new FormControl('', Validators.required),
            'Name': new FormControl(''),
        });
        this.AddressBookNums = [];
        this.AddressBookNums.push({label:'Select Address Book #', value:''});
        this.AddressBookNums.push({label:'942428', value:'942428'});
        this.AddressBookNums.push({label:'1074757', value:'1074757'});
        this.AddressBookNums.push({label:'7451313', value:'7451313'});
        this.AddressBookNums.push({label:'7456421', value:'7456421'});
        this.AddressBookNums.push({label:'7460505', value:'7460505'});
        this.AddressBookNums.push({label:'7550340', value:'7550340'});
        this.AddressBookNums.push({label:'7556711', value:'7556711'});
    }
    ngOnInit(){
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(
                itemMappings => { this.itemMappings = itemMappings },
                error => { this.errorMessage = <any>error; this.loading = false; },
                () => this.loading = false);
    }
    refreshPage() {
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(
                itemMappings => { this.itemMappings = itemMappings },
                error => { this.errorMessage = <any>error; this.loading = false; },
                () => this.loading = false);
    }
    showDialogToAdd() {
        this.newItemMapping = true;
        this.itemMapping = new PrimeItemMapping();
        this.displayDialog = true;
    }
    save(value: string) {
        if (this.newItemMapping){
            this._service.putItemMappingUrl(this.selectedAPI, this.form.value)
                .subscribe(
                    success => {        
                        this.loading = true;
                        this._service.getUrl(this.selectedAPI)
                            .subscribe(
                                itemMappings => { this.itemMappings = itemMappings },
                                error => { this.errorMessage = <any>error; this.loading = false; },
                                () => this.loading = false);},
                    error => { this.errorMessage = <any>error; this.loading = false; }
                )
        }
        else{
            this.itemMappings[this.findSelectedItemMappingIndex()] = this.itemMapping;
            this._service.putItemMappingUrl(this.selectedAPI, this.form.value)
                .subscribe(
                    success => {        
                        this.loading = true;
                        this._service.getUrl(this.selectedAPI)
                            .subscribe(
                                itemMappings => { this.itemMappings = itemMappings },
                                error => { this.errorMessage = <any>error; this.loading = false; },
                                () => this.loading = false);},
                    error => { this.errorMessage = <any>error; this.loading = false; }
                )
        }
        this.itemMapping = null;
        this.displayDialog = false;
    }
    delete() {
        this._confirmService.confirm({
            message: 'Are you sure that you want delete this item mapping?',
            accept: () => {
               this.itemMappings.splice(this.findSelectedItemMappingIndex(), 1);

                this._service.deleteMappingUrl(this.selectedAPI, this.itemMapping.ItemMasterID)
                    .subscribe(
                    success => {        
                        this.loading = true;
                        this._service.getUrl(this.selectedAPI)
                            .subscribe(
                                itemMappings => { this.itemMappings = itemMappings },
                                error => { this.errorMessage = <any>error; this.loading = false; },
                                () => this.loading = false);},
                    err => {
                        alert("Could not delete the item mapping.");
                        this.itemMappings.splice(this.findSelectedItemMappingIndex(), 0, this.itemMapping);
                    });
                this.itemMapping = null;
                this.displayDialog = false;
            },
            reject: () => {
                this.itemMapping = null;
                this.displayDialog = false;
            }
        });
    }
    cancel() {
        this.displayDialog = false;
    }
    onRowSelect(event) {
        this.newItemMapping = false;
        this.itemMapping = this.cloneItemMapping(event.data);
        
        if (this.itemMapping.SendData = true) {
            this.inputSwitchSendData = true;
        }
        else {
            this.inputSwitchSendData = false;
        }

        this.selectedAddressBookNum = this.itemMapping.AddressBookNum;

        this.displayDialog = true;
    }
    cloneItemMapping(i: ItemMapping): ItemMapping {
        let itemMapping = new PrimeItemMapping();
        for (let prop in i) {
            itemMapping[prop] = i[prop];
        }
        return itemMapping;
    }
    findSelectedItemMappingIndex(): number {
        return this.itemMappings.indexOf(this.selectedItemMapping);
    }
    closeForm(){
        this.form.reset();
    }
    closeError(){
        this.errorMessage = null;
    }
}
class PrimeItemMapping implements ItemMapping {

    constructor(
        public ItemMasterID?, 
        public ItemReferenceID?, 
        public ItemName?, 
        public ItemLongName?, 
        public PackageCode?, 
        public PackageDescr?, 
        public ItemTypeID?, 
        public ItemTypeName?, 
        public SendData?, 
        public AddressBookTypeID?, 
        public AddressBookTypeName?, 
        public AddressBookNum?, 
        public Name?) { }
}