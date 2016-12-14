import { Component, OnInit } from '@angular/core';
import { HttpService } from '../../services/http.service';
import { CommunicateService } from '../../services/communicate.service';
import { Router } from '@angular/router';

@Component({
  selector: 'gererUE',
  providers: [HttpService, CommunicateService],
  templateUrl: '../../../app/components/gererUE/gererUE.html'
})

export class GererUEComponent {
  link = 'http://localhost:3000/gererUE';
  listeUE: any;

  constructor (private _httpService: HttpService, private communicateService: CommunicateService, private router: Router) {
    communicateService.missionConfirmed$.subscribe(
      () => {
        this.getListeUE();
        alert("test");
      }
    );
    router.events.subscribe(() => this.change());
  }

  ngOnInit() {
    this.getListeUE();
  }

  change() {
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
}
