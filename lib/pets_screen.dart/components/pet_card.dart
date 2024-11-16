import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pet_store/core/utils/app_colors.dart';
import 'package:pet_store/core/utils/app_styles.dart';
import 'package:pet_store/pets_screen.dart/data/pets_data.dart';

class PetCard extends StatelessWidget {
  const PetCard({super.key, required this.petData});
  final Pet petData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
          color: AppColors.whiteColor, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          CachedNetworkImage(
            imageUrl: petData.petLink ?? "",
            placeholder: (context, url) => const CircularProgressIndicator(
              color: AppColors.secondaryColor,
            ),
            errorWidget: (context, url, error) => const Icon(
              Icons.error,
              color: AppColors.secondaryColor,
            ),
           width: 100.w,
           height: 80.h,
           fit: BoxFit.cover,
          ),
          10.horizontalSpace,
          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(petData.petName ?? "",style: AppStyles.blackW500TextSized22,),
              8.verticalSpace,
              Text(petData.petType ?? "",style: AppStyles.greyW500TextSized14,),
              8.verticalSpace,
              Row(
                children: [
                  Image.asset("assets/pawprintImg.png"),
                  4.horizontalSpace,
                  Text("Pet Love : ${petData.petLoveNumber}",style: AppStyles.orangeW600TextSized16,)
                ],
              )

            ],
          )
        ],
      ),
    );
  }
}
