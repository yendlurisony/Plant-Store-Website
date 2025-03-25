function validateForm() {
function validateName(name) {
        return /^[a-zA-Z]+$/.test(name);
}

function validateUsername(username) {
        return /^[a-zA-Z0-9]{8}$/.test(username);
}

function validatePassword(password) {
        // Password must contain at least one uppercase letter, one lowercase letter, one digit, and be at least 8 characters long
        return /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,}$/.test(password);
}

function validateAge(age) {
        return /^[0-9]+$/.test(age);
}

function validateAddress(address) {
        return /^[a-zA-Z\s]+$/.test(address);
}

 document.getElementById("registrationForm").addEventListener("submit", function(event) {
        event.preventDefault();

        let name = document.getElementById("name").value;
        let username = document.getElementById("username").value;
        let password = document.getElementById("password").value;
        let age = document.getElementById("age").value;
        let address = document.getElementById("address").value;

        if (!validateName(name)) {
            alert("Name must contain only alphabets.");
            return;
        }

        if (!validateUsername(username)) {
            alert("Username must be 8 characters long and contain only letters and numbers.");
            return;
        }

        if (!validatePassword(password)) {
            alert("Password must be at least 8 characters long and contain at least one uppercase letter, one lowercase letter, and one digit.");
            return;
        }

        if (!validateAge(age)) {
            alert("Age must contain only numbers.");
            return;
        }

        if (!validateAddress(address)) {
            alert("Address must contain only alphabets.");
            return;
        }

        // If all validations pass, you can proceed with form submission or other actions
        //alert("Form submitted successfully!");
    });
}
