
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

class BannerShimmmerEffect extends StatelessWidget {
  const BannerShimmmerEffect({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15.h,
      child: Shimmer.fromColors(
        highlightColor: Colors.white,
        baseColor: Colors.grey.shade300,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(
                  0, 0, 0, 10),
              decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(
                      Radius.circular(10))),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                    Radius.circular(10)),
                child: AspectRatio(
                  aspectRatio: 10 / 10,
                  child: Container(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
          ],
        ),
      ),
    );
  }
}

