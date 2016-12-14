import { Injectable } from '@angular/core';
import { Http, Headers } from '@angular/http';
import 'rxjs/add/operator/map';

@Injectable()
export class HttpService {

  constructor(private _http: Http) {}

  httpGet(url: string) {
    return this._http.get(url)
        .map(res => res.json());
  }

  httpPost(url: string, json: string) {
    var headers = new Headers();
    headers.append('Content-Type', 'application/x-www-form-urlencoded');
    return this._http.post(url, json, {headers: headers})
               .map(res => res.json());
  }

  httpPut(url: string, json: string) {
    var headers = new Headers();
    headers.append('Content-Type', 'application/json');
    return this._http.put(url, json, {headers: headers})
               .map(res => res.json());
  }

  httpDelete(url: string) {
    return this._http.delete(url).map(res => res.json());
  }
}
