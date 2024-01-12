import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:romy_sharing_project/screens/sales_order/customer/components/widget/item_customer_credit_limit_widget.dart';
import 'package:romy_sharing_project/screens/sales_order/customer/components/widget/item_customer_promo_active_widget.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:skeletons/skeletons.dart';

import '../../../../components/constants.dart';
import '../../../../components/shared.dart';
import '../../../../components/shared_preferences.dart';
import '../../../../components/widget/toast.dart';
import '../../../../models/customer/data_customer.dart';
import '../../../../models/customer/data_customer_credit_limit_getrows.dart';
import '../../../../models/customer/data_customer_promo.dart';
import '../../../../models/customer/data_customer_ship_to.dart';

class CustomerBodyMobile extends StatefulWidget {
  const CustomerBodyMobile({Key? key}) : super(key: key);

  @override
  State<CustomerBodyMobile> createState() => _CustomerBodyMobileState();
}

const String labelButton = 'Confirm';
String customerId = '';
String shipTo = '';
String shipToAddress = '';

class _CustomerBodyMobileState extends State<CustomerBodyMobile> {
  final TextEditingController _typeAheadCustomerController =
  TextEditingController();
  final TextEditingController _typeAheadShipToController =
  TextEditingController();
  final TextEditingController _typeAddressShipToController =
  TextEditingController();
  List<DataCustomerPromo> listPromoActive = [];
  List<DataCustomerCreditLimit> listCreditLimit = [];
  bool isLoading = true;
  bool customerStatus = false;
  bool shipToStatus = false;
  String tripZone = '';

  @override
  void initState() {
    Sessions.getCustomerName().then((customerName) {
      Sessions.getCustomerType().then((customerType) {
        Sessions.getShipToName().then((shipToName) {
          Sessions.getShipToAddress().then((shipToAddress) {
            Sessions.getCustomerStatus().then((statusCustomer) {
              Sessions.getShipToStatus().then((statusShipTo) {
                Sessions.getShipToTripZone().then((zone) {
                  if (customerName.isNotEmpty) {
                    loadData(customerName, customerType);
                    _typeAheadCustomerController.text = customerName;
                    _typeAheadShipToController.text = shipToName;
                    _typeAddressShipToController.text = shipToAddress;
                    customerStatus = statusCustomer;
                    shipToStatus = statusShipTo;
                    tripZone = zone;
                  }
                });
              });
            });
          });
        });
      });
    });
    super.initState();
  }

  Future<void> loadData(String customerId, String customerType) async {
    await bindDataPromo(customerId, customerType);
    await bindDataCreditLimit(customerId);
    isLoading = false;
  }

  bindDataPromo(String customerId, String customerType) {
    DataCustomerPromo.getCustomer(customerId, customerType).then((value) {
      setState(() {
        listPromoActive = value;
      });
    });
  }

  bindDataCreditLimit(String customerNo) {
    DataCustomerCreditLimit.getCustomerCreditLimit(customerNo).then((value) {
      setState(() {
        listCreditLimit = value;
      });
    });
  }

