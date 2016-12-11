import { Component, OnInit } from '@angular/core';
import { HttpService } from '../../services/http.service';

@Component({
  selector: 'accueil',
  templateUrl: '../../../app/components/accueil/accueil.html',
  styleUrls: ['../../../app/components/accueil/accueil.css'],
  providers: [HttpService]
})

export class AccueilComponent implements OnInit {
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
