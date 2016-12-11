import { Component, OnInit } from '@angular/core';
import { HttpService } from '../../services/http.service';

@Component({
  selector: 'decharges',
  templateUrl: '../../../app/components/decharges/decharges.html',
  providers: [HttpService]
  
})

export class DechargesComponent implements OnInit{
  link = 'http://localhost:3000/decharges';
  decharges: any;

  
  constructor (private _httpService: HttpService) { }

  ngOnInit() {
    this.getDecharges();
  }

  getDecharges() {
    this._httpService.httpGet(this.link)
        .subscribe(
          data => {
            this.decharges = data;
          },
          error => alert(error),
          () => console.log("Finished")
        );
  }
}