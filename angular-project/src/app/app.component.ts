import { Component } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { AppConfigService } from './providers/app-config.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'angular-project';
  constructor(private http: HttpClient, private config: AppConfigService) {
    console.log(this.config.getConfig());
    }
  environment = this.config.getConfig().ENV;
  URL1 = this.config.getConfig().URL1;
  URL2 = this.config.getConfig().URL2;
}
