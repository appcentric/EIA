import { Component, OnInit } from '@angular/core';
import { DJJAPIService } from '../../../services/djj.service';

@Component({
    selector: 'itementities',
    templateUrl: './item-entities.html'
})

export class ItemEntitiesComponent {
    items: any[];
    selectedAPI = "ItemMasters";
    errorMessage: string;
    loading: boolean;

    constructor(private _service: DJJAPIService){
    }
    ngOnInit(){
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(
                items => this.items = items,
                error => { this.errorMessage = <any>error; this.loading = false; },
                () => this.loading = false);
    }
    refreshPage(){
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(
                items => this.items = items,
                error => { this.errorMessage = <any>error; this.loading = false; },
                () => this.loading = false);
    }
    closeError(){
        this.errorMessage = null; 
    }
}