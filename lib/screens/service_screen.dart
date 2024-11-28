import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_hub/components/apartment_size_component.dart';
import 'package:home_hub/main.dart';
import 'package:home_hub/models/active_bookings_model.dart';
import 'package:home_hub/models/combos_services_model.dart';
import 'package:home_hub/models/renovate_services_model.dart';
import 'package:home_hub/utils/date.dart' as date;
import 'package:home_hub/utils/widgets.dart';

import '../custom_widget/space.dart';
import '../models/services_model.dart';
import '../utils/colors.dart';
import 'order_summery_screen.dart';

class ServiceScreen extends StatefulWidget {
  final int index;
  final bool fromRenovate;
  final bool fromBooking;
  final int serviceIndex;
  final int providerIndex;

  const ServiceScreen({
    Key? key,
    this.index = 0,
    this.fromRenovate = false,
    this.fromBooking = false,
    this.serviceIndex = 0,
    this.providerIndex = 0,
  }) : super(key: key);

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  List<DateTime> currentMonthList = [];

  DateTime currentDateTime = DateTime.now();

  int monthIndex = 0;

  String selectedMonth = "";
  String selectedMonthShort = "";
  String selectedYear = "";

  TimeOfDay _time = TimeOfDay(hour: 7, minute: 15);

  List<ActiveBookingsModel> temporaryList = [];

  String selectedArea = "";
  String selectedBHK = "";
  String selectedDate = "";
  String selectedWeekday = "";

  Color _textColor = transparent;
  Color _iconColor = whiteColor;

  late ScrollController _scrollController;

  bool get _isSliverAppBarExpanded {
    return _scrollController.hasClients && _scrollController.offset > (200);
  }

