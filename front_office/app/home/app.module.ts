// Module de base du projet
import { NgModule }      from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { FormsModule }   from '@angular/forms';
import { RouterModule }   from '@angular/router';
import { HttpModule } from '@angular/http';

// Gestionnaire d'inclusion de component
import { AppComponent }   from './app.component';

// Banniere et menu supérieur
import { ToolbarComponent } from '../shared/toolbar/toolbar.component';
import { NavbarComponent } from '../shared/navbar/navbar.component';

// Page du projet
import { AuthentificationComponent } from '../components/authentification/authentification.component';
import { AccueilComponent } from '../components/accueil/accueil.component';
import { InterventionsComponent } from '../components/interventions/interventions.component';
import { DechargesComponent } from '../components/decharges/decharges.component';
import { ProblemesComponent } from '../components/problemes/problemes.component';
import { GererPersonnelComponent } from '../components/gererPersonnel/gererPersonnel.component';
import { GererUEComponent } from '../components/gererUE/gererUE.component';
import { GererStatutsComponent } from '../components/gererStatuts/gererStatuts.component';
import { GererDroitsComponent } from '../components/gererDroits/gererDroits.component';

import { SelectStatutsComponent } from '../components/gererStatuts/selectStatuts.component';
import { VueStatutsComponent } from '../components/gererStatuts/vueStatuts.component';
import { AjouterStatutsComponent } from '../components/gererStatuts/ajouterStatuts.component';

import { SelectUEComponent } from '../components/gererUE/selectUE.component';
import { VueUEComponent } from '../components/gererUE/vueUE.component';
import { AjouterUEComponent } from '../components/gererUE/ajouterUE.component';

import { AjoutProfUEComponent } from '../components/ajoutProfUE/ajoutProfUE.component';

import { CommunicateService } from '../services/communicate.service';

// Module primeng
import {InputTextModule} from 'primeng/primeng';
import {DataTableModule,SharedModule} from 'primeng/primeng';

@NgModule({
  imports: [
    BrowserModule,
    FormsModule,
    HttpModule,
    InputTextModule,
    DataTableModule,
    SharedModule,
    RouterModule.forRoot([
      { path: '', redirectTo: '/authentification', pathMatch:'full' },
      { path: 'authentification', component: AuthentificationComponent },
      { path: 'accueil', component: AccueilComponent },
      { path: 'interventions', component: InterventionsComponent },
      { path: 'decharges', component: DechargesComponent },
      { path: 'problemes', component: ProblemesComponent },
      { path: 'gererPersonnel', component: GererPersonnelComponent },
      { path: 'gererPersonnel/:id', component: GererPersonnelComponent },
      { path: 'gererUE', component: GererUEComponent,
        children: [
          { path: '', component: SelectUEComponent },
          { path: 'ajouter', component: AjouterUEComponent },
          { path: ':id', component: VueUEComponent }
        ]},
      { path: 'gererUE/:id', component: GererUEComponent },
      { path: 'ajoutProfUE', component: AjoutProfUEComponent },
      { path: 'gererStatuts', component: GererStatutsComponent,
        children: [
          { path: '', component: SelectStatutsComponent },
          { path: 'ajouter', component: AjouterStatutsComponent },
          { path: ':id', component: VueStatutsComponent }
        ]},
      { path: 'gererStatuts/:id', component: GererStatutsComponent },
      { path: 'gererDroits', component: GererDroitsComponent }
    ])
  ],
  declarations: [ AppComponent, ToolbarComponent, NavbarComponent,
   AuthentificationComponent, AccueilComponent, InterventionsComponent,
   DechargesComponent, ProblemesComponent, GererPersonnelComponent,
   GererUEComponent, AjoutProfUEComponent, GererStatutsComponent,
   GererDroitsComponent, VueStatutsComponent, AjouterStatutsComponent,
   SelectStatutsComponent, VueUEComponent, AjouterUEComponent,
   SelectUEComponent ],
  providers: [ CommunicateService ],
  bootstrap: [ AppComponent ]
})

export class AppModule { }
