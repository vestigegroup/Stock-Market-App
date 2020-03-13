import 'package:flutter/material.dart';
import 'package:sma/models/share.dart';
import 'package:sma/widgets/portfolio/widgets/styles.dart';

class PortfolioTitle extends StatelessWidget {

  final StockData stock;

  PortfolioTitle({
    @required this.stock
  });

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: MaterialButton(

        height: 100,
        onPressed: () {},

        color: Color(0XFF3d3d3d),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(this.stock.tickerSymbol, style: kTickerSymbol),
                SizedBox(height: 4),
                Text(this.stock.name, style: kCompanyName)
              ], 
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('\$${stock.price}'),
                SizedBox(height: 4),
                Text(this.stock.change, style: kNegativeChange)
              ], 
            ),
          ],
        ),

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}

