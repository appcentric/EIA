import { Component, OnInit } from '@angular/core';
import { DJJAPIService } from '../../../services/djj.service';
import { AuthService } from '../../../services/auth.service';
import { SelectItem } from 'primeng/primeng';

@Component({
    selector: 'scaleconnectasn',
    templateUrl: './scale-connect-asn.html'
})

export class ScaleConnectASNComponent implements OnInit{
    ASNs: any[];

    methodsOfTransport: SelectItem[];

    methodsOfTransportFilter: string;

    dateShippedDateFilter: string;

    createdDateFilter: string;

    lastUpdatedDateFilter: string;

    errorMessage: string;

    loading: boolean;

    constructor(
        private _service: DJJAPIService,
        public auth: AuthService
    ) {
        this.setDropdownFilters();
    }
    setDropdownFilters(){
        this.methodsOfTransport = [];
        this.methodsOfTransport.push({label: 'Barge', value: 'BG'});
        this.methodsOfTransport.push({label: 'Rail', value: 'RL'});
     // this.methodsOfTransport.push({label: 'Truck', value: 'TK'});
    }
    ngOnInit(){
        // this.methodsOfTransport = [];
        // this.methodsOfTransport.push({label: 'Barge', value: 'BG'})
        // this.methodsOfTransport.push({label: 'Rail', value: 'RL'})
        // this.methodsOfTransport.push({label: 'Truck', value: 'TK'})

        this.loading  = true;
        this._service.getScaleConnectASN()
        .subscribe(
                ASNs => { this.ASNs = ASNs },
                error => { this.errorMessage = <any>error; this.loading = false; },
                () => this.loading = false);
    }
    updateTable() {
        this.loading  = true;
        this._service.getScaleConnectASN()
        .subscribe(
                ASNs => { this.ASNs = ASNs },
                error => { this.errorMessage = <any>error; this.loading = false; },
                () => this.loading = false);
    }
    resetTable(dt) {
        this.methodsOfTransportFilter = null;
        this.dateShippedDateFilter = null;
        this.createdDateFilter = null;
        this.lastUpdatedDateFilter = null;
        
        this.setDropdownFilters();
        dt.reset();
    }
    closeError(){
        this.errorMessage = null;
    }
}