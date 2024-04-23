import 'package:daleelstore_asessment/controllers/main_controller.dart';
import 'package:daleelstore_asessment/ui/colors/app_colors.dart';
import 'package:daleelstore_asessment/widgets/wallet/cupertino_transaction_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class WalletPage extends GetView<MainController> {
  const WalletPage({super.key});
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppColors.secondaryGreen,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: _buildBalanceInfo(),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return _buildTransactionTile(index);
              },
              childCount: 20, // Adjust number of transactions here
            ),
          ),
        ],
      ),
    );
  }

  // Build Balance Information
  Widget _buildBalanceInfo() {
    return Container(
      color: CupertinoColors.activeGreen,
      padding: const EdgeInsets.all(16.0),
      child: const Column(
        children: [
          Text(
            'الرصيد الحالي',
            style: TextStyle(color: CupertinoColors.white),
          ),
          SizedBox(height: 10),
          Text(
            'درهم 14,235.34',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: CupertinoColors.white),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(CupertinoIcons.arrow_down, color: CupertinoColors.white),
              Text('إيداع الرصيد', style: TextStyle(color: CupertinoColors.white)),
              Icon(CupertinoIcons.arrow_up, color: CupertinoColors.white),
              Text('سحب الرصيد', style: TextStyle(color: CupertinoColors.white)),
            ],
          ),
        ],
      ),
    );
  }

  // Build Transaction Tile
  Widget _buildTransactionTile(int index) {
    // Mock data for transaction, this should ideally come from a data source
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: CupertinoColors.separator, width: 0.0),
        ),
      ),
      child: CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          child: CupertinoTransactionTile(
            isDeposit: index % 2 == 0,
            index: index,
          )),
    );
  }
}
