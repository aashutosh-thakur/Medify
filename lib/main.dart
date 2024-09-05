import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  runApp(MedifyWEB());
}
class MedifyWEB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medify',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: UserSelectionPage(),
    );
  }
}
class UserSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medify - Keeps Every Record'),
        backgroundColor: Colors.teal, // Customize AppBar color
        elevation: 4, // Add elevation for a shadow effect
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal[200]!, Colors.teal[400]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 4,
                  blurRadius: 10,
                  offset: Offset(0, 3), // Changes position of shadow
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Select a Role',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.teal[700], // Customize text color
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginSignupPage(userType: 'Patient')),
                    );
                  },
                  icon: Icon(Icons.person, size: 18),
                  label: Text('Patient'),
                  style: ElevatedButton.styleFrom(
                    //   primary: Colors.teal, // Customize button color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage(userType: 'Doctor')),
                    );
                  },
                  icon: Icon(Icons.medical_services, size: 18),
                  label: Text('Doctor'),
                  style: ElevatedButton.styleFrom(
                    //   primary: Colors.teal, // Customize button color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HospitalPage()),
                    );
                  },
                  icon: Icon(Icons.local_hospital, size: 18),
                  label: Text('Hospital'),
                  style: ElevatedButton.styleFrom(
                    //primary: Colors.teal, // Customize button color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class HospitalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hospital Page'),
        backgroundColor: Colors.purple[800], // Consistent AppBar color
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.purple[100]!], // Gradient background
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HospitalLoginPage()),
                  );
                },
                icon: Icon(Icons.login, size: 18),
                label: Text('Login'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.purple[600], // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Sign Up'),
                      content: Text('Please mail to our official email with essential documents.'),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('OK'),
                        ),
                      ],
                    ),
                  );
                },
                icon: Icon(Icons.app_registration, size: 18),
                label: Text('Sign Up'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.purple[500], // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class HospitalLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hospital Login'),
        backgroundColor: Colors.purple[800], // Customize AppBar color
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Hospital ID',
                labelStyle: TextStyle(color: Colors.purple[800]),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple[800]!),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple[300]!),
                ),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.purple[800]),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple[800]!),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple[300]!),
                ),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HospitalDashboardPage()),
                );
                // Implement Hospital login logic here
              },
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.purple[600], // Text color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class LoginSignupPage extends StatelessWidget {
  final String userType;
  LoginSignupPage({required this.userType});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$userType Page'),
        backgroundColor: Colors.purple[800], // Custom AppBar color
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.purple[100]!], // Gradient background
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to $userType Portal',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple[800], // Custom text color
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage(userType: userType)),
                  );
                },
                icon: Icon(Icons.login, size: 18),
                label: Text('Login'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.purple[600], // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupPage(userType: userType)),
                  );
                },
                icon: Icon(Icons.app_registration, size: 18),
                label: Text('Sign Up'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.purple[500], // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class LoginPage extends StatelessWidget {
  final String userType;
  LoginPage({required this.userType});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$userType Login'),
        backgroundColor: Colors.deepPurple[700], // Customize AppBar color
        elevation: 4, // Add elevation for a shadow effect
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple[100]!, Colors.deepPurple[300]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: '$userType ID',
                labelStyle: TextStyle(color: Colors.deepPurple[800]),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple[800]!),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple[300]!),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.deepPurple[800]),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple[800]!),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple[300]!),
                ),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (userType == 'Doctor') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DoctorHomePage()),
                  );
                }
                if (userType == 'Patient') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PatientHomePage()),
                  );
                }
                // Implement Patient login logic here
              },
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.deepPurple[600], // Customize text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
class SignupPage extends StatefulWidget {
  final String userType;
  SignupPage({required this.userType});
  @override
  _SignupPageState createState() => _SignupPageState();
}
class _SignupPageState extends State<SignupPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController citizenshipController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController bloodGroupController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  late String uniqueCode;
  @override
  void initState() {
    super.initState();
    uniqueCode = _generateUniqueCode();
  }
  String _generateUniqueCode() {
    final random = Random();
    final code = List<int>.generate(6, (_) => random.nextInt(10));
    return code.join();
  }
  @override
  Widget build(BuildContext context) {
    var purple;
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.userType} Sign Up'),
        backgroundColor: Colors.purple[700], // Customize AppBar color
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple[100]!, Colors.purple[300]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                labelStyle: TextStyle(color: Colors.purple[800]),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple[800]!),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple[300]!),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: addressController,
              decoration: InputDecoration(
                labelText: 'Address',
                labelStyle: TextStyle(color: Colors.purple[800]),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple[800]!),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple[300]!),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: phoneNumberController,
              decoration: InputDecoration(
                labelText: 'Phone Number',
                labelStyle: TextStyle(color: Colors.purple[800]),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple[800]!),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple[300]!),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: citizenshipController,
              decoration: InputDecoration(
                labelText: 'Citizenship Number',
                labelStyle: TextStyle(color: Colors.purple[800]),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple[800]!),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple[300]!),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(color: Colors.purple[800]),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple[800]!),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple[300]!),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: bloodGroupController,
              decoration: InputDecoration(
                labelText: 'Blood Group',
                labelStyle: TextStyle(color: Colors.purple[800]),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple[800]!),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple[300]!),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(color: Colors.purple[800]),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple[800]!),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple[300]!),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text('Your unique code: $uniqueCode', style: TextStyle(color: Colors.purple[800])),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement signup logic here
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Verification Needed'),
                    content: Text('Please visit a nearby hospital to verify your identity and complete the signup process.'),
                    actions: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          Navigator.of(context).pop(); // Navigate back to previous screen
                        },
                        child: Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              child: Text('Sign Up'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.purple[600], // Customize text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class PatientHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patient Home Page'),
        backgroundColor: Colors.teal[800], // Darker shade for the AppBar
        elevation: 4, // Add elevation for a shadow effect
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal[50]!, Colors.teal[300]!], // Adjusted gradient
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            ListTile(
              leading: Icon(Icons.home, color: Colors.teal[700]), // Customize icon color
              title: Text('Home Page', style: TextStyle(color: Colors.teal[900])), // Customize text color
              onTap: () {
                // Navigate to home page or perform home page logic
              },
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.teal[700]), // Customize icon color
              title: Text('Patient Details', style: TextStyle(color: Colors.teal[900])), // Customize text color
              onTap: () {
                // Navigate to patient details page or perform patient details logic
              },
            ),
            ListTile(
              leading: Icon(Icons.local_hospital, color: Colors.teal[700]), // Customize icon color
              title: Text('Nearby Hospital', style: TextStyle(color: Colors.teal[900])), // Customize text color
              onTap: () {
                // Navigate to nearby hospital page or show nearby hospitals
              },
            ),
            ListTile(
              leading: Icon(Icons.local_pharmacy, color: Colors.teal[700]), // Customize icon color
              title: Text('Nearby Pharmacy', style: TextStyle(color: Colors.teal[900])), // Customize text color
              onTap: () {
                // Navigate to nearby pharmacy page or show nearby pharmacies
              },
            ),
          ],
        ),
      ),
    );
  }
}
// class DoctorHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Doctor Home Page'),
//         backgroundColor: Colors.purple[800], // Custom AppBar color
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.white, Colors.purple[100]!], // Gradient background
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: ListView(
//           padding: EdgeInsets.all(16.0),
//           children: [
//             ListTile(
//               leading: Icon(Icons.home, color: Colors.teal[700]), // Customize icon color
//               title: Text('Home Page', style: TextStyle(color: Colors.teal[900])), // Customize text color
//               onTap: () {
//                 // Navigate to home page or perform home page logic
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.person, color: Colors.teal[700]), // Customize icon color
//               title: Text('Patient Details', style: TextStyle(color: Colors.teal[900])), // Customize text color
//               onTap: () {
//                 // Navigate to patient details page or perform patient details logic
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.local_hospital, color: Colors.teal[700]), // Customize icon color
//               title: Text('Nearby Hospital', style: TextStyle(color: Colors.teal[900])), // Customize text color
//               onTap: () {
//                 // Navigate to nearby hospital page or show nearby hospitals
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.local_pharmacy, color: Colors.teal[700]), // Customize icon color
//               title: Text('Nearby Pharmacy', style: TextStyle(color: Colors.teal[900])), // Customize text color
//               onTap: () {
//                 // Navigate to nearby pharmacy page or show nearby pharmacies
//               },
//             ),
//           ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
class HospitalDashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hospital Dashboard'),
        backgroundColor: Colors.purple[800], // Consistent AppBar color
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple[100]!, Colors.purple[300]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            ListTile(
              leading: Icon(Icons.info, color: Colors.purple[700]), // Icon for Hospital Details
              title: Text('Hospital Details', style: TextStyle(color: Colors.purple[900])),
              onTap: () {
                // Navigate to hospital details page or show hospital details
              },
            ),
            ListTile(
              leading: Icon(Icons.person_add, color: Colors.purple[700]), // Icon for Create Doctor Account
              title: Text('Create Doctor Account', style: TextStyle(color: Colors.purple[900])),
              onTap: () {
                // Navigate to create doctor account page or open a form for doctor creation
              },
            ),
            ListTile(
              leading: Icon(Icons.verified_user, color: Colors.purple[700]), // Icon for Patient Verification
              title: Text('Patient Verification', style: TextStyle(color: Colors.purple[900])),
              onTap: () {
                // Navigate to patient verification page or display verification logic
              },
            ),
            ListTile(
              leading: Icon(Icons.local_hospital, color: Colors.purple[700]), // Icon for Emergency Visit
              title: Text('Emergency Visit', style: TextStyle(color: Colors.purple[900])),
              onTap: () {
                // Navigate to emergency visit page or show emergency details
              },
            ),
          ],
        ),
      ),
    );
  }
}
class DoctorHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor Home Page'),
        backgroundColor: Colors.purple[800], // Custom AppBar color
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.purple[100]!], // Gradient background
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            ListTile(
              leading: Icon(Icons.person, color: Colors.purple[700]), // Customize icon color
              title: Text('My Details', style: TextStyle(color: Colors.purple[900])), // Customize text color
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyDetailsPage()), // Create a new page for My Details
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.people, color: Colors.purple[700]), // Customize icon color
              title: Text('Patient Profile Visit', style: TextStyle(color: Colors.purple[900])), // Customize text color
              onTap: () {
               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => PatientProfileVisitPage()), // Create a new page for Patient Profile
               );
              },
            ),
            ListTile(
              leading: Icon(Icons.share, color: Colors.purple[700]), // Customize icon color
              title: Text('Share Experience', style: TextStyle(color: Colors.purple[900])), // Customize text color
              onTap: () {
               Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShareExperiencePage()), // Create a new page for Sharing Experience
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.warning, color: Colors.purple[700]), // Customize icon color
              title: Text('Emergency Cases', style: TextStyle(color: Colors.purple[900])), // Customize text color
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EmergencyCasesPage()), // Create a new page for Emergency Cases
               );
},
            ),
          ],
        ),
      ),
    );
  }
}
class MyDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Details'),
        backgroundColor: Colors.purple[800], // Custom AppBar color
      ),
      body: Center(
        child: Text(
          'Here are your details as a Doctor',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.purple[800]),
        ),
      ),
    );
  }
}

class EmergencyCasesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
class ShareExperiencePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
class PatientProfileVisitPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}


