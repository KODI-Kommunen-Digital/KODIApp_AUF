// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heidi/src/data/model/model.dart';
import 'package:heidi/src/data/model/model_forum_group.dart';
import 'package:heidi/src/data/model/model_group_posts.dart';
import 'package:heidi/src/data/model/model_product.dart';
import 'package:heidi/src/main_screen.dart';
import 'package:heidi/src/presentation/main/account/change_password/change_password_screen.dart';
import 'package:heidi/src/presentation/main/account/dashboard/all_listings/all_listings_screen.dart';
import 'package:heidi/src/presentation/main/account/dashboard/all_listings/cubit/all_listings_cubit.dart';
import 'package:heidi/src/presentation/main/account/dashboard/all_requests/all_requests_screen.dart';
import 'package:heidi/src/presentation/main/account/dashboard/all_requests/cubit/all_requests_cubit.dart';
import 'package:heidi/src/presentation/main/account/dashboard/container/container_screen.dart';
import 'package:heidi/src/presentation/main/account/dashboard/container/customer/customer_page/customer_screen.dart';
import 'package:heidi/src/presentation/main/account/dashboard/container/order_details_screen.dart';
import 'package:heidi/src/presentation/main/account/dashboard/container/owner/edit_store/edit_store_screen.dart';
import 'package:heidi/src/presentation/main/account/dashboard/container/owner/owner_screen/owner_screen.dart';
import 'package:heidi/src/presentation/main/account/dashboard/container/owner/owner_store_screen/owner_category_screen/owner_category_screen.dart';
import 'package:heidi/src/presentation/main/account/dashboard/container/owner/owner_store_screen/owner_orders_screen/owner_orders_screen.dart';
import 'package:heidi/src/presentation/main/account/dashboard/container/owner/owner_store_screen/owner_products_screen/owner_products_screen.dart';
import 'package:heidi/src/presentation/main/account/dashboard/container/owner/owner_store_screen/owner_products_screen/container_product_detail_screen.dart';
import 'package:heidi/src/presentation/main/account/dashboard/container/owner/owner_store_screen/owner_products_screen/product_request_detail_screen.dart';
import 'package:heidi/src/presentation/main/account/dashboard/container/owner/owner_store_screen/owner_seller_screen/owner_seller_screen.dart';
import 'package:heidi/src/presentation/main/account/dashboard/container/owner/owner_store_screen/owner_shelves_screen/add_shelf_screen.dart';
import 'package:heidi/src/presentation/main/account/dashboard/container/owner/owner_store_screen/owner_shelves_screen/owner_shelves_screen.dart';
import 'package:heidi/src/presentation/main/account/dashboard/container/owner/owner_store_screen/owner_shelves_screen/shelf_detail_screen.dart';
import 'package:heidi/src/presentation/main/account/dashboard/container/owner/store_detail_screen.dart';
import 'package:heidi/src/presentation/main/account/dashboard/container/qr_code/qr_code_screen.dart';
import 'package:heidi/src/presentation/main/account/dashboard/container/seller/create_product/create_product_screen.dart';
import 'package:heidi/src/presentation/main/account/dashboard/container/owner/product_request_screen.dart';
import 'package:heidi/src/presentation/main/account/dashboard/container/seller/seller_page/seller_order_screen.dart';
import 'package:heidi/src/presentation/main/account/dashboard/container/seller/seller_page/seller_products_screen.dart';
import 'package:heidi/src/presentation/main/account/dashboard/container/seller/seller_request/seller_request_screen.dart';
import 'package:heidi/src/presentation/main/account/dashboard/container/seller/seller_requests_view/seller_request_details.dart';
import 'package:heidi/src/presentation/main/account/dashboard/container/seller/seller_requests_view/seller_requests_view_screen.dart';
import 'package:heidi/src/presentation/main/account/dashboard/container/seller/seller_select_screen.dart';
import 'package:heidi/src/presentation/main/account/dashboard/dashboard_screen.dart';
import 'package:heidi/src/presentation/main/account/dashboard/my_groups/cubit/my_groups_cubit.dart';
import 'package:heidi/src/presentation/main/account/dashboard/my_groups/my_groups_screen.dart';
import 'package:heidi/src/presentation/main/account/dashboard/my_listings/my_listings_screen.dart';
import 'package:heidi/src/presentation/main/account/edit_profile/edit_profile_screen.dart';
import 'package:heidi/src/presentation/main/account/faq/cubit/faq_cubit.dart';
import 'package:heidi/src/presentation/main/account/faq/faq_screen.dart';
import 'package:heidi/src/presentation/main/account/legal/imprint/imprint.dart';
import 'package:heidi/src/presentation/main/account/legal/legal.dart';
import 'package:heidi/src/presentation/main/account/legal/privacy_policy/privacy.dart';
import 'package:heidi/src/presentation/main/account/profile/cubit/profile_cubit.dart';
import 'package:heidi/src/presentation/main/account/profile/profile_screen.dart';
import 'package:heidi/src/presentation/main/account/profile_settings/profile_settings_screen.dart';
import 'package:heidi/src/presentation/main/account/setting/settings_screen.dart';
import 'package:heidi/src/presentation/main/add_listing/add_listing_screen.dart';
import 'package:heidi/src/presentation/main/add_listing/add_listing_success/add_listing_success.dart';
import 'package:heidi/src/presentation/main/home/filter_screen.dart';
import 'package:heidi/src/presentation/main/home/forum/add_group_screen/add_group_screen.dart';
import 'package:heidi/src/presentation/main/home/forum/add_group_screen/cubit/add_group_cubit.dart';
import 'package:heidi/src/presentation/main/home/forum/list_groups/add_new_post/add_post_screen.dart';
import 'package:heidi/src/presentation/main/home/forum/list_groups/add_new_post/cubit/add_post_cubit.dart';
import 'package:heidi/src/presentation/main/home/forum/list_groups/cubit/cubit.dart';
import 'package:heidi/src/presentation/main/home/forum/list_groups/forum_image_zoom/forum_image_zoom_screen.dart';
import 'package:heidi/src/presentation/main/home/forum/list_groups/group_details/cubit/group_details_cubit.dart';
import 'package:heidi/src/presentation/main/home/forum/list_groups/group_details/group_details_screen.dart';
import 'package:heidi/src/presentation/main/home/forum/list_groups/group_details/group_members/cubit/group_members_cubit.dart';
import 'package:heidi/src/presentation/main/home/forum/list_groups/group_details/group_members/group_members_screen.dart';
import 'package:heidi/src/presentation/main/home/forum/list_groups/group_details/member_requests/cubit/member_request_cubit.dart';
import 'package:heidi/src/presentation/main/home/forum/list_groups/group_details/member_requests/member_request_screen.dart';
import 'package:heidi/src/presentation/main/home/forum/list_groups/group_details/post_detail/cubit/post_detail_cubit.dart';
import 'package:heidi/src/presentation/main/home/forum/list_groups/group_details/post_detail/post_detail_screen.dart';
import 'package:heidi/src/presentation/main/home/forum/list_groups/list_groups_screen.dart';
import 'package:heidi/src/presentation/main/home/list_product/list_product.dart';
import 'package:heidi/src/presentation/main/home/product_detail/image_zoom/image_zoom_screen.dart';
import 'package:heidi/src/presentation/main/home/product_detail/product_detail_screen.dart';
import 'package:heidi/src/presentation/main/login/forgot_password/forgot_password_screen.dart';
import 'package:heidi/src/presentation/main/login/signin/signin_screen.dart';
import 'package:heidi/src/presentation/main/login/signup/signup.dart';
import 'package:heidi/src/presentation/main/account/contact_us/contact_us_screen.dart';
import 'package:heidi/src/presentation/main/account/contact_us/contact_us_success/contact_us_success.dart';

