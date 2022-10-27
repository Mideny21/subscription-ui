import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'payment_provider.dart';

final paymentButtonProvider =
    ChangeNotifierProvider.autoDispose((_) => PaymentButton());
