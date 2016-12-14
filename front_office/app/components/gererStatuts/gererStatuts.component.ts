import { Component, OnInit, DoCheck } from '@angular/core';
import { HttpService } from '../../services/http.service';
import { CommunicateService } from '../../services/communicate.service';
import { Router } from '@angular/router';

@Component({
  selector: 'gererStatuts',
  providers: [HttpService],
  templateUrl: '../../../app/components/gererStatuts/gererStatuts.html'
})

export class GererStatutsComponent {
  link = 'http://localhost:3000/gererStatuts';
  listeStatuts: any;

  constructor (private _httpService: HttpService,
               private router: Router,
               private communicateService: CommunicateService) { }

  ngOnInit() {
    this.getListeStatuts();
  }

  ngDoCheck() {
    if(this.communicateService.getCheckParent()) {
      this.getListeStatuts();
    }
    this.communicateService.resetParent();
  }

  loadPage() {
    this.communicateService.setCheckchild();
  }

  getListeStatuts() {
    this._httpService.httpGet(this.link)
        .subscribe(
          data => {
            this.listeStatuts = data;
          },
          error => {
            this.router.navigate(['./accueil']);
          },
          () => console.log("Finished")
        );
  }
}
