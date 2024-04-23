import 'package:flutter/cupertino.dart';

class CupertinoTransactionTile extends StatelessWidget {
  final bool isDeposit;
  final int index;

  const CupertinoTransactionTile({
    super.key,
    required this.isDeposit,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: CupertinoColors.separator,
            width: 0.5,
          ),
        ),
      ),
      child: Row(
        children: <Widget>[
          Icon(
            isDeposit ? CupertinoIcons.arrow_down : CupertinoIcons.arrow_up,
            color: isDeposit ? CupertinoColors.activeGreen : CupertinoColors.destructiveRed,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'عملية ${isDeposit ? "إيداع" : "سحب"}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  '24 - 11 - 2023',
                  style: TextStyle(
                    color: CupertinoColors.inactiveGray,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Text(
            'درهم ${1000 + index * 50}.00',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: CupertinoColors.black,
            ),
          ),
        ],
      ),
    );
  }
}
