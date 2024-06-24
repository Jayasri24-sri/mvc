package employee_management.employee_managementsystem.repository;


import employee_management.employee_managementsystem.entity.Employee;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface EmployeeRepository extends JpaRepository<Employee, Long> {
    List<Employee> findByNameContainingOrDepartmentContaining(String name, String department);
}

