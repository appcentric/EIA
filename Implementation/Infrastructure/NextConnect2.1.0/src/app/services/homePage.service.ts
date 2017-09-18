import { Injectable } from '@angular/core';
import { Http, Headers, RequestOptions, Response } from '@angular/http';
import { Observable } from 'rxjs/Observable';

import 'rxjs/Rx';

export const stockHeaders = new Headers();
stockHeaders.append('Accept', 'application/json');
stockHeaders.append('Authorization', 'Bearer 3ds2jouou5F5jCuLFC43ikr9QemR');

export const weatherHeaders = new Headers();
weatherHeaders.append('Access-Control-Allow-Methods', 'GET');
// weatherHeaders.append('Access-Control-Allow-Origin', '*');

@Injectable()
export class HomePageService { 

  constructor(private _http: Http) {
  }
  private extractData(res:Response) {
    // If request fails, throw an Error that will be caught
    if(res.status < 200 || res.status >= 300) {
      throw new Error('This request has failed ' + res.status);
    } 
    // If everything went fine, return the response
    else {
      return res.json();
    }
  }
  private handleError(error:any) {
    // In a real world app, we might use a remote logging infrastructure
    // We'd also dig deeper into the error to get a better message
    let errMsg = (error.message) ? error.message :
      error.status ? `Please retry your request. Error status:  ${error.status} - ${error.statusText}` : 'Server error';
    console.log(errMsg);
    // window.alert(errMsg); // log to console instead
    return Observable.throw(errMsg);
  }
  private _stocksURL = 'https://sandbox.tradier.com/v1/markets/quotes?symbols=NUE';
  // private _weatherURL = 'https://api.darksky.net/forecast/3d7591b943cc59b1333acaf65fdf12e3/42.0283,-97.417'
  private _weatherURL = 'http://api.wunderground.com/api/769ac4167cf68531/conditions/q/NE/Norfolk.json';

  getStocks() {
     return this._http.get(this._stocksURL, {headers: stockHeaders})
      .map(this.extractData)
      .catch(this.handleError);
  }
  getWeather(){
     return this._http.get(this._weatherURL)
      .map(this.extractData)
      .catch(this.handleError);
  }
}