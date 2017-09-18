import { Component, OnInit } from '@angular/core';
import { DJJAPIService } from '../../services/DJJAPI.service';
import { AuthService } from '../../services/auth.service';
import { SelectItem } from 'primeng/primeng';

@Component({
    selector: 'scaleconnectpo',
    templateUrl: './scale-connect-po.html'
})

export class ScaleConnectPOComponent implements OnInit{
    POs: any[];

    quantityUOMCodes: SelectItem[];

    quantityUOMCodesFilter: string;

    typeCodes: SelectItem[];

    typeCodesFilter: string;

    createdDateFilter: string;

    lastUpdatedDateFilter: string;

    errorMessage: string;
    
    loading: boolean;

    constructor(private _service: DJJAPIService, private auth: AuthService) {
        this.setDropdownFilters();
    }
    setDropdownFilters(){
        this.quantityUOMCodes = [];
        this.quantityUOMCodes.push({label:'Pounds', value: 'LB'});
        this.quantityUOMCodes.push({label:'Gross Tons', value: 'GT'});
        this.quantityUOMCodes.push({label:'Net Tons', value: 'NT'});
        this.quantityUOMCodes.push({label:'Metric Tons', value: 'MT'});
        this.quantityUOMCodes.push({label:'Each', value: 'EA'});
        this.quantityUOMCodes.push({label:'Per Shipment', value: 'PS'});

        this.typeCodes = [];
        // this.typeCodes.push({label:'Brokered', value: 'B'})
        this.typeCodes.push({label:'Non-Brokered', value: 'NB'});
        this.typeCodes.push({label:'Non-Scrap', value: 'NS'});
        this.typeCodes.push({label:'Outbound', value: 'O'});
    }
    ngOnInit(){
        // this.typeCodes = [];
        // // this.typeCodes.push({label:'Brokered', value: 'B'})
        // this.typeCodes.push({label:'Non-Brokered', value: 'NB'});
        // this.typeCodes.push({label:'Non-Scrap', value: 'NS'});
        // this.typeCodes.push({label:'Outbound', value: 'O'});

        // this.quantityUOMCodes = [];
        // this.quantityUOMCodes.push({label:'Pounds', value: 'LB'});
        // this.quantityUOMCodes.push({label:'Gross Tons', value: 'GT'});
        // this.quantityUOMCodes.push({label:'Net Tons', value: 'NT'});
        // this.quantityUOMCodes.push({label:'Metric Tons', value: 'MT'});
        // this.quantityUOMCodes.push({label:'Each', value: 'EA'});
        // this.quantityUOMCodes.push({label:'Per Shipment', value: 'PS'});

        this.loading  = true;
        this._service.getScaleConnectPO()
        .subscribe(
                POs => { this.POs = POs },
                error => { this.errorMessage = <any>error; this.loading = false; },
                () => this.loading = false);                
    }
    updateTable() {
        this.loading  = true;
        this._service.getScaleConnectPO()
        .subscribe(
                POs => { this.POs = POs },
                error => { this.errorMessage = <any>error; this.loading = false; },
                () => this.loading = false);
    }
    resetTable(dt) {
        this.typeCodesFilter = null;
        this.quantityUOMCodesFilter = null;
        this.createdDateFilter = null;
        this.lastUpdatedDateFilter = null;

        this.setDropdownFilters();
        dt.reset();
    }
    closeError(){
        this.errorMessage = null;
    }
}