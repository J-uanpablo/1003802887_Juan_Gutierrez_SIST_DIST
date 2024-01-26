package IRepository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import Entities.Product;

@Repository
public interface IProductRepository extends JpaRepository<Product, Long>{

}