class RouteArguments<T> {
  final T? item;
  final VoidCallback? callback;

  RouteArguments({this.item, this.callback});
}

class Routes {
  static const String home = "/home";
  static const String main = "/home";
  static const String discovery = "/discovery";
  static const String wishList = "/wishList";
  static const String account = "/account";
  static const String signIn = "/signIn";
  static const String signUp = "/signUp";
  static const String forgotPassword = "/forgotPassword";
  static const String productDetail = "/productDetail";
  static const String searchHistory = "/searchHistory";
  static const String category = "/category";
  static const String profile = "/profile";
  static const String submit = "/submit";
  static const String editProfile = "/editProfile";
  static const String changePassword = "/changePassword";
  static const String changeLanguage = "/changeLanguage";
  static const String contactUs = "/contactUs";
  static const String aboutUs = "/aboutUs";
  static const String gallery = "/gallery";
  static const String themeSetting = "/themeSetting";
  static const String listProduct = "/listProduct";
  static const String filter = "/filter";
  static const String review = "/review";
  static const String writeReview = "/writeReview";
  static const String setting = "/setting";
  static const String fontSetting = "/fontSetting";
  static const String picker = "/picker";
  static const String galleryUpload = "/galleryUpload";
  static const String categoryPicker = "/categoryPicker";
  static const String gpsPicker = "/gpsPicker";
  static const String submitSuccess = "/submitSuccess";
  static const String contactUsSuccess = "/contactUsSuccess";
  static const String openTime = "/openTime";
  static const String socialNetwork = "/socialNetwork";
  static const String tagsPicker = "/tagsPicker";
  static const String webView = "/webView";
  static const String booking = "/booking";
  static const String bookingManagement = "/bookingManagement";
  static const String bookingDetail = "/bookingDetail";
  static const String scanQR = "/scanQR";
  static const String deepLink = "/deepLink";
  static const String legal = "/legal";
  static const String imprint = "/imprint";
  static const String privacy = "/privacy";
  static const String imageZoom = "/imageZoom";
  static const String forumImageZoom = "/forumImageZoom";
  static const String profileSettings = "/profileSettings";
  static const String faq = "/faq";
  static const String allListings = "/allListings";
  static const String allRequests = "/allRequests";
  static const String listGroups = "/listGroups";
  static const String myGroups = "/myGroups";
  static const String groupDetails = "/groupDetails";
  static const String groupMembersDetails = "/groupMembersDetails";
  static const String memberRequestDetails = "/memberRequestDetails";
  static const String postDetails = "/postDetails";
  static const String dashboard = "/dashboard";
  static const String addGroups = "/addGroup";
  static const String addPosts = "/addPosts";
  static const String myListings = "/myListings";
  static const String filterScreen = "/filterScreen";
  static const String containerScreen = "/containerScreen";
  static const String sellerSelectScreen = "/sellerSelectScreen";
  static const String sellerRequest = "/sellerRequest";
  static const String sellerOrderScreen = "/sellerOrderScreen";
  static const String sellerProductsScreen = "/sellerProductsScreen";
  static const String productRequestScreen = "/productRequestScreen";
  static const String customerScreen = "/customerScreen";
  static const String createProductScreen = "/createProductScreen";
  static const String ownerScreen = "/ownerScreen";
  static const String orderDetailsScreen = "/orderDetailsScreen";
  static const String customerCardScreen = "/customerCardScreen";
  static const String sellerRequestsViewScreen = "/sellerRequestsView";
  static const String sellerRequestDetailsScreen = "/sellerRequestDetails";
  static const String storeDetailScreen = "/storeDetailScreen";
  static const String ownerOrdersScreen = "/ownerOrdersScreen";
  static const String ownerSellerScreen = "/ownerSellerScreen";
  static const String ownerShelvesScreen = "/ownerShelvesScreen";
  static const String ownerProductsScreen = "/ownerProductsScreen";
  static const String ownerCategoryScreen = "/ownerCategoryScreen";
  static const String shelfDetailScreen = "/shelfDetailScreen";
  static const String addShelfScreen = "/addShelfScreen";
  static const String productRequestDetailScreen =
      "/productRequestDetailScreen";
  static const String editStoreScreen = "/editStoreScreen";
  static const String containerProductDetailScreen =
      "/containerProductDetailScreen";
  static const String qrCodeScreen = "/qrCodeScreen";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case main:
        return MaterialPageRoute(
          builder: (context) {
            return MainScreen();
          },
        );
      case listProduct:
        final Map<String, dynamic> arguments =
            settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (context) {
            return ListProductScreen(arguments: arguments);
          },
        );

      case productDetail:
        return MaterialPageRoute(
          builder: (context) {
            return ProductDetailScreen(
                item: settings.arguments as ProductModel);
          },
        );

      case signIn:
        return MaterialPageRoute(
          builder: (context) {
            return const SignInScreen();
          },
          fullscreenDialog: true,
        );

      case signUp:
        return MaterialPageRoute(
          builder: (context) {
            return const SignUpScreen();
          },
        );

      case forgotPassword:
        return MaterialPageRoute(
          builder: (context) {
            return const ForgotPasswordScreen();
          },
        );

      case editProfile:
        return MaterialPageRoute(
          builder: (context) {
            return const EditProfileScreen();
          },
        );

      case allListings:
        return MaterialPageRoute(
          builder: (context) {
            final Map<String, dynamic> arguments =
                settings.arguments as Map<String, dynamic>;
            return BlocProvider(
              create: (context) => AllListingsCubit(),
              child: AllListingsScreen(user: arguments["user"] as UserModel),
            );
          },
        );

      case allRequests:
        return MaterialPageRoute(
          builder: (context) {
            final Map<String, dynamic> arguments =
                settings.arguments as Map<String, dynamic>;
            return BlocProvider(
              create: (context) => AllRequestsCubit(),
              child: AllRequestsScreen(user: arguments["user"] as UserModel),
            );
          },
        );

      case profile:
        return MaterialPageRoute(
          builder: (context) {
            final Map<String, dynamic> arguments =
                settings.arguments as Map<String, dynamic>;
            return BlocProvider(
              create: (context) => ProfileCubit(
                context.read(),
                arguments['user'] as UserModel,
              ),
              child: ProfileScreen(
                user: arguments['user'] as UserModel,
                isEditable: arguments['editable'] as bool,
              ),
            );
          },
        );

      case setting:
        return MaterialPageRoute(
          builder: (context) {
            final Map<String, dynamic> arguments =
                settings.arguments as Map<String, dynamic>;
            return SettingsScreen(
              user: arguments['user'] as UserModel?,
            );
          },
        );

      case submit:
        return MaterialPageRoute(
          builder: (context) {
            final Map<String, dynamic> arguments =
                settings.arguments as Map<String, dynamic>;
            return AddListingScreen(
              item: arguments['item'] as ProductModel?,
              isNewList: arguments['isNewList'] as bool,
            );
          },
          fullscreenDialog: true,
        );

      case imageZoom:
        return MaterialPageRoute(
          builder: (context) {
            final Map<String, dynamic> arguments =
                settings.arguments as Map<String, dynamic>;
            return ImageZoomScreen(
              sourceId: arguments['sourceId'] as int,
              imageList: arguments['imageList']! as List<ImageListModel>?,
              pdf: arguments['pdf'] ?? '',
            );
          },
          fullscreenDialog: true,
        );

      case forumImageZoom:
        return MaterialPageRoute(
          builder: (context) {
            return ForumImageZoomScreen(imageUrl: settings.arguments as String);
          },
          fullscreenDialog: true,
        );

      case submitSuccess:
        return MaterialPageRoute(
          builder: (context) {
            return const AddListingSuccessScreen();
          },
          fullscreenDialog: true,
        );

      case changePassword:
        return MaterialPageRoute(
          builder: (context) {
            return const ChangePasswordScreen();
          },
        );

      case legal:
        return MaterialPageRoute(
          builder: (context) {
            return const LegalScreen();
          },
        );

      case imprint:
        return MaterialPageRoute(
          builder: (context) {
            return const ImprintScreen();
          },
        );

      case privacy:
        return MaterialPageRoute(
          builder: (context) {
            return const PrivacyScreen();
          },
        );

      case profileSettings:
        return MaterialPageRoute(
          builder: (context) {
            return const ProfileSettingsScreen();
          },
        );
      case contactUs:
        return MaterialPageRoute(
          builder: (context) {
            return const ContactUsScreen();
          },
        );

      case dashboard:
        return MaterialPageRoute(
          builder: (context) {
            final Map<String, dynamic> arguments =
                settings.arguments as Map<String, dynamic>;
            return BlocProvider(
              create: (context) => ProfileCubit(
                context.read(),
                arguments['user'] as UserModel,
              ),
              child: DashboardScreen(
                isEditable: arguments['editable'] as bool,
              ),
            );
          },
        );

      case myListings:
        return MaterialPageRoute(
          builder: (context) {
            final Map<String, dynamic> arguments =
                settings.arguments as Map<String, dynamic>;
            return BlocProvider(
              create: (context) => ProfileCubit(
                context.read(),
                arguments['user'] as UserModel,
              ),
              child: MyListingsScreen(
                user: arguments['user'] as UserModel,
                isEditable: arguments['editable'] as bool,
              ),
            );
          },
        );

      case contactUsSuccess:
        return MaterialPageRoute(
          builder: (context) {
            return const ContactUsSuccessScreen();
          },
          fullscreenDialog: true,
        );

      case faq:
        return MaterialPageRoute(
          builder: (context) {
            return BlocProvider(
              create: (context) => FaqCubit(),
              child: const FaqScreen(),
            );
          },
        );

      case myGroups:
        return MaterialPageRoute(
          builder: (context) {
            return BlocProvider(
              create: (context) => MyGroupsCubit(
                context.read(),
              ),
              child: const MyGroupsScreen(),
            );
          },
          fullscreenDialog: true,
        );

      case listGroups:
        return MaterialPageRoute(
          builder: (context) {
            final Map<String, dynamic> arguments =
                settings.arguments as Map<String, dynamic>;
            return BlocProvider(
              create: (context) => ListGroupsCubit(
                context.read(),
              ),
              child: ListGroupScreen(arguments: arguments),
            );
          },
          fullscreenDialog: true,
        );

      case groupDetails:
        return MaterialPageRoute(
          builder: (context) {
            final ForumGroupModel arguments =
                settings.arguments as ForumGroupModel;
            return BlocProvider(
              create: (context) => GroupDetailsCubit(context.read(), arguments),
              child: const GroupDetailsScreen(),
            );
          },
          fullscreenDialog: true,
        );

      case groupMembersDetails:
        return MaterialPageRoute(
          builder: (context) {
            final Map<String, dynamic> arguments =
                settings.arguments as Map<String, dynamic>;
            final int groupId = arguments['groupId'] as int;
            final int cityId = arguments['cityId'] as int;

            return BlocProvider(
              create: (context) =>
                  GroupMembersCubit(context.read(), groupId, cityId),
              child: GroupMembersScreen(groupId),
            );
          },
          fullscreenDialog: true,
        );

      case memberRequestDetails:
        return MaterialPageRoute(
          builder: (context) {
            final Map<String, dynamic> arguments =
                settings.arguments as Map<String, dynamic>;
            return BlocProvider(
              create: (context) => MembersRequestsCubit(
                  context.read(), arguments['groupId'], arguments['cityId']),
              child: MemberRequestScreen(arguments['groupId']),
            );
          },
          fullscreenDialog: true,
        );

      case postDetails:
        return MaterialPageRoute(
          builder: (context) {
            final Map<String, dynamic> arguments =
                settings.arguments as Map<String, dynamic>;
            final GroupPostsModel item = arguments['item'];
            final int cityId = arguments['cityId'] as int;
            final int userId = arguments['userId'] as int;
            final bool isAdmin = arguments['isAdmin'] as bool;

            return BlocProvider(
              create: (context) => PostDetailCubit(
                  context.read(), item, cityId, userId, isAdmin),
              child: PostDetailsScreen(item),
            );
          },
          fullscreenDialog: true,
        );

      case addGroups:
        return MaterialPageRoute(
          builder: (context) {
            final Map<String, dynamic> arguments =
                settings.arguments as Map<String, dynamic>;
            return BlocProvider(
              create: (context) => AddGroupCubit(
                context.read(),
              ),
              child: AddGroupScreen(
                item: arguments['forumDetails'] as ForumGroupModel?,
                isNewGroup: arguments['isNewGroup'] as bool,
              ),
            );
          },
          fullscreenDialog: true,
        );

      case addPosts:
        return MaterialPageRoute(
          builder: (context) {
            final Map<String, dynamic> arguments =
                settings.arguments as Map<String, dynamic>;
            return BlocProvider(
              create: (context) => AddPostCubit(
                context.read(),
              ),
              child: AddPostScreen(
                item: arguments['item'],
                isNewPost: arguments['isNewPost'] as bool,
              ),
            );
          },
          fullscreenDialog: true,
        );

      case filterScreen:
        return MaterialPageRoute(
          builder: (context) {
            final Map<String, dynamic> arguments =
                settings.arguments as Map<String, dynamic>;
            return FilterScreen(multiFilter: arguments["multifilter"]);
          },
        );

      case containerScreen:
        return MaterialPageRoute(
          builder: (context) {
            return ContainerScreen();
          },
        );

      case sellerRequest:
        return MaterialPageRoute(
          builder: (context) {
            return const SellerRequestScreen();
          },
        );

      case sellerSelectScreen:
        final Map<String, dynamic> arguments =
            settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (context) {
            return SellerSelectScreen(user: arguments['user']);
          },
        );

      case sellerOrderScreen:
        final Map<String, dynamic> arguments =
            settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (context) {
            return SellerOrderScreen(user: arguments['user']);
          },
        );

      case sellerProductsScreen:
        final Map<String, dynamic> arguments =
            settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (context) {
            return SellerProductsScreen(user: arguments['user']);
          },
        );

      case productRequestScreen:
        return MaterialPageRoute(
          builder: (context) {
            final Map<String, dynamic> arguments =
                settings.arguments as Map<String, dynamic>;
            return ProductRequestScreen(
              isOwner: arguments["isOwner"],
            );
          },
        );

      case customerScreen:
        return MaterialPageRoute(
          builder: (context) {
            return const CustomerScreen();
          },
        );

      case createProductScreen:
        return MaterialPageRoute(
          builder: (context) {
            final Map<String, dynamic>? arguments =
                settings.arguments as Map<String, dynamic>?;
            return CreateProductScreen(
              product: arguments?['product'],
            );
          },
        );

      case ownerScreen:
        return MaterialPageRoute(
          builder: (context) {
            return const OwnerScreen();
          },
        );

      case orderDetailsScreen:
        return MaterialPageRoute(
          builder: (context) {
            final Map<String, dynamic> arguments =
                settings.arguments as Map<String, dynamic>;
            return OrderDetailsScreen(
                order: arguments['order'],
                sellerOrder: arguments['sellerOrder']);
          },
        );

      case sellerRequestsViewScreen:
        return MaterialPageRoute(
          builder: (context) {
            final Map<String, dynamic> arguments =
                settings.arguments as Map<String, dynamic>;
            return SellerRequestsViewScreen(
              isOwner: arguments['isOwner'],
              store: arguments['store'],
            );
          },
        );

      case sellerRequestDetailsScreen:
        return MaterialPageRoute(
          builder: (context) {
            final Map<String, dynamic> arguments =
                settings.arguments as Map<String, dynamic>;
            return SellerRequestDetails(
                request: arguments['request'], isOwner: arguments['isOwner']);
          },
        );

      case storeDetailScreen:
        return MaterialPageRoute(
          builder: (context) {
            final Map<String, dynamic> arguments =
                settings.arguments as Map<String, dynamic>;
            return StoreDetailScreen(store: arguments['store']);
          },
        );

      case ownerOrdersScreen:
        return MaterialPageRoute(
          builder: (context) {
            final Map<String, dynamic> arguments =
                settings.arguments as Map<String, dynamic>;
            return OwnerOrdersScreen(store: arguments['store']);
          },
        );

      case ownerProductsScreen:
        return MaterialPageRoute(
          builder: (context) {
            final Map<String, dynamic> arguments =
                settings.arguments as Map<String, dynamic>;
            return OwnerProductsScreen(store: arguments['store']);
          },
        );

      case ownerCategoryScreen:
        return MaterialPageRoute(
          builder: (context) {
            final Map<String, dynamic> arguments =
                settings.arguments as Map<String, dynamic>;
            return OwnerCategoryScreen(
              stores: arguments['stores'],
            );
          },
        );

      case ownerSellerScreen:
        return MaterialPageRoute(
          builder: (context) {
            final Map<String, dynamic> arguments =
                settings.arguments as Map<String, dynamic>;
            return OwnerSellerScreen(store: arguments['store']);
          },
        );

      case ownerShelvesScreen:
        return MaterialPageRoute(
          builder: (context) {
            final Map<String, dynamic> arguments =
                settings.arguments as Map<String, dynamic>;
            return OwnerShelvesScreen(store: arguments['store']);
          },
        );

      case shelfDetailScreen:
        return MaterialPageRoute(
          builder: (context) {
            final Map<String, dynamic> arguments =
                settings.arguments as Map<String, dynamic>;
            return ShelfDetailsScreen(
              shelf: arguments['shelf'],
            );
          },
        );

      case addShelfScreen:
        return MaterialPageRoute(
          builder: (context) {
            final Map<String, dynamic> arguments =
                settings.arguments as Map<String, dynamic>;
            return AddShelfScreen(
              store: arguments['store'],
            );
          },
        );

      case productRequestDetailScreen:
        return MaterialPageRoute(
          builder: (context) {
            final Map<String, dynamic> arguments =
                settings.arguments as Map<String, dynamic>;
            return ProductRequestDetailScreen(
                request: arguments['request'],
                shelves: arguments['shelves'],
                isOwner: arguments['isOwner']);
          },
        );

      case editStoreScreen:
        return MaterialPageRoute(
          builder: (context) {
            final Map<String, dynamic> arguments =
                settings.arguments as Map<String, dynamic>;
            return EditStoreScreen(
              cityId: arguments['cityId'],
              storeId: arguments['storeId'],
            );
          },
        );

      case containerProductDetailScreen:
        return MaterialPageRoute(
          builder: (context) {
            final Map<String, dynamic> arguments =
                settings.arguments as Map<String, dynamic>;
            return ContainerProductDetailScreen(
              product: arguments['product'],
            );
          },
        );

      case qrCodeScreen:
        return MaterialPageRoute(
          builder: (context) {
            return QrCodeScreen();
          },
        );

      default:
        const SignInScreen();

        return MaterialPageRoute(
          builder: (context) {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            );
          },
          fullscreenDialog: true,
        );
    }
  }

  ///Singleton factory
  static final Routes _instance = Routes._internal();

  factory Routes() {
    return _instance;
  }

  Routes._internal();
}
