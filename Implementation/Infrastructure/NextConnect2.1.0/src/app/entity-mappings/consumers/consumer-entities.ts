import { Component, OnInit } from '@angular/core';
import { DJJAPIService } from '../../services/DJJAPI.service';

@Component({
    selector: 'consumerentities',
    templateUrl: './consumer-entities.html',
})

export class ConsumerEntitiesComponent implements OnInit{
    consumers: any[];
    selectedAPI = "Consumers";
    errorMessage: string;
    loading: boolean;

    constructor(private _service: DJJAPIService) {
    }
    ngOnInit(){
        this.loading  = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(
                consumers => this.consumers = consumers,
                error => { this.errorMessage = <any>error; this.loading = false; },
                () => this.loading = false);
    }
    refreshPage() {
        this.loading  = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(
                consumers => this.consumers = consumers,
                error => { this.errorMessage = <any>error; this.loading = false; },
                () => this.loading = false);
    }
    closeError(){
        this.errorMessage = null;
    }
}