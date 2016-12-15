import { Component, OnInit, DoCheck } from '@angular/core';
import { HttpService } from '../../services/http.service';
import { CommunicateService } from '../../services/communicate.service';
import { Router, ActivatedRoute } from '@angular/router';

@Component({
  selector: 'modifierStatuts',
  providers: [HttpService],
  templateUrl: '../../../app/components/gererStatuts/modifierStatuts.html'
})

export class ModifierStatutsComponent {
  link = 'http://localhost:3000/gererStatuts';
  id: any;
  label: string;
  heures: string;
  autorisation: string;
  json: string;

  constructor (private _httpService: HttpService,
               params: ActivatedRoute,
               private router: Router,
               private communicateService: CommunicateService) {
    params.params.subscribe(params => {
        this.id = params['id'];
    });
    this.display();
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
            this.label = data.label;
            this.heures = data.heures;
            this.autorisation = data.autorisation;
          },
          error => {
            this.router.navigate(['./accueil']);
          },
          () => console.log("Finished")
        );
  }

  modifierStatuts() {
    this.json = '{"label":"'+this.label+'","heures":"'+this.heures+'","autorisation":"'+this.autorisation+'"}';
    this._httpService.httpPut(this.link+'/'+this.id, this.json)
        .subscribe(
          data => {
            this.communicateService.setCheckParent();
            this.router.navigate(['./gererStatuts'+'/'+data.id]);
          },
          error => alert(error),
          () => console.log("Finished")
        );
  }
}
