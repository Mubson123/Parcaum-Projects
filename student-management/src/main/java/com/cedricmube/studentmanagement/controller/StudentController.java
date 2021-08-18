package com.cedricmube.studentmanagement.controller;

import com.cedricmube.studentmanagement.model.Student;
import com.cedricmube.studentmanagement.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
public class StudentController {

    @Autowired
    private StudentRepository studentRepository;

    @GetMapping("/students")
    public List<Student> getStudents() {
        return studentRepository.findAll();
    }

    @PostMapping("/students")
    public Student createStudent(@RequestBody Student student) {
        return studentRepository.save(student);
    }

    @GetMapping("/students/{id}")
    public Student getStudent(@PathVariable final Long id) {
        return studentRepository.findById(id)
                .orElseThrow(() -> new StudentNotFoundException(id));
    }

    @DeleteMapping("/students/{id}")
    public void deleteStudent(@PathVariable final Long id) {
        studentRepository.deleteById(id);
    }

    @PutMapping("/students/{id}")
    public Student replaceStudent(@RequestBody Student student, @PathVariable Long id) {
        return studentRepository.findById(id)
                .map(student1 -> {
                    student1.setName(student.getName());
                    student1.setFirstname(student.getFirstname());
                    student1.setEmail(student.getEmail());
                    student1.setFaculty(student.getFaculty());
                    student1.setSemester(student.getSemester());
                    student1.setCertificate(student.getCertificate());
                    student1.setUniversity(student.getUniversity());
                    return studentRepository.save(student1);
                }).orElseGet(() ->{
                    student.setId(id);
                    return studentRepository.save(student);
                });
    }
}
