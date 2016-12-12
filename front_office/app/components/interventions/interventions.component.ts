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
  interventions: any;

  constructor (private _httpService: HttpService) { }

  ngOnInit() {
    this.getInterventions();
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
}
