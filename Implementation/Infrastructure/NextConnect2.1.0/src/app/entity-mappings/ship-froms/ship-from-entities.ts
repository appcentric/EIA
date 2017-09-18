import { Component, OnInit } from '@angular/core';
import { DJJAPIService } from '../../services/DJJAPI.service';

@Component({
    selector: 'shipfromentities',
    templateUrl: './ship-from-entities.html'
})

export class ShipFromEntitiesComponent {
    shipFroms: any[];
    selectedAPI = "ShipFroms";
    errorMessage: string;
    loading: boolean;

    constructor(private _service: DJJAPIService){
    }
    ngOnInit(){
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(
                shipFroms => this.shipFroms = shipFroms,
                error => { this.errorMessage = <any>error; this.loading = false; },
                () => this.loading = false);
    }
    refreshPage() {
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(
                shipFroms => this.shipFroms = shipFroms,
                error => { this.errorMessage = <any>error; this.loading = false; },
                () => this.loading = false);
    }
    closeError(){
        this.errorMessage = null;
    }
}