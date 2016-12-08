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
var core_1 = require('@angular/core');
var platform_browser_1 = require('@angular/platform-browser');
var forms_1 = require('@angular/forms');
var router_1 = require('@angular/router');
var toolbar_component_1 = require('../shared/toolbar/toolbar.component');
var navbar_component_1 = require('../shared/navbar/navbar.component');
var app_component_1 = require('./app.component');
var decharges_component_1 = require('../components/decharges/decharges.component');
var recherche_component_1 = require('../components/recherche/recherche.component');
var responsableUE_component_1 = require('../components/responsableUE/responsableUE.component');
var interventions_component_1 = require('../components/interventions/interventions.component');
var accueil_component_1 = require('../components/accueil/accueil.component');
var listeDesUE_component_1 = require('../components/listeDesUE/listeDesUE.component');
var probleme_component_1 = require('../components/probleme/probleme.component');
var http_1 = require('@angular/http');
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
                primeng_1.CalendarModule,
                primeng_2.InputTextModule,
                router_1.RouterModule.forRoot([
                    { path: '', redirectTo: '/accueil', pathMatch: 'full' },
                    { path: 'decharges', component: decharges_component_1.DechargesComponent },
                    { path: 'recherche', component: recherche_component_1.RchercheComponent },
                    { path: 'responsableUE', component: responsableUE_component_1.ResponsableUEComponent },
                    { path: 'interventions', component: interventions_component_1.InterventionsComponent },
                    { path: 'listeDesUE', component: listeDesUE_component_1.ListeDesUEComponent },
                    { path: 'probleme', component: probleme_component_1.ProblemeComponent },
                    { path: 'accueil', component: accueil_component_1.AccueilComponent }
                ])
            ],
            declarations: [app_component_1.AppComponent, toolbar_component_1.ToolbarComponent, navbar_component_1.NavbarComponent,
                recherche_component_1.RchercheComponent, decharges_component_1.DechargesComponent,
                responsableUE_component_1.ResponsableUEComponent, interventions_component_1.InterventionsComponent, accueil_component_1.AccueilComponent, listeDesUE_component_1.ListeDesUEComponent, probleme_component_1.ProblemeComponent],
            bootstrap: [app_component_1.AppComponent]
        }), 
        __metadata('design:paramtypes', [])
    ], AppModule);
    return AppModule;
}());
exports.AppModule = AppModule;
//# sourceMappingURL=app.module.js.map