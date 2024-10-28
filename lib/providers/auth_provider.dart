// ignore_for_file: non_constant_identifier_names, deprecated_member_use

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:moulai1/helpers/helper.dart';
import 'package:moulai1/index.dart';
import 'package:moulai1/models/reports.dart';

import '../dashboard/congratsScreen.dart';
import '../helpers/api.dart';
import '../models/LinkRequest.dart';
import '../models/Linkedaccounts.dart';
import '../models/QuestionsRequest.dart';
import '../models/catagorizedTransactions.dart';
import '../models/expenseAnalyzed.dart';
import '../models/expensesCategories.dart';
import '../models/finishedPercanteg.dart';
import '../models/jobsModel.dart';
import '../models/monthlyDeduction.dart';
import '../models/signUpModel.dart';
import '../models/transactionsModel.dart';
import '../models/userjobs.dart';
import '../summary/summary_widget.dart';

class Selectedjob {
  String id;
  String jobName;

  Selectedjob({required this.id, required this.jobName});
}

// JobsSearch
class AuthProvider extends ChangeNotifier {
  bool showLoading = false;
  List<Job>? jobs = [];
  List<String> navigationSelection = [];
  List<Answer>? answer = [];
  double deductionNumber = 0;
  int index = 0;
  bool homeSelected = false;
  bool transportExpensesSelected = false;
  bool homeNavigated = false;
  bool travevselected = false;
  bool travelNavigated = false;
  String thevalue = '2023';
  Selectedjob? selectedJob = Selectedjob(id: ' 0', jobName: 'dasda');
  String? selectedWorkType;
  List selectedDeductionList = [];
  List selectPlanList = [];
  List planList = [];
  List selectedDeductionForRemovingNone = [];

  List slectedJobsIds = [];
  final http = HttpService();
  var email, phone_number, first_name, last_name;
  bool weareInThirdParty = false;
  bool loading = false;
  bool loadingNewYearData = false;

  Future signUp(ctx, third_party) async {
    // loading = true;
    weareInThirdParty = third_party == 0 ? false : true;
    notifyListeners();
    // 0927682352
    // / 'phone_number': "61488824684",

    var phone = {"phone_number": phone_number.toString()};
    var body = {
      "email": email.toString(),
      "first_name": first_name,
      "middle_name": last_name,
      "last_name": last_name,
      "device_token": "device_token",
      "third_party": third_party,
      "account_type": selectedWorkType,
      "answer_ids": selectedDeductionList,
      "job_ids": slectedJobsIds
    };

    var finalBody;
    if (third_party == 1) {
      finalBody = body;
    } else {
      finalBody = {...body, ...phone};
    }
    try {
      print('_________$finalBody');
      var response = await http.pos('sign_up', finalBody);
      log('response=====${response.data}');

      // await setUserToken(response.data['data']['user']['token']);

      await Navigator.push(
        ctx,
        MaterialPageRoute(
          builder: (_) => SignInVerificationWidget(isFromRegister: true),
        ),
      );

      // if (weareInThirdParty == false) {
      //   await Navigator.push(
      //     ctx,
      //     MaterialPageRoute(
      //       builder: (_) => SignInVerificationWidget(isFromRegister: true),
      //     ),
      //   );
      // } else {
      //   if (ctx != null) {
      //     await Navigator.push(
      //       ctx,
      //       MaterialPageRoute(builder: (_) => ConnectBankWidget()),
      //     );
      //   }
      //   print('_________________');
      // }

      // return response.data['success'];
    } on DioError catch (e) {
      loading = false;
      print(e.response!.statusCode.toString());
      notifyListeners();
      if (e.response!.statusMessage.toString() == 'Found') {
        Navigator.push(
          ctx,
          MaterialPageRoute(builder: (_) => NoAccountWidget()),
        );
        // do your stuff here
      } else {
        // Fluttertoast.showToast(
        //     msg: "Something Went Wronge please try again ",
        //     toastLength: Toast.LENGTH_SHORT,
        //     gravity: ToastGravity.BOTTOM,
        //     timeInSecForIosWeb: 2,
        //     backgroundColor: Colors.red,
        //     textColor: Colors.white,
        //     fontSize: 16.0);
        Navigator.push(
          ctx,
          MaterialPageRoute(builder: (_) => NoAccountWidget()),
        );
      }

      print(e.response!.statusMessage.toString());
    }
  }