  confirmToProcess(BuildContext context) {
    Navigator.popAndPushNamed(context, kPathTransaction);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPaddingDefaultPage),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: ListView(
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: kDefaultPadding),
                  child: Text(
                    'Customer',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: kFontSizeH2),
                  ),
                ),
                TypeAheadFormField(
                    textFieldConfiguration: TextFieldConfiguration(
                      controller: _typeAheadCustomerController,
                      onChanged: (value) {
                        setState(() {});
                      },
                      style: const TextStyle(fontSize: kFontSizeH3),
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                          contentPadding:
                          const EdgeInsets.all(kPaddingContentTextField),
                          isDense: true,
                          suffixIconConstraints: prefixSuffixIconConstraint(),
                          enabledBorder: defaultInputBorder(),
                          focusedBorder: defaultFocusBorder(),
                          errorBorder: defaultErrorBorder(),
                          border: defaultErrorBorder(),
                          suffixIcon: _typeAheadCustomerController.text.isEmpty
                              ? null
                              : InkWell(
                            onTap: () {
                              setState(() {
                                _typeAheadCustomerController.clear();
                                _typeAheadShipToController.clear();
                                _typeAddressShipToController.clear();
                                isLoading = true;
                              });
                            },
                            child: const Padding(
                              padding: EdgeInsets.only(
                                  right: kPaddingContentTextField),
                              child: Icon(Icons.cancel),
                            ),
                          )),
                    ),
                    onSuggestionSelected: (DataCustomer suggestion) {
                      setState(() {
                        _typeAheadCustomerController.text =
                            suggestion.customerName;
                        customerId = suggestion.id;
                        Sessions.setCustomerPreference(
                          customerId: suggestion.id,
                          customerName: suggestion.customerName,
                          customerAddress: suggestion.customerAddress,
                          customerType: suggestion.customerType,
                          customerTypeDesc: suggestion.customerTypeDesc,
                          customerStatus: suggestion.customerStatus,
                        );
                        customerStatus = suggestion.customerStatus;
                        loadData(suggestion.id, suggestion.customerType);
                      });
                    },
                    itemBuilder: (context, DataCustomer suggestion) {
                      return ListTile(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              suggestion.customerName,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: kFontSizeH3,
                              ),
                            ),
                            Text(
                              suggestion.customerTypeDesc,
                              style: const TextStyle(
                                color: kColorTextSecond,
                                fontSize: kFontSizeH4,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    suggestionsCallback: (pattern) {
                      return DataCustomer.getCustomer(pattern);
                    }),
                const SizedBox(
                  height: kPaddingBetweenWidget,
                ),
                const Padding(
                  padding: EdgeInsets.only(
                      bottom: kDefaultPadding, left: kPaddingLeft),
                  child: Text(
                    'Ship To',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: kFontSizeH2),
                  ),
                ),
                TypeAheadFormField(
                    textFieldConfiguration: TextFieldConfiguration(
                      controller: _typeAheadShipToController,
                      onChanged: (value) {
                        setState(() {});
                      },
                      style: const TextStyle(fontSize: kFontSizeH3),
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                        contentPadding:
                        const EdgeInsets.all(kPaddingContentTextField),
                        isDense: true,
                        suffixIconConstraints: prefixSuffixIconConstraint(),
                        enabledBorder: defaultInputBorder(),
                        focusedBorder: defaultFocusBorder(),
                        errorBorder: defaultErrorBorder(),
                        border: defaultErrorBorder(),
                        suffixIcon: _typeAheadShipToController.text.isEmpty
                            ? null
                            : InkWell(
                          onTap: () {
                            setState(() {
                              _typeAheadShipToController.clear();
                              _typeAddressShipToController.clear();
                            });
                          },
                          child: const Padding(
                            padding: EdgeInsets.only(
                                right: kPaddingContentTextField),
                            child: Icon(Icons.cancel),
                          ),
                        ),
                      ),
                    ),
                    onSuggestionSelected: (DataCustomerShipTo suggestion) {
                      setState(() {
                        Sessions.setShipToPreference(
                          shipToId: suggestion.id.toString(),
                          shipToName: suggestion.shipToName,
                          shipToAddress: suggestion.shipToAddress,
                          priceZone: suggestion.priceZone,
                          siteId: suggestion.siteId,
                          siteName: suggestion.siteName,
                          siteAddress: suggestion.siteAddress,
                          tripZone: suggestion.tripZone,
                          status: suggestion.shipToStatus,
                        );
                        tripZone = suggestion.tripZone;
                        shipToStatus = suggestion.shipToStatus;
                        shipTo = suggestion.shipToName;
                        shipToAddress = suggestion.shipToAddress;
                        _typeAheadShipToController.text = shipTo;
                        _typeAddressShipToController.text = shipToAddress;
                      });
                    },
                    itemBuilder: (context, DataCustomerShipTo suggestion) {
                      return ListTile(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              suggestion.shipToName,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: kFontSizeH3,
                              ),
                            ),
                            Text(
                              suggestion.shipToAddress,
                              style: const TextStyle(
                                color: kColorTextSecond,
                                fontSize: kFontSizeH4,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    suggestionsCallback: (pattern) {
                      return DataCustomerShipTo.getShipTo(
                        customerId,
                        pattern,
                      );
                    }),
                const SizedBox(
                  height: kPaddingBetweenWidget,
                ),
                const Padding(
                  padding: EdgeInsets.only(
                      bottom: kDefaultPadding, left: kPaddingLeft),
                  child: Text(
                    'Ship To Address',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: kFontSizeH2),
                  ),
                ),
                TextFormField(
                  readOnly: true,
                  controller: _typeAddressShipToController,
                  keyboardType: TextInputType.multiline,
                  maxLines: 5,
                  style: const TextStyle(fontSize: kFontSizeH3),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(kDefaultPadding),
                    isDense: true,
                    fillColor: kDisableTextFieldColor,
                    enabledBorder: defaultInputBorder(),
                    focusedBorder: defaultFocusBorder(),
                    errorBorder: defaultErrorBorder(),
                    border: defaultErrorBorder(),
                  ),
                ),
                Visibility(
                  visible: !isLoading,
                  child: ScrollablePositionedList.builder(
                      shrinkWrap: true,
                      itemCount: listCreditLimit.length,
                      itemBuilder: (context, index) {
                        return ItemCustomerCreditLimitWidget(
                          creditLimit: listCreditLimit[index].creditLimit,
                          limitUsed: listCreditLimit[index].limitUsed,
                          remainingLimit: listCreditLimit[index].remainingLimit,
                          currencyId: listCreditLimit[index].currencyId,
                          billTo: listCreditLimit[index].billTo,
                        );
                      }),
                ),
                Visibility(
                  visible: _typeAheadCustomerController.text.isNotEmpty
                      ? true
                      : false,
                  child: listPromoActive.isEmpty
                      ? const Card(
                    color: kCardDashboardColor,
                    elevation: 4,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            kNoPromotions,
                            style: TextStyle(
                                color: kColorPrimary,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  )
                      : Card(
                    color: kCardDashboardColor,
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const Text(
                            kTitlePromo,
                            style: TextStyle(
                                color: kColorPrimary,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          const Divider(color: kDisableTextFieldColor),
                          ListView.builder(
                              shrinkWrap: true,
                              physics:
                              const NeverScrollableScrollPhysics(),
                              itemCount: isLoading
                                  ? 3
                                  : listPromoActive.isEmpty
                                  ? 1
                                  : listPromoActive.length,
                              itemBuilder: (context, index) {
                                return isLoading
                                    ? Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 8.0),
                                  child: SkeletonAvatar(
                                    style: SkeletonAvatarStyle(
                                        width:
                                        MediaQuery.of(context)
                                            .size
                                            .width,
                                        height: 45),
                                  ),
                                )
                                    : listPromoActive.isNotEmpty
                                    ? ItemCustomerPromoActiveWidget(
                                  promoName:
                                  listPromoActive[index]
                                      .promoName,
                                  promoDesc:
                                  listPromoActive[index]
                                      .promoDesc,
                                  startPromo:
                                  listPromoActive[index]
                                      .startPromoDate,
                                  endPromo:
                                  listPromoActive[index]
                                      .endPromoDate,
                                )
                                    : const Center(
                                    child: Text("No Data"));
                              }),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: SizedBox(
              height: 40.0,
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                kSizeDefaultBorderRadius)))),
                onPressed: () {
                  if (_typeAddressShipToController.value.text.isNotEmpty) {
                    if (tripZone.isNotEmpty) {
                      if (customerStatus) {
                        if (shipToStatus) {
                          Navigator.pushNamed(context, kPathTransaction);
                        } else {
                          toastAlert(context, kShipToNotActive);
                        }
                      } else {
                        toastAlert(context, kCustomerNotActive);
                      }
                    } else {
                      toastAlert(context, kTripZoneNotSet);
                    }
                  } else {
                    toastAlert(context, kCompleteData);
                  }
                },
                child: const Text(labelButton),
              ),
            ),
          )
        ],
      ),
    );
  }
}
