import { Component } from '@angular/core';
import { HttpService } from '../../services/http.service';

@Component({
  selector: 'gererDroits',
  templateUrl: '../../../app/components/gererDroits/gererDroits.html',
  providers: [HttpService]
})

export class GererDroitsComponent {
  value: string;
  text = 'http://ip.jsontest.com/';

  constructor (private _httpService: HttpService) { }

  getData() {
    this._httpService.httpGet(this.text)
        .subscribe(
          data => {
            this.value = JSON.stringify(data);
          },
          error => alert(error),
          () => console.log("Finished")
        );
  }

  postData() {
    this._httpService.httpPost('username=myusername&password=mypassword','http://localhost:3000/gererPersonnel');
  }
}
