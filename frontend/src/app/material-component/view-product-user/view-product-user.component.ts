import { Component, OnInit } from '@angular/core';
import { MatDialog } from '@angular/material/dialog';
import { MatTableDataSource } from '@angular/material/table';
import { Router } from '@angular/router';
import { ProductService } from 'src/app/services/product.service';
import { SnackbarService } from 'src/app/services/snackbar.service';
import { GlobalConstants } from 'src/app/shared/global-constants';

@Component({
  selector: 'app-view-product-user',
  templateUrl: './view-product-user.component.html',
  styleUrls: ['./view-product-user.component.scss']
})
export class ViewProductUserComponent implements OnInit {
  displayedColumns:string[] = ['name','categoryName','description','price','quantity'];
  dataSource:any;
  ressponseMessage:any

  constructor(private productService:ProductService,
    private dialog:MatDialog,
    private snackbarService:SnackbarService,
    private router:Router) { }

  ngOnInit(): void {
    this.tableData();
  }

  tableData(){
    this.productService.getProducts().subscribe((response:any)=>{
      this.dataSource = new MatTableDataSource(response);
    },(error:any)=>{
      console.log(error);
      if(error.error?.message){
        this.ressponseMessage = error.error?.message;
      }
      else{
        this.ressponseMessage = GlobalConstants.genericError;
      }
      this.snackbarService.openSnackBar(this.ressponseMessage,GlobalConstants.error);
    })
  }

  applyFilter(event:Event){
    const filterValue = (event.target as HTMLInputElement).value;
    this.dataSource.filter = filterValue.trim().toLowerCase();
  }

  onChange(status:any,id:any){
    var data = {
      status:status.toString(),
      id:id
    }
    this.productService.updateStatus(data).subscribe((response:any)=>{
      this.ressponseMessage = response?.message;
      this.snackbarService.openSnackBar(this.ressponseMessage,"success");
    },(error:any)=>{
      console.log(error);
      if(error.error?.message){
        this.ressponseMessage = error.error?.message;
      }
      else{
        this.ressponseMessage = GlobalConstants.genericError;
      }
      this.snackbarService.openSnackBar(this.ressponseMessage,GlobalConstants.error);
    })
  }

}
