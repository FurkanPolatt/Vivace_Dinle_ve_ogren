import 'package:flutter/material.dart';

class BassExtra extends StatelessWidget {
  const BassExtra({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _controller = PageController();
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Opacity(
          opacity: 0.80,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: _buildBody(decoration: BoxDecoration(), controller: _controller),
    );
  }
}

const _boxHeight = 250.0;
const _boxHeight2 = 450.0;

_buildBody(
    {required PageController controller, required BoxDecoration decoration}) {
  return Column(
    children: <Widget>[
      Stack(
        children: <Widget>[
          _buildPageView2(),
        ],
      ),
    ],
  );
}

_buildPageView2() {
  return Expanded(
    child: Container(
        height: _boxHeight2,
        margin: EdgeInsets.only(top: _boxHeight / 50.1),
        child: PageView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Expanded(
              child: Card(
                elevation: 50,
                shadowColor: Colors.black,
                color: Colors.transparent,
                child: SizedBox(
                  width: 500,
                  height: 300,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Başlık',
                          style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 238, 254, 239),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui ',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        )),
  );
}
