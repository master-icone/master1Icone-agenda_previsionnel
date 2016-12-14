import { Component, OnInit } from '@angular/core';
import { HttpService } from '../../services/http.service';
import { CommunicateService } from '../../services/communicate.service';
import { Router } from '@angular/router';

@Component({
  selector: 'gererStatuts',
  providers: [HttpService, CommunicateService],
  templateUrl: '../../../app/components/gererStatuts/gererStatuts.html'
})

export class GererStatutsComponent {
  link = 'http://localhost:3000/gererStatuts';
  listeStatuts: any;

  constructor (private _httpService: HttpService, private communicateService: CommunicateService, private router: Router) {
    communicateService.missionConfirmed$.subscribe(
      () => {
        this.getListeStatuts();
        alert("test");
      }
    );
    router.events.subscribe(() => this.change());
  }

  ngOnInit() {
    this.getListeStatuts();
  }

  change() {
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