  Future login(ctx, currentEmail, third_party) async {
    loading = true;
    notifyListeners();
    var body = {"email": currentEmail};
    print("======================================$body");
    try {
      print(body);
      var response = await http.pos(
        'login',
        body,
      );
      print(response.data);

      notifyListeners();

      if (third_party == 1) {
        email = response.data['data']['user']['email'];
        await setUserEmail(response.data['data']['user']['email']);
      }
      await Navigator.push(
        ctx,
        MaterialPageRoute(
          builder: (_) => SignInVerificationWidget(isFromRegister: false),
        ),
      );
      loading = false;

      return response.data['success'];
    } on DioError catch (e) {
      loading = false;
      notifyListeners();
      if (e.response!.statusMessage.toString() == 'Not Found') {
        // Fluttertoast.showToast(
        //     msg: "Email is not registered",
        //     toastLength: Toast.LENGTH_SHORT,
        //     gravity: ToastGravity.BOTTOM,
        //     timeInSecForIosWeb: 2,
        //     backgroundColor: Colors.red,
        //     textColor: Colors.white,
        //     fontSize: 16.0);
        Navigator.push(
          ctx,
          MaterialPageRoute(builder: (_) => NoAccountWidget()),
        );
        //testinngg
        // await Navigator.push(
        //   ctx,
        //   MaterialPageRoute(
        //     builder: (_) => SignInVerificationWidget(
        //       isFromRegister: true,
        //     ),
        //   ),
        // );
        // do your stuff here
      } else {
        // Fluttertoast.showToast(
        //     msg: "Something Went Wronge please try again ",
        //     toastLength: Toast.LENGTH_SHORT,
        //     gravity: ToastGravity.BOTTOM,
        //     timeInSecForIosWeb: 2,
        //     backgroundColor: Colors.red,
        //     textColor: Colors.white,
        //     fontSize: 16.0);
        Navigator.push(
          ctx,
          MaterialPageRoute(builder: (_) => NoAccountWidget()),
        );
      }

      print(e.response!.statusMessage.toString());
    } catch (e) {
      print(e);
    }
  }

  SignUpRequest? signUpRequest;

