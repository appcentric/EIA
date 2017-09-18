import { Component, OnInit } from '@angular/core';
import { DJJAPIService } from '../../../services/djj.service';

@Component({
    selector: 'supplierentities',
    templateUrl: './supplier-entities.html'
})

export class SupplierEntitiesComponent {
    suppliers: any[];
    selectedAPI = "Suppliers"
    errorMessage: string;
    loading: boolean;

    constructor(private _service: DJJAPIService) {
    }
    ngOnInit() {
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(
                suppliers => this.suppliers = suppliers,
                error => { this.errorMessage = <any>error; this.loading = false; },
                () => this.loading = false);
    }
    refreshPage() {
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(
                suppliers => this.suppliers = suppliers,
                error => { this.errorMessage = <any>error; this.loading = false; },
                () => this.loading = false);
    }
    closeError(){
        this.errorMessage = null;
    }
}