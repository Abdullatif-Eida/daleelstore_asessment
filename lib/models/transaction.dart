class Transaction {
  final int amount;
  final String description;
  final bool isBuying;
  final String date;
  final String transactionCode;
  final int rewardPoints;
  final String programName;
  final bool isExpanded;

  Transaction({
    required this.amount,
    required this.description,
    required this.isBuying,
    required this.date,
    required this.transactionCode,
    required this.rewardPoints,
    required this.programName,
    this.isExpanded = false,
  });

  Transaction copyWith({bool? isExpanded}) {
    return Transaction(
      amount: amount,
      description: description,
      isBuying: isBuying,
      date: date,
      transactionCode: transactionCode,
      rewardPoints: rewardPoints,
      programName: programName,
      isExpanded: isExpanded ?? this.isExpanded,
    );
  }
}
