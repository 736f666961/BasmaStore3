// component product list
// subscribe the data
import { Component, OnInit } from '@angular/core';
import { ProductService } from 'src/app/services/product.service';
import { Product } from 'src/app/common/product';

@Component({
  selector: 'app-product-list',
  templateUrl: './product-list-grid.component.html',
  // templateUrl: './product-list-table.component.html',
  // templateUrl: './product-list.component.html',
  styleUrls: ['./product-list.component.css']
})
export class ProductListComponent implements OnInit {

  products: Product[];
 // DI of productService
  constructor(private productService: ProductService) { }
  // like @postConstruct called once the given component is initialized
  ngOnInit() {
    this.listProducts();
  }
  // method invoked asynchronously once i subscribe , and assign the result to the product array
  listProducts() {
    this.productService.getProductList().subscribe(
      data => {
        // data :that s the data came back from product.service via rest api
        this.products = data;
      }
    );
  }

}
