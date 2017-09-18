import { Component, OnInit } from '@angular/core';
import { DJJAPIService } from '../../services/DJJAPI.service';


@Component({
    selector: 'shiptoentities',
    templateUrl: './ship-to-entities.html'
})

export class ShipToEntitiesComponent {
    shipTos: any[];
    selectedAPI = "ShipTos";
    errorMessage: string;
    loading: boolean;

    constructor(private _service: DJJAPIService){
    }
    ngOnInit(){
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(
                shipTos => this.shipTos = shipTos,
                error => { this.errorMessage = <any>error; this.loading = false; },
                () => this.loading = false);
    }
    refreshPage() {
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(
                shipTos => this.shipTos = shipTos,
                error => { this.errorMessage = <any>error; this.loading = false; },
                () => this.loading = false);
    }
    closeError(){
        this.errorMessage = null;
    }
}