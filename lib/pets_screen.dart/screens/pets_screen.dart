import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_store/core/components/search_form_field.dart';
import 'package:pet_store/core/utils/app_colors.dart';
import 'package:pet_store/core/utils/app_styles.dart';
import 'package:pet_store/main.dart';
import 'package:pet_store/pets_screen.dart/components/pet_card.dart';
import 'package:pet_store/pets_screen.dart/data/pets_data.dart';

class PetsScreen extends StatelessWidget {
  const PetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    List<Pet> petList = [
      Pet("Dog", "Golden", 20,
          "https://drive.google.com/uc?export=view&id=1SVXNgYjWidATdPpPfswlWtS31DnhjB-2"),
      Pet("Lablador", "Golden", 18,
          "https://drive.google.com/uc?export=view&id=152WsHjSIgQUy0gS_WQEo3mWOSMK8v1kM"),
      Pet("Dog", "Cardigan", 12,
          "https://drive.google.com/uc?export=view&id=1fHoNz-wywIk_ta4RIJzXm7yLrObyKDty"),
      Pet("Cat", "Street Cat", 17,
          "https://drive.google.com/uc?export=view&id=1SL7ZirhhuTpgk7wRe_t0vB_3xD9iqCGm"),
      Pet("Cat", "White Cat", 19,
          "https://drive.google.com/uc?export=view&id=1C_S4qQ4wck3LasJ1Bs5Lz8yhwN60SmTH"),
      Pet("Cat", "Kitten", 18,
          "https://drive.google.com/uc?export=view&id=1qQILdlJ3gtm_0VBzmSoqgTbisVZ-7kr9"),
      Pet("Bird", "House Bird", 15,
          "https://drive.google.com/uc?export=view&id=1LbUWy1JxxkSGSd4cu4dMBK5ChilbFud8"),
      Pet("Bird", "Parrot", 14,
          "https://drive.google.com/uc?export=view&id=1B9eAFq_9D75eXtn0BJM6gtq811eby6QN"),
      Pet("Bird", "Pink Bird", 15,
          "https://drive.google.com/uc?export=view&id=1Sg8plSKxYt1kRQn_DH_OdvHiE2FoeQah"),
      Pet("Bird", "Talking Parrot", 17,
          "https://drive.google.com/uc?export=view&id=1Sg8plSKxYt1kRQn_DH_OdvHiE2FoeQah"),
      Pet("Rat", "Hamster", 9,
          "https://drive.google.com/uc?export=view&id=11tVuPyyv23mByiFNHrJRuE55gyhMrGA2"),
      Pet("Rabbit", "Brown Rabbit", 16,
          "https://drive.google.com/uc?export=view&id=1huzYq6qlL4BiFzXqD7SuMYM67J5Ea0bV"),
      Pet("Rabbit", "Gray Rabbit", 17,
          "https://drive.google.com/uc?export=view&id=1lxI-yXMPIp2nz2MLc7duJ5Sw6lrA-AsJ"),
    ];

    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.greyColor,
        title: Text(
          "Pet Market",
          style: AppStyles.blackW600TextSized24,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SearchFormField(
                controller: searchController,
                hintText: "Search by pet type",
                prefix: const Icon(
                  Icons.search,
                  color: AppColors.secondaryColor,
                ),
              ),
              20.verticalSpace,
              Container(
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(color: AppColors.greyColor),
                child: Column(
                  children: petList.map((item) {
                    return PetCard(
                      petData: item,
                    );
                  }).toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
