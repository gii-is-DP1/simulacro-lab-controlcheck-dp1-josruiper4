package org.springframework.samples.petclinic.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductService {
	
	@Autowired
	ProductRepository productRepository;
	
    public List<Product> getAllProducts(){
        List<Product> p = productRepository.findAll();
        return p;
    }

    public List<Product> getProductsCheaperThan(double price) {
        List<Product> ls = productRepository.findByPriceLessThan(price);
        return ls;
    }
    
    public List<ProductType> findAllProductTypes(){
    	List<ProductType> ls = productRepository.findAllProductTypes();
    	return ls;
    }

    public ProductType getProductType(String typeName) {
    	ProductType protyp = productRepository.findProductType(typeName);
    	return protyp;
    }

    public Product save(Product p){
        return null;       
    }

    
}
