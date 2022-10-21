import { TestBed } from '@angular/core/testing';

import { AppCOnfigService } from './app-config.service';

describe('AppCOnfigService', () => {
  let service: AppCOnfigService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(AppCOnfigService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
