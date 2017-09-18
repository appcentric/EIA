import { Component, OnInit } from '@angular/core';
import { DJJAPIService } from '../../services/DJJAPI.service';

@Component({
    selector: 'freightvendorentities',
    templateUrl: './freight-vendor-entities.html'
})

export class FreightVendorEntitiesComponent implements OnInit {
    freightVendors: any[];
    selectedAPI = "FreightVendors";
    errorMessage: string;
    loading: boolean;

    constructor(private _service: DJJAPIService) {
    }
    ngOnInit() {
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(
                freightVendors => this.freightVendors = freightVendors,
                error => { this.errorMessage = <any>error; this.loading = false; },
                () => this.loading = false);
    }
    refreshPage() {
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(
                freightVendors => this.freightVendors = freightVendors,
                error => { this.errorMessage = <any>error; this.loading = false; },
                () => this.loading = false);
    }
    closeError(){
        this.errorMessage = null;
    }
}