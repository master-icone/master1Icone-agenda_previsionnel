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
  link = 'http://localhost:3000/gererPersonnel';
  data = 'username=myusername&password=mypassword';
  deleteLink = 'http://localhost:3000/gererPersonnel';
  deleteID = 5;
  val: string;

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
    this._httpService.httpPost(this.link, this.data)
        .subscribe(
          data => {
            this.val = JSON.stringify(data);
            alert('pirouette kakaouette');
          },
          error => alert(error),
          () => console.log("Finished")
        );
  }

  deleteData() {
    this._httpService.httpDelete(this.deleteLink + '/' + this.deleteID)
        .subscribe(
          data => {
            this.val = JSON.stringify(data);
            alert("hooo");
          },
          error => alert(error),
          () => console.log("Finished")
        );
  }
}
