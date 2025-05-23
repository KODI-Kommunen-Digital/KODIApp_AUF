import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:heidi/src/data/model/model_cart_item.dart';
import 'package:heidi/src/data/model/model_order.dart';
import 'package:heidi/src/presentation/widget/app_placeholder.dart';
import 'package:heidi/src/utils/configs/application.dart';
import 'package:heidi/src/utils/configs/routes.dart';
import 'package:heidi/src/utils/translate.dart';

class OrderListScreen extends StatefulWidget {
  final List<OrderModel>? orders;
  final List<CartItemModel>? sellerOrders;
  final int pageNo;
  final Function(int) loadMore;
  final bool finishedLoading;

  const OrderListScreen(
      {super.key,
      this.orders,
      this.sellerOrders,
      required this.loadMore,
      required this.pageNo,
      required this.finishedLoading});

  @override
  State<OrderListScreen> createState() => _OrderListScreenState();
}

class _OrderListScreenState extends State<OrderListScreen> {
  final ScrollController _scrollController = ScrollController();
  bool isLoadingMore = false;

  Future _scrollListener() async {
    if (_scrollController.position.atEdge && !widget.finishedLoading) {
      if (_scrollController.position.pixels != 0) {
        setState(() {
          isLoadingMore = true;
          widget.loadMore(widget.pageNo);
        });
        await Future.delayed(const Duration(seconds: 2));
        setState(() {
          isLoadingMore = false;
        });
      }
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  Widget build(BuildContext context) {
    final memoryCacheManager = DefaultCacheManager();
    return (widget.orders != null)
        ? (widget.orders!.isNotEmpty)
            ? ListView.builder(
                controller: _scrollController,
                itemBuilder: (context, index) {
                  if (index < widget.orders!.length) {
                    OrderModel item = widget.orders![index];
                    dynamic firstProduct;
                    if (item.shelves.isNotEmpty) {
                      firstProduct = item.shelves.first.product;
                    }
                    return Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, Routes.orderDetailsScreen,
                              arguments: {'order': item});
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Stack(
                            children: [
                              Row(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: CachedNetworkImage(
                                      imageUrl: ((firstProduct?.productImages ??
                                                  [])
                                              .isNotEmpty)
                                          ? '${Application.picturesURL}${firstProduct.productImages!.last}'
                                          : '${Application.picturesURL}admin/News.jpeg',
                                      cacheManager: memoryCacheManager,
                                      placeholder: (context, url) {
                                        return AppPlaceholder(
                                          child: Container(
                                            height: 140,
                                            width: 120,
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                            ),
                                          ),
                                        );
                                      },
                                      imageBuilder: (context, imageProvider) {
                                        return Container(
                                          width: 120,
                                          height: 140,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: imageProvider,
                                              fit: BoxFit.fitHeight,
                                            ),
                                          ),
                                        );
                                      },
                                      errorWidget: (context, url, error) {
                                        return AppPlaceholder(
                                          child: Container(
                                            width: 120,
                                            height: 140,
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(8),
                                                bottomLeft: Radius.circular(8),
                                              ),
                                            ),
                                            child: const Icon(Icons.error),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        const SizedBox(
                                          height: 24,
                                        ),
                                        Text(
                                          "${Translate.of(context).translate('order')}: ${item.id.toString()}",
                                          maxLines: 2,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(height: 8),
                                        Text(
                                          "${Translate.of(context).translate('amount')}: ${item.amount.toString()}€",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        const SizedBox(height: 4),
                                        if (item.discount != null)
                                          Text(
                                            "${Translate.of(context).translate('discount')}: ${item.discount!.toString()}€",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        const SizedBox(height: 4),
                                        Text(
                                          item.formatDate(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 8),
                                        const SizedBox(height: 4),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  } else {
                    return (isLoadingMore)
                        ? const Center(
                            child: CircularProgressIndicator.adaptive(),
                          )
                        : Container();
                  }
                },
                itemCount: widget.orders!.length + 1,
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
              )
        : ((widget.sellerOrders ?? []).isNotEmpty)
            ? ListView.separated(
                controller: _scrollController,
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemBuilder: (context, index) {
                  if (index < widget.sellerOrders!.length) {
                    CartItemModel item = widget.sellerOrders![index];
                    return Container(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Stack(
                        children: [
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    const SizedBox(
                                      height: 24,
                                    ),
                                    Text(
                                      'Order: ${item.name}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      '${Translate.of(context).translate('total')}: ${item.totalPrice.toString()}€',
                                      maxLines: 2,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      '${Translate.of(context).translate('quantity')}: ${item.quantity}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                        '${Translate.of(context).translate('price_per_quantity')}: ${item.pricePerQuantity}€',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 8),
                                    const SizedBox(height: 8),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  } else {
                    return (isLoadingMore)
                        ? const Center(
                            child: CircularProgressIndicator.adaptive(),
                          )
                        : Container();
                  }
                },
                itemCount: widget.sellerOrders!.length + 1,
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
              );
  }
}
