package net.javaguides.sms.controller;

import net.javaguides.sms.entity.student;
import net.javaguides.sms.entity.User;
import net.javaguides.sms.repository.userrep;
import net.javaguides.sms.service.studentserv;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class studentcontroll {

    @Autowired
    private studentserv studentService;

    @Autowired
    private userrep userRepository;

    // List all students
    @GetMapping("/students")
    public String listStudents(Model model) {
        model.addAttribute("students", studentService.getAllstudents());
        return "students";
    }

    // Show create form
    @GetMapping("/students/new")
    public String createStudentForm(Model model) {
        model.addAttribute("student", new student());
        return "create-student";
    }

    // Save student
    @PostMapping("/students")
    public String saveStudent(@ModelAttribute("student") student student) {
        studentService.savestudent(student);
        return "redirect:/students";
    }

    // Edit form
    @GetMapping("/students/edit/{id}")
    public String editStudentForm(@PathVariable Long id, Model model) {
        model.addAttribute("student", studentService.getstudentbyid(id));
        return "edit_student";
    }

    // Update student
    @PostMapping("/students/{id}")
    public String updateStudent(@PathVariable Long id, @ModelAttribute("student") student student) {
        studentService.updatestudent(student);
        return "redirect:/students";
    }

    // Delete student
    @GetMapping("/students/{id}")
    public String deleteStudent(@PathVariable Long id) {
        studentService.deletestudentbyid(id);
        return "redirect:/students";
    }

    // About page
    @GetMapping("/about")
    public String aboutPage() {
        return "about";
    }

    // Signup page
    @GetMapping("/signup")
    public String showSignupForm(Model model) {
        model.addAttribute("user", new User());
        return "signup";
    }

    // Handle signup
    @PostMapping("/signup")
    public String signup(@ModelAttribute("user") User user) {
        userRepository.save(user);
        return "redirect:/login";
    }

    // Login page
    @GetMapping("/login")
    public String showLoginForm(Model model) {
        model.addAttribute("user", new User());
        return "login";
    }

    // Handle login
    @PostMapping("/login")
    public String login(@ModelAttribute("user") User user, Model model) {
        User existingUser = userRepository.findByUsernameAndPassword(user.getUsername(), user.getPassword());
        if (existingUser != null) {
            return "redirect:/students";
        } else {
            model.addAttribute("error", "Invalid email or password");
            return "login";
        }
    }
    @GetMapping("/home")
    public String homePage() {
        return "home";
    }
   
    @GetMapping("/main")
    public String home() {
    	 return "main";  // View name like index.jsp or index.html
    }
}
