import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ViewProductUserComponent } from './view-product-user.component';

describe('ViewProductUserComponent', () => {
  let component: ViewProductUserComponent;
  let fixture: ComponentFixture<ViewProductUserComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ViewProductUserComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ViewProductUserComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
