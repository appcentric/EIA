import { Component, OnInit } from '@angular/core';
import { DJJAPIService } from '../../services/DJJAPI.service';

@Component({
    selector: 'supplierentities',
    templateUrl: './app/administration/suppliers/supplier-entities.component.html'
})

export class SupplierEntitiesComponent {
    suppliers: any[];
    selectedAPI = "Suppliers"
    loading;

    constructor(private _service: DJJAPIService) {
    }
    ngOnInit() {
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(
                suppliers =>
                    this.suppliers = suppliers,
                    null,
                    () => { this.loading = false; });
    }
    refreshPage() {
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(
                suppliers =>
                    this.suppliers = suppliers,
                    null,
                    () => { this.loading = false; });
    }
}