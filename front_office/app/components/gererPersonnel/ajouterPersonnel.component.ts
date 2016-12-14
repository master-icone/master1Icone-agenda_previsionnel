import { Component } from '@angular/core';
import { HttpService } from '../../services/http.service';
import { Router, ActivatedRoute } from '@angular/router';
import { CommunicateService } from '../../services/communicate.service';

@Component({
  selector: 'ajouterStatuts',
  templateUrl: '../../../app/components/gererStatuts/ajouterStatuts.html',
  providers: [HttpService, CommunicateService]
})

export class AjouterPersonnelComponent { }
