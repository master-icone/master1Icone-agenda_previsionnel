import { Component } from '@angular/core';
import { HttpService } from '../../services/http.service';
import { Router, ActivatedRoute } from '@angular/router';
import { CommunicateService } from '../../services/communicate.service';

@Component({
  selector: 'ajouterUE',
  templateUrl: '../../../app/components/gererUE/ajouterUE.html',
  providers: [HttpService, CommunicateService]
})

export class AjouterUEComponent {
  link = 'http://localhost:3000/gererUE';
  label = "";
  heures = "";
  autorisation = "";
  data: string;
  result: any;

  constructor (private _httpService: HttpService, private router: Router, private communicateService: CommunicateService) { }

  ajouterUE() {
    this.communicateService.confirmMission();
    this.data = 'label='+this.label+'&numero='+this.numero+'&responsable='+this.responsable+'&cm='+this.cm+'&td='+this.td+'&tp='+this.tp;
    this._httpService.httpPost(this.link, this.data)
        .subscribe(
          data => {
            this.router.navigate(['./gererUE'+'/'+data.id]);
          },
          error => alert(error),
          () => console.log("Finished")
        );
  }
}
