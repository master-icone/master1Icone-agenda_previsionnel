import { Component, OnInit, DoCheck } from '@angular/core';
import { HttpService } from '../../services/http.service';
import { CommunicateService } from '../../services/communicate.service';
import { Router } from '@angular/router';
import {Message} from 'primeng/primeng';

@Component({
  selector: 'gererPersonnel',
  providers: [HttpService],
  templateUrl: '../../../app/components/gererPersonnel/gererPersonnel.html'
})

export class GererPersonnelComponent {
  link = 'http://localhost:3000/gererPersonnel';
  listePersonnel: any;
  msgperso: Message[] = [];

  constructor (private _httpService: HttpService,
               private router: Router,
               private communicateService: CommunicateService) { }

  ngOnInit() {
    this.getListePersonnel();
  }

  ngDoCheck() {
    if(this.communicateService.getDisplay()) {
      this.displayMess();
    }
    if(this.communicateService.getCheckParent()) {
      this.getListePersonnel();
    }
    this.communicateService.resetDisplay();
    this.communicateService.resetParent();
  }

  displayMess() {
      this.msgperso = [];
      this.msgperso.push({severity:'success', summary:'Confirmation :', detail:'Personnel supprimé !'});
  }

  loadPage() {
    this.communicateService.setCheckchild();
  }

  getListePersonnel() {
    this._httpService.httpGet(this.link)
        .subscribe(
          data => {
            this.listePersonnel = data;
          },
          error => {
            this.router.navigate(['./accueil']);
          },
          () => console.log("Finished")
        );
  }
}
