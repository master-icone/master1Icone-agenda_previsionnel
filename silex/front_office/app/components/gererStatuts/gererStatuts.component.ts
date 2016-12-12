import { Component } from '@angular/core';
import { HttpService } from '../../services/http.service';

import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'gererStatuts',
  providers: [HttpService],
  templateUrl: '../../../app/components/gererStatuts/gererStatuts.html'
})

export class GererStatutsComponent {
  link = 'http://localhost:3000/gererStatuts';
  listeStatuts: any;
  statuts: any;
  id: any;

  constructor (private _httpService: HttpService, params: ActivatedRoute) {
    params.params.subscribe(params => {
        this.id = params['id'];
    });
    this.change();
  }

  ngOnInit() {
    this.getListeStatuts();
  }

  change() {
    if(this.id) {
      this.getStatuts(this.id);
    }
  }
  
  getListeStatuts() {
    this._httpService.httpGet(this.link)
        .subscribe(
          data => {
            this.listeStatuts = data;
          },
          error => alert(error),
          () => console.log("Finished")
        );
  }
  getStatuts(id) {
    this._httpService.httpGet(this.link+"/"+id)
        .subscribe(
          data => {
            this.statuts = data;
          },
          error => alert(error),
          () => console.log("Finished")
        );
  }
}
