import { Component, OnInit, DoCheck } from '@angular/core';
import { HttpService } from '../../services/http.service';
import { CommunicateService } from '../../services/communicate.service';
import { Router, ActivatedRoute } from '@angular/router';

@Component({
  selector: 'modifierUE',
  providers: [HttpService],
  templateUrl: '../../../app/components/gererUE/modifierUE.html'
})

export class ModifierUEComponent {
  link = 'http://localhost:3000/gererUE';
  id: any;
  label = "";
  numero = "";
  responsable = "";
  cm = "";
  td = "";
  tp = "";
  data: string;
  result: any;
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
      this.getUE(this.id);
    }
  }

  getUE(id) {
    this._httpService.httpGet(this.link+"/"+id)
        .subscribe(
          data => {
            this.label = data.label;
            this.numero = data.numero;
            this.responsable = data.responsable;
            this.cm = data.cm;
            this.td = data.td;
            this.tp = data.tp;
          },
          error => {
            this.router.navigate(['./accueil']);
          },
          () => console.log("Finished")
        );
  }

  modifierUE() {
    this.json = '{"label":"'+this.label+'","numero":"'+this.numero+'","responsable":"'+this.responsable+'","cm":"'+this.cm+'","td":"'+this.td+'","tp":"'+this.tp+'"}';
    this._httpService.httpPut(this.link+'/'+this.id, this.json)
        .subscribe(
          data => {
            this.communicateService.setCheckParent();
            this.router.navigate(['./gererUE'+'/'+data.id]);
          },
          error => alert(error),
          () => console.log("Finished")
        );
  }
}
