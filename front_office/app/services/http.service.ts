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

  httpPost(link: string, json: string) {
    var headers = new Headers();
    headers.append('Content-Type', 'application/x-www-form-urlencoded');
    return this._http.post(link, json, {
      headers: headers
    }).map(res => res.json());
  }
}
