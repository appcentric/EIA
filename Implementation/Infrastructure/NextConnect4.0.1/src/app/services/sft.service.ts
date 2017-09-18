import { Injectable } from '@angular/core';
import { Http, RequestOptions, Response } from '@angular/http';
import { Observable } from 'rxjs/Observable';
import { AuthService } from './auth.service';
import 'rxjs/Rx';

@Injectable()
export class ShopFloorToolsService {
  
  constructor(
      private http: Http,
      private auth: AuthService
    ) { }
   
    getSFTItems() {
        return this.http.get('assets/data/sft-items.json')
            .toPromise()
            .then(res => res.json().data)
            .then(data => { return data; });
    }
    getSFTBatches() {
        return this.http.get('assets/data/sft-batches.json')
            .toPromise()
            .then(res => res.json().data)
            .then(data => { return data; });
    }
}