import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class XdDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: // Adobe XD layer: 'Option A' (group)
          ListView(
        children: [
          Container(
            padding: EdgeInsets.all(50),
            color: Colors.red,
            height: 200,
            width: double.infinity,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 270.0, 70.0),
                  size: Size(270.0, 70.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child:
                      // Adobe XD layer: 'card' (shape)
                      Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0),
                      color: const Color(0xfff6f8fa),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(18.0, 23.0, 12.0, 24.0),
                  size: Size(270.0, 70.0),
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'A.' (text)
                      SingleChildScrollView(
                          child: Text(
                    'A.',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 18,
                      color: const Color(0xff8e8f93),
                    ),
                    textAlign: TextAlign.left,
                  )),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(43.0, 23.0, 187.0, 24.0),
                  size: Size(270.0, 70.0),
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'Ai' (text)
                      Text(
                    'Adobe Illustrator',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 18,
                      color: const Color(0xff8e8f93),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(50),
            color: Colors.red,
            height: 200,
            child: // Adobe XD layer: 'Option B' (group)
                Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 270.0, 70.0),
                  size: Size(270.0, 70.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child:
                      // Adobe XD layer: 'active card' (shape)
                      Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0),
                      color: const Color(0xfff6f8fa),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff0bc763)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x006df2ab),
                          offset: Offset(0, 12),
                          blurRadius: 18,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(226.0, 23.0, 24.0, 24.0),
                  size: Size(270.0, 70.0),
                  pinRight: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'correct icon' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 24.0, 24.0),
                        size: Size(24.0, 24.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child:
                            // Adobe XD layer: 'accept-path' (shape)
                            SvgPicture.string(
                          '<svg viewBox="0.0 0.0 24.0 24.0" ><path  d="M 12 24 C 5.372582912445068 24 0 18.62741661071777 0 12 C 0 5.372582912445068 5.372582912445068 0 12 0 C 18.62741661071777 0 24 5.372582912445068 24 12 C 24 18.62741661071777 18.62741661071777 24 12 24 L 12 24 Z" fill="#0bc763" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>',
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(7.0, 6.0, 10.0, 11.0),
                        size: Size(24.0, 24.0),
                        fixedWidth: true,
                        fixedHeight: true,
                        child:
                            // Adobe XD layer: 'accept-path' (shape)
                            SvgPicture.string(
                          '<svg viewBox="7.0 6.0 10.0 11.0" ><path transform="translate(6.99, 6.0)" d="M 4.926811695098877 10.33742523193359 C 4.89130163192749 10.48569583892822 4.815109252929688 10.62110996246338 4.706811428070068 10.72842597961426 C 4.517907619476318 10.91853904724121 4.253533840179443 11.01364040374756 3.986811399459839 10.98742580413818 C 3.558431625366211 11.01732158660889 3.167117595672607 10.74465084075928 3.046811580657959 10.33242511749268 L 0.2268114984035492 7.514425754547119 C -0.08917348086833954 7.158316135406494 -0.07315734773874283 6.61771821975708 0.2633556127548218 6.280940532684326 C 0.5998685359954834 5.944162368774414 1.140453577041626 5.92772102355957 1.496811509132385 6.243425369262695 L 3.676811456680298 8.427425384521484 L 8.136811256408691 0.52042555809021 C 8.266191482543945 0.2836945950984955 8.485732078552246 0.1092812940478325 8.745587348937988 0.0367853082716465 C 9.005443572998047 -0.03571068122982979 9.283566474914551 -0.0001384379720548168 9.516811370849609 0.1354255527257919 C 9.999494552612305 0.4332487881183624 10.15880966186523 1.060329079627991 9.876811027526855 1.552425503730774 L 4.926811695098877 10.33742523193359 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>',
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(18.0, 23.0, 13.0, 24.0),
                  size: Size(270.0, 70.0),
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'B.' (text)
                      SingleChildScrollView(
                          child: Text(
                    'B.',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 18,
                      color: const Color(0xff0bc763),
                    ),
                    textAlign: TextAlign.left,
                  )),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(43.0, 23.0, 196.0, 24.0),
                  size: Size(270.0, 70.0),
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'XD' (text)
                      Text(
                    'Adobe XD',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 18,
                      color: const Color(0xff0bc763),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
