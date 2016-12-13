import { Component, OnInit } from '@angular/core';
import { HttpService } from '../../services/http.service';

@Component({
  selector: 'interventions',
  templateUrl: '../../../app/components/interventions/interventions.html',
  providers: [HttpService],
  styleUrls: ['../../../app/components/interventions/interventions.css']
})

export class InterventionsComponent {
  link = 'http://localhost:3000/interventions';
  link2 = 'http://localhost:3000/tempsIntervention';
  interventions: any;
  tempsIntervention: any;

  constructor (private _httpService: HttpService) { }

  ngOnInit() {
    this.getInterventions();
    this.getTempsInterventions();
  }

  getInterventions() {
    this._httpService.httpGet(this.link)
        .subscribe(
          data => {
            this.interventions = data;
          },
          error => alert(error),
          () => console.log("Finished")
        );
  }
  getTempsInterventions() {
    this._httpService.httpGet(this.link2)
        .subscribe(
          data => {
            this.tempsIntervention = data;
          },
          error => alert(error),
          () => console.log("Finished")
        );
  }
}
