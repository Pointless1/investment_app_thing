import 'package:flutter/material.dart';

void main() => runApp(Invest());

class Invest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Begin(),
    );
  }
}

class Begin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            AppBar(title: Text('Investment App'),
              backgroundColor: Color(32),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'You will begin with \$1000. The goal is to choose'
                    ' the options to invest in and finish with maximum proffit.',
                style: Theme.of(context).textTheme.display1,
              ),
            ),
            FloatingActionButton(
              child: Text('Begin',
                style: Theme.of(context).textTheme.button,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

}

class MainPage extends StatelessWidget{
  var balance = 1000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          AppBar(title: Text('Current Balance: \$' + balance.toString(),
            ),
          ),
          RaisedButton(
            child: Text('Jump into a volcano'),
            onPressed: () {
              balance = 0;
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PageLose(balance)),
              );
            },
          ),
          RaisedButton(
            child: Text('Don\'t jump into a volcano'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PageThree(balance)),
              );
            },
          ),
        ],
      ),
    );
  }
}

class PageLose extends StatelessWidget {
  final int balance;
  PageLose(this.balance, {Key key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(50),
          child: Column(
            children: <Widget>[
              Text('You lost. You suck. Final score: \$' + balance.toString()),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Begin()),
                  );
                },
                child: Text('Restart'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PageThree extends StatelessWidget {
  final int balance;
  PageThree(this.balance, {Key key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
          },
          child: Text(balance.toString()),
        ),
      ),
    );
  }
}

class PageFour extends StatelessWidget {
  final int balance;
  PageFour(this.balance, {Key key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
          },
          child: Text(balance.toString()),
        ),
      ),
    );
  }
}


