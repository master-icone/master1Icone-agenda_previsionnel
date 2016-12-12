import { Component } from '@angular/core';
import { HttpService } from '../../services/http.service';

@Component({
  selector: 'gererDroits',
  templateUrl: '../../../app/components/gererDroits/gererDroits.html',
  providers: [HttpService]
})

export class GererDroitsComponent {
  getData: string;
  text = 'http://ip.jsontest.com/';

  constructor (private _httpService: HttpService) { }

  getListeUE() {
    this._httpService.httpGet(this.text)
        .subscribe(
          data => {
            this.getData = JSON.stringify(data);
          },
          error => alert(error),
          () => console.log("Finished")
        );
  }
}
