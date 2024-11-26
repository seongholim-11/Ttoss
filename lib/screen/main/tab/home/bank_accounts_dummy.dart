import 'package:fast_app_base/screen/main/tab/home/banks_dumy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo_bank_account.dart';

final bankAccountShinhan1 =
    BankAccount(backShinhan, 3000000, accountTypeName: "신한 주거래 우대통장(저축예금)");
final bankAccountShinhan2 =
    BankAccount(backShinhan, 50000000, accountTypeName: "저축예금");
final bankAccountShinhan3 =
    BankAccount(backShinhan, 300000000, accountTypeName: "저축예금");
final bankAccountKakao1 = BankAccount(backKakao, 1000000);
final bankAccountToss =
    BankAccount(backTtoss, 780000, accountTypeName: "입출금통장");

void main(List<String> args) {
  print(bankAccounts[1].accountTypeName);

  for (final item in bankAccounts) {
    print(item.accountTypeName);
  }
}

final List<BankAccount> bankAccounts = [
  bankAccountKakao1,
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountToss
];
