import { Component, OnInit, DoCheck } from '@angular/core';
import { HttpService } from '../../services/http.service';
import { CommunicateService } from '../../services/communicate.service';
import { Router } from '@angular/router';

@Component({
  selector: 'gererUE',
  providers: [HttpService],
  templateUrl: '../../../app/components/gererUE/gererUE.html'
})

export class GererUEComponent {
  link = 'http://localhost:3000/gererUE';
  listeUE: any;

  constructor (private _httpService: HttpService, private communicateService: CommunicateService, private router: Router) { }

  ngOnInit() {
    this.getListeUE();
  }

  ngDoCheck() {
    if(this.communicateService.getCheckParent()) {
      this.getListeUE();
    }
    this.communicateService.resetParent();
  }

  loadPage() {
    this.communicateService.setCheckchild();
  }

  getListeUE() {
    this._httpService.httpGet(this.link)
        .subscribe(
          data => {
            this.listeUE = data;
          },
          error => {
            this.router.navigate(['./accueil']);
          },
          () => console.log("Finished")
        );
  }
}
