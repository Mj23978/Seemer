import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileView extends ConsumerWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            // AvatarImageView(
            //   onTap: () {},
            //   child: Icon(
            //     Icons.person_outline,
            //     size: 100,
            //     color: Colors.grey[400],
            //   ),
            // ),
            const Text(
              "user.name",
              style: TextStyle(
                fontSize: 24,
                // color: textColor,
                fontWeight: FontWeight.w800,
              ),
            ),
            Row(
              children: [
                Icon(Icons.nights_stay_outlined),
                const SizedBox(width: 10),
                const Text(
                  'Dark Mode',
                  style: TextStyle(
                      // color: textColor,
                      ),
                ),
                Spacer(),
                Switch(
                  value: true,
                  onChanged: (val) {
                    // context
                    //     .read<SettingsSwitchCubit>()
                    //     .onChangeDarkMode(val);
                    // context.read<AppThemeCubit>().updateTheme(val);
                  },
                ),
              ],
            ),
            const SizedBox(height: 15),
            Builder(builder: (context) {
              return GestureDetector(
                // onTap: context.read<SettingsLogoutCubit>().logOut,
                onTap: () {},
                child: Row(
                  children:const [
                    Icon(Icons.logout),
                    const SizedBox(width: 10),
                    Text(
                      'Logout',
                      style: TextStyle(
                          // color: textColor,
                          ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_right),
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
