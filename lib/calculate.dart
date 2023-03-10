import 'package:life_expectancy/user_data.dart';

class Calculate {
  UserData _userData;

  Calculate(this._userData);

  double calculation() {
    double sonuc;

    sonuc = 70 + _userData.gymDay - _userData.smokingCigarette;
    sonuc = sonuc + (_userData.size / _userData.kilogram);

    if (_userData.selectGender == 'WOMEN') {
      return sonuc + 3;
    } else {
      return sonuc;
    }
  }
}
