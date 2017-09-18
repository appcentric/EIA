import { Component, OnInit } from '@angular/core';
import { DJJAPIService } from '../../services/DJJAPI.service';

@Component({
    selector: 'scaleconnectpo',
    templateUrl: './app/scale-connect/scale-connect-po/scale-connect-po.component.html'
})

export class ScaleConnectPOComponent implements OnInit{
    POs: any[];

    loading;

    constructor(private _service: DJJAPIService) {
    }
    ngOnInit(){
        this.loading  = true;
        this._service.getScaleConnectPO()
        .subscribe(
                POs =>  
                    this.POs = POs,
                    null,
                    () => { this.loading = false; });
    }
    refreshPage() {
        this.loading  = true;
        this._service.getScaleConnectPO()
        .subscribe(
                POs =>  
                    this.POs = POs,
                    null,
                    () => { this.loading = false; });
    }
}