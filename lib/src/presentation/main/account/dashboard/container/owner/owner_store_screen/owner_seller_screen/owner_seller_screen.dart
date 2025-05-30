// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:heidi/src/data/model/model_seller.dart';
import 'package:heidi/src/data/model/model_store.dart';
import 'package:heidi/src/data/repository/container_repository.dart';
import 'package:heidi/src/presentation/main/account/dashboard/container/owner/owner_store_screen/owner_seller_screen/cubit/owner_seller_cubit.dart';
import 'package:heidi/src/presentation/main/account/dashboard/container/owner/owner_store_screen/owner_seller_screen/cubit/owner_seller_state.dart';
import 'package:heidi/src/presentation/widget/app_button.dart';
import 'package:heidi/src/utils/configs/routes.dart';
import 'package:heidi/src/utils/translate.dart';

class OwnerSellerScreen extends StatefulWidget {
  final StoreModel store;

  const OwnerSellerScreen({super.key, required this.store});

  @override
  State<OwnerSellerScreen> createState() => _OwnerSellerScreenState();
}

class _OwnerSellerScreenState extends State<OwnerSellerScreen> {
  @override
  void initState() {
    super.initState();
    context.read<OwnerSellerCubit>().store = widget.store;
    context.read<OwnerSellerCubit>().onLoad(false);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OwnerSellerCubit, OwnerSellerState>(
        builder: (context, state) => state.maybeWhen(
            loading: () => const OwnerSellerLoading(),
            loaded: (seller) => OwnerSellerLoaded(
                  seller: seller,
                ),
            orElse: () => ErrorWidget("Failed to load seller.")));
  }
}

class OwnerSellerLoaded extends StatefulWidget {
  final List<SellerModel> seller;

  const OwnerSellerLoaded({super.key, required this.seller});

  @override
  State<OwnerSellerLoaded> createState() => _OwnerSellerLoadedState();
}

class _OwnerSellerLoadedState extends State<OwnerSellerLoaded> {
  final ScrollController _scrollController = ScrollController();
  List<SellerModel> seller = [];

  bool isLoadingMore = false;
  int pageNo = 1;

  Future _scrollListener() async {
    if (_scrollController.position.atEdge) {
      if (_scrollController.position.pixels != 0) {
        setState(() {
          isLoadingMore = true;
        });
        final newSeller =
            await context.read<OwnerSellerCubit>().newSeller(++pageNo);
        seller.addAll(newSeller);
        if (newSeller.isEmpty) {
          _scrollController.removeListener(_scrollListener);
        }
        setState(() {
          isLoadingMore = false;
        });
      }
    }
  }

  Future<void> showDeleteConfirmation(
      BuildContext buildContext, SellerModel seller) async {
    final result = await showDialog(
      context: buildContext,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(Translate.of(context).translate('delete_Confirmation')),
          content: Text(
              Translate.of(context).translate('are_you_sure_remove_seller')),
          actions: <Widget>[
            TextButton(
              onPressed: () async {
                Navigator.of(context).pop(true);
              },
              child: Text(Translate.of(context).translate('yes')),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: Text(Translate.of(context).translate('no')),
            ),
          ],
        );
      },
    );

    if (result == true) {
      await context.read<OwnerSellerCubit>().deleteSeller(seller.id);
      context.read<OwnerSellerCubit>().onLoad(false);
    }
  }

  @override
  void initState() {
    super.initState();
    seller.addAll(widget.seller);
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Translate.of(context).translate('seller')),
          centerTitle: true,
          actions: [
            AppButton(Translate.of(context).translate('requests'),
                type: ButtonType.text, onPressed: () {
              Navigator.pushNamed(
                  context, Routes.sellerRequestsViewScreen, arguments: {
                'isOwner': true,
                'store': context.read<OwnerSellerCubit>().store
              }).then((a) => context.read<OwnerSellerCubit>().onLoad(false));
            })
          ],
        ),
        body: (seller.isNotEmpty)
            ? ListView.separated(
                controller: _scrollController,
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemBuilder: (context, int index) {
                  if (index < seller.length) {
                    SellerModel item = seller[index];
                    return InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Stack(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          item.title ?? '',
                                          maxLines: 2,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(height: 4),
                                        Html(
                                          data: (item.description != null)
                                              ? ContainerRepository
                                                  .removeDoubleEnumHtml(
                                                      item.description!)
                                              : '',
                                        ),
                                        const SizedBox(height: 4),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              Translate.of(context)
                                                  .translate('maccount'),
                                              maxLines: 2,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall!
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.bold),
                                            ),
                                            Text(
                                              item.username ??
                                                  Translate.of(context)
                                                      .translate('undefined'),
                                              maxLines: 2,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        showDeleteConfirmation(context, item);
                                      },
                                      icon: const Icon(Icons.delete))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  } else {
                    return (isLoadingMore)
                        ? const Padding(
                            padding: EdgeInsets.only(top: 12.0),
                            child: Center(
                              child: CircularProgressIndicator.adaptive(),
                            ),
                          )
                        : Container();
                  }
                },
                itemCount: seller.length + 1,
              )
            : Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Icon(Icons.sentiment_satisfied),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        Translate.of(context).translate('list_is_empty'),
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
              ));
  }
}

class OwnerSellerLoading extends StatelessWidget {
  const OwnerSellerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
