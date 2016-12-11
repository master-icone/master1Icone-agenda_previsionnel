import { Component, OnInit } from '@angular/core';
import { HttpService } from '../../services/http.service';

@Component({
  selector: 'gererUE',
  providers: [HttpService],
  templateUrl: '../../../app/components/gererUE/gererUE.html'
})

export class GererUEComponent implements OnInit{
  link = 'http://localhost:3000/gererUE';
  listeUE: any;
  UE: any;

  constructor (private _httpService: HttpService) { }

  ngOnInit() {
    this.getListeUE();
  }

  getListeUE() {
    this._httpService.httpGet(this.link)
        .subscribe(
          data => {
            this.listeUE = data;
          },
          error => alert(error),
          () => console.log("Finished")
        );
  }
  getUE(id) {
    this._httpService.httpGet(this.link+"/"+id)
        .subscribe(
          data => {
            this.UE = data;
          },
          error => alert(error),
          () => console.log("Finished")
        );
  }
}
