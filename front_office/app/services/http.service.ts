import { Injectable } from '@angular/core';
import { Http, Headers } from '@angular/http';
import 'rxjs/add/operator/map';

@Injectable()
export class HttpService {

  constructor(private _http: Http) {}

  httpGet(link: string) {
    return this._http.get(link)
        .map(res => res.json());
  }

  httpPost(json: string, link: string) {
    var headers = new Headers();
    headers.append('Content-Type', 'application/x-www-form-urlencoded');
    this._http.post(link, json, {
      headers: headers
    }).subscribe(data => {
                alert('ok');
          }, error => {
              console.log(JSON.stringify(error.json()));
          });
  }
}
