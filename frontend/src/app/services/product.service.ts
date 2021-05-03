// get request to backend baseUrl, grab the data unwrapped accordingly ,
// and make it available as array of products
import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Product } from '../common/product';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class ProductService {

  private baseUrl = 'http://localhost:8080/api/products';

  constructor(private httpClient: HttpClient) { }
//Map the JSON data from spring data rst to product array
  getProductList(): Observable<Product[]> {
    return this.httpClient.get<GetResponse>(this.baseUrl).pipe(
      map(response => response._embedded.products)
    );
  }
}
// Unwraps the JSON from spring data rest
interface GetResponse {
  _embedded: {
    products: Product[];
  };
}
