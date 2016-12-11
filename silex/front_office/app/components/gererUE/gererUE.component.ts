import { Component, OnInit } from '@angular/core';
import { HttpService } from '../../services/http.service';

import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'gererUE',
  providers: [HttpService],
  templateUrl: '../../../app/components/gererUE/gererUE.html'
})

export class GererUEComponent implements OnInit{
  link = 'http://localhost:3000/gererUE';
  listeUE: any;
  UE: any;
  id: any;

  constructor (private _httpService: HttpService, params: ActivatedRoute) {
    params.params.subscribe(params => {
        this.id = params['id'];
    });
    this.change();
  }

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

  change() {
    if(this.id) {
      this.getUE(this.id);
    }
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
