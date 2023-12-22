
import 'dart:ui';

const kUrl = '8vsdqdh6e6.execute-api.ap-southeast-1.amazonaws.com';
const kPath = '/sandbox/';

// string path untuk route
const kPathLanding = '/';
const kPathLogin = '/login';
const kPathDashBoard = '/dashboard';
const kPathSalesOrderList = '/sales_order/list';
const kPathSalesOrderDetail = '/sales_order/detail';

//PRIMARY COLOR//
const kColorPrimary = Color(0xFF223e91);
const kColorAccentPrimary = Color(0xFFDBEAFE);
const kColorSecond = Color(0xFF233e91);
const kColorThird = Color(0xFF798cc6);
const kBlueBg = Color(0xffb7e0ff);
const kColorRed = Color(0xffDC2626);
const kColorYellow = Color(0xff917322);
const kColorGreen = Color(0xff22913c);
const kColorGreenAccent = Color(0xff537c5b);
const kColorBrown = Color(0xff574410);
const kColorBlue = Color(0xff227791);

//TEXT COLOR//
const kColorText = Color(0xFF18181B);
const kColorTextSecond = Color(0xFF71717A);
const kColorTextThird = Color(0xFF737373);
const kColorTextWhite = Color(0xFFFFFFFF);

//TEXTField COLOR//
const kDisableTextFieldColor = Color(0xfff3f3f3);
const kColorBackgroundTextField = Color(0xdfffffff);

//ROMY//
const kRedAccentColor = Color(0xffFECACA);
const kCardDashboardColor = Color(0xffdbeafe);
const kTextSMD = Color(0xff1F319B);
const kCardDisabled = Color(0xffdddddd);

//PADDING//
const kDefaultPadding = 8.0;
const kPaddingDefaultPage = 20.0;
const kPaddingBetweenCard = 7.0;
const kPaddingBetweenTextField = 8.0;
const kPaddingBetweenWidget = 18.0;
const kPaddingContentTextField = 10.0;
const kPaddingContentCard = 12.0;
const kPaddingPrefixSuffixTextField = 8.0;
const kPaddingSmall = 4.0;
const kPaddingMedium = 8.0;
const kPaddingLarge = 12.0;
const kPaddingXLarge = 16.0;

//SIZE//
const kSizeIconTextFieldMinMax  = 20.0;
const kSizeDefaultTextFieldBorderRadius = 5.0;
const kSizeDefaultBorderRadius = 10.0; //(Button dan Card)
const kSizeDefaultElevationCard = 2.0;
const kSizeDefaultCardPage = 70.0;
const kSizeDefaultMenu = 6.0;
const kSizeDefaultMenuIcon = 9.0;



//ROMY//
const kDefaultHeightTextbox = 40.0;
const kDefaultHeightErrorTextbox = 60.0;
const kDefaultHeightButtonDialog = 35.0;
const kDefaultWidthButtonDialog = 120.0;
const kDefaultHeightTextboxInCard = 60.0;
const kPaddingLeft = 1.0;
const kDefaultLabelBorderRadius = 8.0;
const kWidthMaxInWeb = 500.0;

//FONT SIZE//
const kFontSizeH1 = 18.0;
const kFontSizeH2 = 16.0;
const kFontSizeH3 = 14.0;
const kFontSizeH4 = 12.0;
const kFontSizeH5 = 10.0;
const kFontSizeSmall = 8.0;
const kFontSizeMedium = 16.0;
const kFontSizeLarge = 24.0;
const kFontSizeXLarge = 32.0;


//all constants string
const kTitleDialogCheckIn = 'Check In';
const kTitleDialogCheckOut = 'Check Out';
const kTitleDialogUnavailable = 'Unavailable';
const kTitleDialogCancel = 'Cancel Checkout';
const kTitleDialogCaution = 'Caution';
const kTitleDialogProcess = 'Confirmation Checkout';
const kTitleDialogReject = 'Transaction Reject';
const kTitleDialogApprove = 'Confirmation Approval';
const kTitleDialogExitApp = 'Exit App';
const kBodyDialogCancel =
    'You will exit this page and the check out process will be cancelled. Are you sure you want to leave?';
