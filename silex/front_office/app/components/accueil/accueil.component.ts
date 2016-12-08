import { Component, OnInit } from '@angular/core';
import { HttpService } from '../../services/http.service';
import { CarService } from '../../services/car.service';
import {Car} from '../../interfaces';

@Component({
  selector: 'accueil',
  templateUrl: '../../../app/components/accueil/accueil.html',
  providers: [CarService]
})

export class AccueilComponent implements OnInit {
  /*
  getData: string;
  text = 'http://ip.jsontest.com/';

  constructor (private _httpService: HttpService) { }

  onTestGet() {
    this._httpService.getDate(this.text)
        .subscribe(
          data => this.getData = JSON.stringify(data),
          error => alert(error),
          () => console.log("Finished")
        );
  }*/
  cars: Car[];
  cols: any[];

  constructor(private carService: CarService) {  }

  ngOnInit() {
    this.carService.getCarsSmall().then(cars => this.cars = cars);

    this.cols = [
      {field: 'vin', header: 'Vin'},
      {field: 'year', header: 'Year'},
      {field: 'brand', header: 'Brand'},
      {field: 'color', header: 'Color'}
    ];
  }

}
