import { Injectable } from '@angular/core';
import { Http, RequestOptions, Response } from '@angular/http';
import { Observable } from 'rxjs/Observable';
import { AuthService } from './auth.service';
import 'rxjs/Rx';

@Injectable()
export class SOAService {
  
  constructor(
      private http: Http,
      private auth: AuthService
    ) { }
   
    getSOAEnvironments() {
        return this.http.get('assets/data/soaenvironments.json')
                    .toPromise()
                    .then(res => res.json().data)
                    .then(data => { return data; });
    }

    getSOASchedule() {
        return this.http.get('assets/data/soaschedule.json')
                    .toPromise()
                    .then(res => res.json().data)
                    .then(data => { return data; });
    }
}