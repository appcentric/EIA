import { Component, OnInit } from '@angular/core';
import { HomePageService } from '../services/home-page.service';

@Component({
  selector: 'home',
  templateUrl: './home.html',
})

export class HomeComponent implements OnInit{ 
      stocks: any[];

      weatherData: any[];

      stockDetails: boolean;

      loading: boolean;

      constructor(private _service: HomePageService){

      }

      ngOnInit(){
        this._service.getStocks()
          .subscribe(stocks => this.stocks = stocks.quotes);

        this._service.getWeather()
          .subscribe(weatherData => this.weatherData = weatherData);
          
      }  
      // showStockDetails(){
      //   this.stockDetails = true;
      // }
}
