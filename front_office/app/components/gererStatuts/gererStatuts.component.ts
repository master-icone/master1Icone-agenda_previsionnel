import { Component, OnInit } from '@angular/core';
import { HttpService } from '../../services/http.service';

@Component({
  selector: 'gererStatuts',
  providers: [HttpService],
  templateUrl: '../../../app/components/gererStatuts/gererStatuts.html'
})

export class GererStatutsComponent {
  link = 'http://localhost:3000/gererStatuts';
  listeStatuts: any;

  constructor (private _httpService: HttpService) {
  }

  ngOnInit() {
    this.getListeStatuts();
  }

  change() {
    alert("test");
    this.getListeStatuts();
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
}
