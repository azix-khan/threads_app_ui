import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   title: const Image(
        //     image: AssetImage('assets/1.png'),
        //     height: 50,
        //     width: 50,
        //   ),
        //   centerTitle: true,
        // ),
        body: const SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/1.png'),
                      height: 50,
                      width: 30,
                    ),
                  ],
                ),
                Reusable(),
                Reusable(),
                ReusableRow(),
                Reusable(),
                Reusable(),
                Reusable(),
                ReusableRow(),
                Reusable(),
                Reusable(),
                Reusable(),
                Reusable(),
                Reusable(),
                Reusable(),
                Reusable(),
                Reusable(),
                Reusable(),
                Reusable(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "About"),
            BottomNavigationBarItem(
                icon: Icon(Icons.post_add), label: "Product"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: "Contact"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: "Settings"),
          ],
        ),
      ),
    );
  }
}

class Reusable extends StatelessWidget {
  const Reusable({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ListTile(
          title: Text(
            'azix khan',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/2.jpg'),
          ),
          trailing: Text("2 h"),
          subtitle: Text(
              '''Why do we usjd it? It is a long established fact that a reader will be distracted by the nd web page editors now use Letimes on purpose (injected humour and the like).'''),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.only(left: 70),
          child: Row(
            children: [
              Icon(Icons.favorite_border_outlined),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.comment),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.wifi_protected_setup_outlined),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.arrow_upward_rounded),
              SizedBox(
                width: 20,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class ReusableRow extends StatelessWidget {
  const ReusableRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10), // Image border
          child: SizedBox.fromSize(
            size: const Size.fromRadius(88), // Image radius
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage('assets/3.jpg'),
            ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10), // Image border
          child: SizedBox.fromSize(
            size: const Size.fromRadius(88), // Image radius
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage('assets/3.jpg'),
            ),
          ),
        ),
      ],
    );
  }
}