  varifyCode(ctx, code) async {
    loading = true;
    notifyListeners();
    var body = {"email": email, "code": code.toString()};
    try {
      print(body);
      var response = await http.pos('verify_email', body);
      print(response.data);
      signUpRequest = SignUpRequest.fromJson(response.data);
      setUserToken(signUpRequest!.data!.user!.token);
      setUserName(signUpRequest!.data!.user!.firstName);
      setUserEmail(signUpRequest!.data!.user!.email);
      setLastName(signUpRequest!.data!.user!.lastName);

      loading = false;
      notifyListeners();
      return response.data['success'];
    } catch (e) {
      loading = false;
      notifyListeners();
      Fluttertoast.showToast(
          msg: "Code Is Not Correct Please Enter Correct Code",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 2,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
      print(e);
    }
  }

  GetQa? questionsModel;

  void getQuestionsRequest(
    ctx,
  ) async {
    loading = true;
    notifyListeners();

    try {
      var response = await http.get('get/question');
      print(response);
      jobsSearch('');
      print('\nresponse.data =>\n${response.data}\n\n');
      questionsModel = GetQa.fromJson(response.data);
      // loading = false;
      notifyListeners();
      return response.data['success'];
    } catch (e) {
      loading = false;
      notifyListeners();

      print(e);
    }
  }

  GetLinkRequest? getLinkRequest;

  getBasiqURL(ctx, {required String? phoneNumber}) async {
    loading = true;
    notifyListeners();
    // t7550938@gmail.com
    // Use Amex
    // Yessabar2
    // Integral23

    // Try bank : westpac
    // Id : 75313349
    // Password : In1808
    log('phoneNumber: $phoneNumber');

    var body = {
      // 'phone_number': "61488824684",
      'phone_number': phoneNumber == null
          ? ''
          : phoneNumber.isEmpty
              ? phone_number.toString()
              : phoneNumber,
    };
    print('shatha--- phone_number: $phone_number');

    try {
      print(body);
      var response = await http.postUrl('conect/account/bank', body);
      log('basiqUrl response: $response');
      print(response.data);
      getLinkRequest = GetLinkRequest.fromJson(response.data);
      loading = false;
      notifyListeners();
      return getLinkRequest!.data!.links!.public;
    } catch (e) {
      print('catch: ${e.toString()}');
      loading = false;
      notifyListeners();
      Fluttertoast.showToast(
          msg: "Something Went Wronge Please Try Again",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 2,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
      print(e);
    }
  }

  JobsSearch? jobsSearchitems;

  void jobsSearch(searchString) async {
    loading = true;
    notifyListeners();
    var body = {"filter": searchString};
    try {
      print(body);
      var response;

      if (searchString == '') {
        response = await http.get(
          'get/all/jobs',
        );
        print(response.data);
        print("response.dataChart ${response}");
        print("response.dataChart ${response?.data}");
        jobsSearchitems = JobsSearch.fromJson(response.data);
      } else {
        response = await http.get(
          'get/all/jobs?filter=$searchString',
        );
        await Future.delayed(Duration(seconds: 3));

        jobsSearchitems = JobsSearch.fromJson(response.data);
      }

      loading = false;
      notifyListeners();

      return response.data['success'];
    } catch (e) {
      loading = false;
      notifyListeners();

      print(e);
    }
  }

  String? userName;
  String? searchtext;
  Transactions? Transactionsitems;
  int selectedFilterlist = 0;
  List<String> sortbyList = [
    'Newest',
    'Oldest',
    'Highest amount',
    'Lowest amount'
  ];
  List transactionStaticTypesList = [
    'NON-DEDUCTION',
    'DEDUCTION',
    'LATER',
    'POSSIBLE (A.I)',
    'NON-POSSIBLE (A.I)',
  ];
  var deduction_status, sort, account_id;

  TransactionsGet({String? search}) async {
    searchtext = search;
    loading = true;
    userName = await getUserName();
    email = await getUserEmail();
    last_name = await getLastName();
    notifyListeners();
    var body = {
      "deduction_status": deduction_status,
      "sort": sort == null ? '' : sortbyList.indexOf(sort),
      "account_id": account_id,
      "search": searchtext,
    };
    try {
      print("body=======$body");
      var response;
      await getUserAccounts();
      print('shatha123');

      response = await http.postUrl('get/all/transaction', body);
      // print("00000response00"+response);
      Transactionsitems?.data?.clear();
      Transactionsitems = Transactions.fromJson(response.data);
      // print('object ${Transactionsitems!.data!.length}');
      loading = false;
      notifyListeners();
      return response.data['success'];
    } catch (e) {
      loading = false;
      notifyListeners();
      print("shatha-----------${e.toString()}");
    }
  }

  clearAll() {
    deduction_status = null;
    sort = null;
    account_id = null;
    notifyListeners();
    TransactionsGet(search: '');
  }

  Transactions? laterTransactionsitems;
  double totalLaterExpenses = 0;

  void LaterTransactionsGet() async {
    loading = true;
    notifyListeners();
    var body = {
      "deduction_status": 'LATER',
      "account_id": account_id,
    };
    try {
      print(body);
      var response;

      response = await http.postUrl('get/all/transaction', body);
      print(response.data);
      totalLaterExpenses = 0;
      laterTransactionsitems = Transactions.fromJson(response.data);
      laterTransactionsitems!.data!.forEach((e) {
        totalLaterExpenses += double.parse(e.amount.toString());
      });
      loading = false;
      notifyListeners();
      return response.data['success'];
    } catch (e) {
      loading = false;
      notifyListeners();

      print(e);
    }
  }

  Accounts? accounts;

  getUserAccounts() async {
    loading = true;
    notifyListeners();
    var body = {};
    try {
      print(body);
      var response = await http.getauth('myAccounts');
      print("00000012222response.data: ${response.data}");
      accounts = Accounts.fromJson(response.data);
      print("accountsaccounts.data: ${accounts?.data}");
      if (accounts!.data!.length > 0) {
        loading = false;
        notifyListeners();
        return true;
      } else {
        loading = false;
        notifyListeners();
        return false;
      }
    } catch (e) {
      loading = false;
      notifyListeners();
      return false;
      // Fluttertoast.showToast(
      //     msg: "Something Went Wronge Please Try Again",
      //     toastLength: Toast.LENGTH_SHORT,
      //     gravity: ToastGravity.BOTTOM,
      //     timeInSecForIosWeb: 2,
      //     backgroundColor: Colors.red,
      //     textColor: Colors.white,
      //     fontSize: 16.0);
    }
  }

  Reports? reports;
  int totalDeduction = 0;

  getAmountsDeductions() async {
    print('getAmountsDeductions----');
    loading = true;
    notifyListeners();
    try {
      var response = await http.getauth('report/deduction/amount');
      print(response.data);
      log(response.toString());
      reports = Reports.fromJson(response.data);
      totalDeduction = reports!.data!.deduction!.toInt();
      print('TotalDeduction: $totalDeduction');
      if ((accounts?.data ?? []).isNotEmpty) {
        loading = false;
        notifyListeners();
        return true;
      } else {
        loading = false;
        notifyListeners();
        return false;
      }
    } catch (e) {
      print('loading--------${e.toString()}');
      loading = false;
      notifyListeners();

      print(e);
    }
  }

  updateTransactionStatus(id, status,
      {bool updateList = true, fromReview = false}) async {
    loading = true;
    notifyListeners();
    var body = {"id": id, "deduction_status": status};
    try {
      print(body);
      var response;

      response = await http.postUrl('update/transaction', body);
      loading = false;
      if (updateList == true) {
        TransactionsGet();
        LaterTransactionsGet();
        getpercent();
      }

      notifyListeners();
      return response.data['success'];
    } catch (e) {
      loading = false;
      notifyListeners();

      print(e);
    }
  }

  ExpensesCategories? categories;
  List<ChartData> data = [];

  void getCategoriess(ctx) async {
    try {
      loading = true;
      notifyListeners();
      var response = await http.getauth('deduction/category/withAmount');
      print("getCategoriess: ${response.data}");
      categories = ExpensesCategories.fromJson(response.data);
      getmonthlyDeduction();

      loading = false;
      notifyListeners();
    } catch (e) {
      loading = false;
      notifyListeners();

      print(e);
    }
  }

  ExpensesCategories? categoriesPossible;

  void getCategoriessPossible() async {
    try {
      loading = true;
      notifyListeners();
      var response = await http.getauth('possible/category/withAmount');
      categoriesPossible = ExpensesCategories.fromJson(response.data);
      loading = false;
      notifyListeners();
    } catch (e) {
      loading = false;
      notifyListeners();

      print(e);
    }
  }

  CategoriesedTransactions? categoriesedTransactions;
  double itemCount = 0;
  int expensesTransactionsitemCount = 0;
  bool reviewPageLoading = false;

  Future<double> getCategoriesedTransactions(ctx,
      {bool init = false, frontransaction = false}) async {
    try {
      reviewPageLoading = true;
      notifyListeners();
      itemCount = 0;
      expensesTransactionsitemCount = 0;

      var response = await http.getauth('get/all/transaction/with/deductions');
      print('-----response.data${response.data}');
      categoriesedTransactions =
          CategoriesedTransactions.fromJson(response.data);
      categoriesedTransactions!.data!.forEach((element) {
        element.transactions!.forEach((e) {
          // print('heey' + double.parse(e.amount!).toString());

          itemCount += double.parse(e.amount!.toString());

          // print('object ${e.amount}');
        });
      });
      categoriesedTransactions!.data!.forEach((element) {
        expensesTransactionsitemCount += element.transactions!.length;
      });
      await getpercent();
      if (percent.toString() == 100.toString()) {
        if (frontransaction == true) {
          print('hereee');
          await Navigator.push(
            ctx,
            MaterialPageRoute(
              builder: (_) => Congrats(),
            ),
          );
        }
      }
      getAmountsDeductions();
      // if (init == false) {
      //   if (expensesTransactionsitemCount.toInt() == 1) {
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(
      //         builder: (_) => DashboardWidget(),
      //       ),
      //     );
      //   }
      // }

      reviewPageLoading = false;
      notifyListeners();

      return itemCount;
    } catch (e) {
      loading = false;
      notifyListeners();
      return 0;
    }
  }

  var percent;

  getpercent() async {
    try {
      loading = true;
      notifyListeners();

      var response = await http.getauth('get/percentage');
      print(response.data);
      percent = Percentage.fromJson(response.data).data!.percentage;
      loading = false;
      notifyListeners();
    } catch (e) {
      loading = false;
      notifyListeners();
      return 0;
    }
  }

  /// expense analyzed

  ExpenseAnalyzed? expenseAnalayzed;

  getExpenseAnalyzed() async {
    try {
      loading = true;
      notifyListeners();
      var response =
          await http.postUrl('get/all/count/data/transactions', {'year': 2023});
      print(response.data);
      expenseAnalayzed = ExpenseAnalyzed.fromJson(response.data);

      loading = false;
      notifyListeners();
    } catch (e) {
      loading = false;
      notifyListeners();

      print(e);
    }
  }

  UserJobs? userJobs;

  getuserJobs() async {
    try {
      loading = true;
      notifyListeners();
      var response = await http.getauth('myJobs');
      print(response.data);
      userJobs = UserJobs.fromJson(response.data);

      loading = false;
      notifyListeners();
    } catch (e) {
      loading = false;
      notifyListeners();

      print(e);
    }
  }

  sendCpa(sub, desc) async {
    try {
      loading = true;
      print({'subject': sub, 'description': desc});
      notifyListeners();
      var response = await http
          .postUrl('contact_us', {'subject': sub, 'description': desc});
      print(response.data);
      expenseAnalayzed = ExpenseAnalyzed.fromJson(response.data);

      loading = false;
      notifyListeners();
    } catch (e) {
      loading = false;
      notifyListeners();

      print(e);
    }
  }

  //monthly

  MonthlyDeduction? monthlyDeduction;
  double maxNumber = 0;

  getmonthlyDeduction() async {
    print('getmonthlyDeduction----');

    try {
      loading = true;
      notifyListeners();
      var response = await http.postUrl('monthly/report/deduction/amount', {});
      print(response.data);
      monthlyDeduction = MonthlyDeduction.fromJson(response.data);
      int indexxx = 0;
      monthlyDeduction!.data!.forEach((month) {
        data.add(ChartData(month.name!.substring(0, 3), month.amount!));
        if (maxNumber < month.amount!) {
          maxNumber = month.amount!;
          notifyListeners();
        }
        indexxx += 1;
      });
      loading = false;
      notifyListeners();
    } catch (e) {
      loading = false;
      notifyListeners();

      print(e);
    }
  }

  changeYear(ctx, year) async {
    try {
      loadingNewYearData = true;
      notifyListeners();
      var response = await http.postUrl('user/update/year', {'year': year});
      // log('779' + response.toString());
      loadingNewYearData = false;
      print(response.data);
      await Navigator.pushReplacement(
        ctx,
        MaterialPageRoute(
          builder: (_) => DashboardWidget(),
        ),
      );
      notifyListeners();
    } catch (e) {
      loadingNewYearData = false;
      notifyListeners();

      print(e);
    }
  }
}
