import { Component, DoCheck } from '@angular/core';
import { HttpService } from '../../services/http.service';
import { Router, ActivatedRoute } from '@angular/router';
import { CommunicateService } from '../../services/communicate.service';

@Component({
  selector: 'vueStatuts',
  providers: [HttpService],
  templateUrl: '../../../app/components/gererStatuts/vueStatuts.html'
})

export class VueStatutsComponent {
  link = 'http://localhost:3000/gererStatuts';
  statuts: any;
  id: any;

  constructor (private _httpService: HttpService,
               params: ActivatedRoute,
               private router: Router,
               private communicateService: CommunicateService) {
    params.params.subscribe(params => {
        this.id = params['id'];
    });
    this.display();
  }

  ngDoCheck() {
    if(this.communicateService.getCheckChild()) {
      this.display();
    }
    this.communicateService.resetChild();
  }

  display() {
    if(this.id) {
      this.getStatut(this.id);
    }
  }

  getStatut(id) {
    this._httpService.httpGet(this.link+"/"+id)
        .subscribe(
          data => {
            this.statuts = data;
          },
          error => {
            this.router.navigate(['./accueil']);
          },
          () => console.log("Finished")
        );
  }

  deleteStatut(id) {
    this._httpService.httpDelete(this.link+"/"+id)
        .subscribe(
          data => {
            this.communicateService.setCheckParent();
            this.router.navigate(['./gererStatuts']);
          },
          error => {
            this.router.navigate(['./accueil']);
          },
          () => console.log("Finished")
        );
  }
}
