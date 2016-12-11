"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
// Module de base du projet
var core_1 = require('@angular/core');
var platform_browser_1 = require('@angular/platform-browser');
var forms_1 = require('@angular/forms');
var router_1 = require('@angular/router');
var http_1 = require('@angular/http');
// Gestionnaire d'inclusion de component
var app_component_1 = require('./app.component');
// Banniere et menu supérieur
var toolbar_component_1 = require('../shared/toolbar/toolbar.component');
var navbar_component_1 = require('../shared/navbar/navbar.component');
// Page du projet
var accueil_component_1 = require('../components/accueil/accueil.component');
var interventions_component_1 = require('../components/interventions/interventions.component');
var decharges_component_1 = require('../components/decharges/decharges.component');
var probleme_component_1 = require('../components/probleme/probleme.component');
var gererPersonnel_component_1 = require('../components/gererPersonnel/gererPersonnel.component');
var gererUE_component_1 = require('../components/gererUE/gererUE.component');
var gererStatuts_component_1 = require('../components/gererStatuts/gererStatuts.component');
var gererDroits_component_1 = require('../components/gererDroits/gererDroits.component');
var authentification_component_1 = require('../components/authentification/authentification.component');
var ajoutProfUE_component_1 = require('../components/ajoutProfUE/ajoutProfUE.component');
// Module primeng
var primeng_1 = require('primeng/primeng');
var primeng_2 = require('primeng/primeng');
var AppModule = (function () {
    function AppModule() {
    }
    AppModule = __decorate([
        core_1.NgModule({
            imports: [
                platform_browser_1.BrowserModule,
                forms_1.FormsModule,
                http_1.HttpModule,
                primeng_1.InputTextModule,
                primeng_2.DataTableModule,
                primeng_2.SharedModule,
                router_1.RouterModule.forRoot([
                    { path: '', redirectTo: '/authentification', pathMatch: 'full' },
                    { path: 'authentification', component: authentification_component_1.AuthentificationComponent },
                    { path: 'accueil', component: accueil_component_1.AccueilComponent },
                    { path: 'interventions', component: interventions_component_1.InterventionsComponent },
                    { path: 'decharges', component: decharges_component_1.DechargesComponent },
                    { path: 'probleme', component: probleme_component_1.ProblemeComponent },
                    { path: 'gererPersonnel', component: gererPersonnel_component_1.GererPersonnelComponent },
                    { path: 'gererUE', component: gererUE_component_1.GererUEComponent },
                    { path: 'ajoutProfUE', component: ajoutProfUE_component_1.AjoutProfUEComponent },
                    { path: 'gererStatuts', component: gererStatuts_component_1.GererStatutsComponent },
                    { path: 'gererDroits', component: gererDroits_component_1.GererDroitsComponent }
                ])
            ],
            declarations: [app_component_1.AppComponent, toolbar_component_1.ToolbarComponent, navbar_component_1.NavbarComponent,
                accueil_component_1.AccueilComponent, interventions_component_1.InterventionsComponent, decharges_component_1.DechargesComponent,
                probleme_component_1.ProblemeComponent, gererPersonnel_component_1.GererPersonnelComponent, gererUE_component_1.GererUEComponent,
                ajoutProfUE_component_1.AjoutProfUEComponent, gererStatuts_component_1.GererStatutsComponent, gererDroits_component_1.GererDroitsComponent,
                authentification_component_1.AuthentificationComponent],
            bootstrap: [app_component_1.AppComponent]
        }), 
        __metadata('design:paramtypes', [])
    ], AppModule);
    return AppModule;
}());
exports.AppModule = AppModule;
//# sourceMappingURL=app.module.js.map