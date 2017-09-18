import { Component, OnInit } from '@angular/core';
import { DJJAPIService } from '../../services/DJJAPI.service';

@Component({
    selector: 'freightvendorentities',
    templateUrl: './app/administration/freight-vendors/freight-vendor-entities.component.html'
})

export class FreightVendorEntitiesComponent implements OnInit {
    freightVendors: any[];
    selectedAPI = "FreightVendors";
    loading;

    constructor(private _service: DJJAPIService) {
    }
    ngOnInit() {
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(
                freightVendors => 
                    this.freightVendors = freightVendors,
            null,
                () => { this.loading = false; });
    }
    refreshPage() {
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(
                freightVendors => 
                    this.freightVendors = freightVendors,
            null,
                () => { this.loading = false; });
    }
}