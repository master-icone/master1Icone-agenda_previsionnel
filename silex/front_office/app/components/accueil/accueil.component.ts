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