const kBodyDialogApprove = 'Are you sure you will approve this transaction?';
const kBodyDialogCustomerNotActive = 'This customer is not active. Are you sure you want to make a transaction?';
const kBodyDialogShipToNotActive = 'This ship to is not active. Are you sure you want to make a transaction?';
const kBodyDialogExitApp = 'Are you sure to exit from this app?';
const kCustomerNotActive = 'Customer is no longer active, please contact sales admin HO';
const kShipToNotActive = 'Ship To is no longer active, please contact sales admin HO';
const kTripZoneNotSet = 'Trip Zone is not set, please contact sales admin HO';
const kCompleteData = 'Please complete the data!';
const kSubCartDetail = 'Detail Produk';
const kSubCartDeliveryTitle = 'Shipping Information';
const kSubCartPIC = 'PIC Information';
const kSubCartPICName = 'PIC Name';
const kSubCartPICPhone = 'PIC Phone';
const kSubCartDeliveryFrom = 'Delivery From';
const kSubCartDeliveryDate = 'Request Date';
const kReceiveDate = 'Receive Date';
const kSubCartShipTo = 'Ship To';
const kSubCartShipToAddress = 'Ship To Address';
const kSubCartPaymentDetails = 'Payment Details';
const kSubCartPODate = 'PO Date';
const kSubCartPODateExp = 'PO Exp Date';
const kSubCartPONo = 'Cust PO No.';
const kSubCartAttachmentPO = 'Attachment PO';
const kSubCartTOP = 'T.O.P';
const kSubCartTOPChoose = 'Choose a Payment Method';
const kSubCartSubTotal = 'Sub Total';
const kSubCartDiscount = 'Discount';
const kSubCartTax = 'Tax';
const kSubCartTotal = 'Total';
const kSubCartTOPDesc = 'Payment is made after the item is shipped';
const kSubCartBillTo = 'Bill To';
const kSubCartBillToAddress = 'Bill To Address';
const kSubCartDetailDisc = 'detail disc';
const kSubCartPromoActive = 'Promo Active';
const kSubCartOrderInformation = 'Order Information';
const kSubClose = 'Close';
const kToastWarningAccess = "You don't have an access";
const kAskTurnOnGps =
    'To ensure you are within the range of our services, we require you to turn on and give access to your GPS.';
const kTransactionSuccess = "Transaction Success";
const kTransaction = "Transaction";
const kTransNo = "Trans No";
const kSalesMan = "Salesman";
const kTransDate = "Trans Date";
const kReason = "Reason";
const kDetailOrder = "Detail Order";
const kBack = "Back";
const kReject = "Reject";
const kApprove = "Approve";
const kEdit= "Edit";
const kTitlePromo = "Promo of The Day";
const kApproved = "Approved";
const kActive = "Active";
const kReadToDelivery = "Ready To Delivery";
const kDelivered = "Delivered";
const kRejected = "Rejected";
const kOpen = "Open";
const kInactive = "Inactive";
const kPaymentDue = "Payment Due";
const kInfoCheckInOut = "You will take photos as proof of the store visit. Make sure you take a photo in front of the store, and the face and store are clearly visible!";
const kSaveData = "Save Data";
const kStartDay = "Start Day";
const kEndDay = "End Day";
const kUpdateLocation = " Update Your Location";
const kBodyTemperatureWarning = "The temperature tnat you input is above 0°C, are you sure to continue?";
const kBodyCheckInOut = "The data that has been saved cannot be changed, make sure all data is correct!";
const kBodyCheckUnavailable = "The data that has been saved cannot be changed, make sure all data is correct!";
const kBodyCheckFreezer = "The freezer data that has been saved cannot be changed, make sure all data is correct!";
const kBodyInputtedData = "The data that has been inputted will be deleted, are you sure to continue?!";

const kToastInputOrder = "Input QTY Order!";
const kDeliveryFrom = "Delivery From";
const kDeleteImage = "Delete Image";
const kNoPromotions = "No promotions available";

const kCheckedFreezer = "Checked";
const kNotCheckedFreezer = "Not Checked";