import 'package:flutter/material.dart';
import 'package:next/widgets/ItemsWidget.dart';

class ActionsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemsWidget(
          col1: [
            Icons.attach_money,
            'SALDO E ESTRATO'
          ],
          col2: [
            Icons.compare_arrows,
            'TRANSFERENCIAS'
          ],
        ),
        ItemsWidget(
          col1: [
            Icons.calendar_view_day,
            'PAGAR CONTA'
          ],
          col2: [
            Icons.phone_android,
            'RECARGA CELULAR'
          ],
        ),
        ItemsWidget(
          col1: [
            Icons.credit_card,
            'CARTÃO'
          ],
          col2: [
            Icons.star_border,
            'MIMOS'
          ],
        ),
        ItemsWidget(
          col1: [
            Icons.favorite_border,
            'OBJETIVOS'
          ],
          col2: [
            Icons.hourglass_empty,
            'FLOW'
          ],
        ),
        ItemsWidget(
          col1: [
            Image.asset('assets/next_icons/Porco.png'),
            'INVESTIMENTOS'
          ],
          col2: [
            Image.asset('assets/next_icons/Dinheiro.png'),
            'CREDITO'
          ],
        ),
        ItemsWidget(
          col1: [
            Image.asset('assets/next_icons/Vaca.png'),
            'VAQUINHA'
          ],
          col2: [
            Image.asset('assets/next_icons/Escudo.png'), 
            'PROTEÇÃO'
          ],
        ),
        ItemsWidget(
          col1: [
            Image.asset('assets/next_icons/Comprovante.png'),
            'COMPROVANTE'
          ],
          col2: [
            Image.asset('assets/next_icons/Carteira.png'),
            'TRAZER SALARIO'
          ],
        ),
        ItemsWidget(
          col1: [
            Image.asset('assets/next_icons/Emprestimo.png'),
            'DEPÓSITOS E SAQUES'
          ],
          col2: [
            Image.asset('assets/next_icons/Estrela.png'),
            'NEXTJOY'
          ],
        ),
      ],
    );
  }
}