  @override
  void initState() {
    init();
    selectedMonth = date.DateUtils.months[currentDateTime.month - 1];
    selectedMonthShort = date.DateUtils.monthShort[currentDateTime.month - 1];
    selectedYear = currentDateTime.year.toString();
    selectedDate =
        "${currentDateTime.day.toString()} $selectedMonthShort,$selectedYear";
    monthIndex = currentDateTime.month - 1;
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          _textColor = _isSliverAppBarExpanded
              ? appData.isDark
                  ? whiteColor
                  : blackColor
              : transparent;
          _iconColor = _isSliverAppBarExpanded
              ? appData.isDark
                  ? whiteColor
                  : blackColor
              : whiteColor;
        });
      });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void init() {
    currentMonthList = date.DateUtils.daysInMonth(currentDateTime);
    currentMonthList.sort((a, b) => a.day.compareTo(b.day));
    currentMonthList = currentMonthList.toSet().toList();
  }

  void _selectTime() async {
    FocusScope.of(context).requestFocus(FocusNode());
    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: _time,
      builder: (_, child) {
        return Theme(
          data: appData.isDark ? ThemeData.dark() : ThemeData.light(),
          child: child!,
        );
      },
    );
    if (newTime != null) {
      _time = newTime;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: BottomSheet(
        elevation: 10,
        enableDrag: false,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: appData.isDark
                    ? bottomContainerDark
                    : bottomContainerBorder,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\Rp ${serviceProviders[widget.serviceIndex].serviceProviders[widget.providerIndex].providerServices[widget.index].servicePrice}",
                    style: TextStyle(
                      fontSize: 18,
                      color: appData.isDark
                          ? bottomContainerTextDark
                          : bottomContainerText,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      temporaryList.add(
                        ActiveBookingsModel(
                          0,
                          serviceProviders[widget.serviceIndex]
                              .serviceProviders[widget.providerIndex]
                              .providerServices[widget.index]
                              .serviceName,
                          serviceProviders[widget.serviceIndex]
                              .serviceProviders[widget.providerIndex]
                              .providerServices[widget.index]
                              .serviceImage,
                          "Dedi Cleaning Services",
                          selectedDate,
                          _time.format(context),
                          "Dalam Proses",
                          serviceProviders[widget.serviceIndex]
                              .serviceProviders[widget.providerIndex]
                              .providerServices[widget.index]
                              .servicePrice,
                        ),
                      );
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrderSummeryScreen(
                            list: temporaryList,
                            area: selectedArea,
                            bHK: selectedBHK,
                            weekday: selectedWeekday,
                            fromBooking: widget.fromBooking,
                            renovateIndex: widget.index,
                            fromRenovate: widget.fromRenovate,
                          ),
                        ),
                      );
                    },
                    child: Text(
                      "Lanjut",
                      style: TextStyle(
                        color: appData.isDark
                            ? bottomContainerTextDark
                            : bottomContainerText,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        onClosing: () {},
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            titleTextStyle: TextStyle(
                color: _textColor, fontWeight: FontWeight.w900, fontSize: 20),
            backgroundColor: customAppbarColor,
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: _iconColor),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            expandedHeight: MediaQuery.of(context).size.height * 0.35,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                widget.fromBooking
                    ? serviceProviders[widget.serviceIndex]
                        .serviceProviders[widget.providerIndex]
                        .providerServices[widget.index]
                        .serviceImage
                    : widget.fromRenovate
                        ? renovateServices[widget.index].imagePath!
                        : combosServices[widget.index].imagePath!,
                fit: BoxFit.cover,
              ),
            ),
            centerTitle: true,
            title: Text(
              widget.fromBooking
                  ? serviceProviders[widget.serviceIndex]
                      .serviceProviders[widget.providerIndex]
                      .providerServices[widget.index]
                      .serviceName
                  : widget.fromRenovate
                      ? renovateServices[widget.index].title
                      : combosServices[widget.index].title,
              textAlign: TextAlign.center,
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("Ukuran Ruangan",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Space(16),
                  ApartmentSizeComponent(),
                  Space(16),
                  Text("Meter Persegi",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Space(16),
                  TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 16),
                    inputFormatters: [LengthLimitingTextInputFormatter(4)],
                    decoration: commonInputDecoration(
                      hintText: "Luas dalam meter persegi",
                      suffixIcon: Icon(Icons.add, size: 16),
                    ),
                    onChanged: (value) {
                      selectedArea = value;
                    },
                  ),
                  Space(16),
                  Text("Jadwalkan Hari",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Space(16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(Icons.navigate_before),
                        onPressed: () {
                          if (monthIndex <= 0) {
                            monthIndex = 11;
                            int year = int.parse(selectedYear);
                            year--;
                            selectedYear = year.toString();
                            selectedMonth = date.DateUtils.months[monthIndex];
                            selectedMonthShort =
                                date.DateUtils.monthShort[monthIndex];
                            currentDateTime = DateTime(currentDateTime.year - 1,
                                DateTime.december, currentDateTime.day);
                            init();
                          } else {
                            monthIndex--;
                            currentDateTime = DateTime(currentDateTime.year,
                                currentDateTime.month - 1, currentDateTime.day);
                            init();
                            selectedMonth = date.DateUtils.months[monthIndex];
                            selectedMonthShort =
                                date.DateUtils.monthShort[monthIndex];
                          }
                          setState(() {});
                        },
                      ),
                      Text('$selectedMonth $selectedYear',
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      IconButton(
                        icon: Icon(Icons.navigate_next),
                        onPressed: () {
                          if (monthIndex >= 11) {
                            monthIndex = 0;
                            int year = int.parse(selectedYear);
                            year++;
                            selectedYear = year.toString();
                            selectedMonth = date.DateUtils.months[monthIndex];
                            selectedMonthShort =
                                date.DateUtils.monthShort[monthIndex];
                            currentDateTime = DateTime(currentDateTime.year + 1,
                                DateTime.january, currentDateTime.day);
                            init();
                          } else {
                            monthIndex++;
                            currentDateTime = DateTime(currentDateTime.year,
                                currentDateTime.month + 1, currentDateTime.day);
                            init();
                            selectedMonth = date.DateUtils.months[monthIndex];
                            selectedMonthShort =
                                date.DateUtils.monthShort[monthIndex];
                          }
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.10,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: currentMonthList.length,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            currentDateTime = currentMonthList[index];
                            selectedDate =
                                "${currentDateTime.day.toString()} $selectedMonthShort,$selectedYear";
                            selectedWeekday = date.DateUtils.weekdaysFull[
                                currentMonthList[index].weekday - 1];
                          });
                        },
                        child: Card(
                          margin: EdgeInsets.only(
                              right: 8, bottom: 8, top: 8, left: 4),
                          color: appData.isDark
                              ? (currentMonthList[index].day !=
                                      currentDateTime.day)
                                  ? greyColor
                                  : selectedCard
                              : (currentMonthList[index].day !=
                                      currentDateTime.day)
                                  ? unselectedCard
                                  : selectedCard,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  currentMonthList[index].day.toString(),
                                  style: TextStyle(
                                    color: currentMonthList[index].day !=
                                            currentDateTime.day
                                        ? blackColor
                                        : whiteColor,
                                  ),
                                ),
                                Text(
                                  date.DateUtils.weekdays[
                                      currentMonthList[index].weekday - 1],
                                  style: TextStyle(
                                    color: currentMonthList[index].day !=
                                            currentDateTime.day
                                        ? blackColor
                                        : whiteColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Space(16),
                  Text("Jadwalkan Waktu",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Space(8),
                  Text('Selected time: ${_time.format(context)}'),
                  Space(8),
                  ElevatedButton(
                      onPressed: _selectTime, child: Text('Pilih Waktu')),
                  Padding(
                      padding: EdgeInsets.all(8),
                      child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.07))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
