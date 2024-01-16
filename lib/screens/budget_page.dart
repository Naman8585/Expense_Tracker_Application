import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Expense {
  final String name;
  final double amount;

  Expense({required this.name, required this.amount});
}

class ExpenseProvider with ChangeNotifier {
  List<Expense> _expenses = [];

  List<Expense> get expenses => _expenses;

  double get totalExpense {
    return _expenses.isEmpty
        ? 0.0
        : _expenses.map((e) => e.amount).reduce((a, b) => a + b);
  }

  void addExpense(Expense expense) {
    _expenses.add(expense);
    notifyListeners();
  }

  void removeExpense(Expense expense) {
    _expenses.remove(expense);
    notifyListeners();
  }
}

class BudgetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ExpenseProvider(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Expense Tracker'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TotalExpenseWidget(),
              SizedBox(height: 20),
              ExpenseListWidget(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _showAddExpenseDialog(context),
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  void _showAddExpenseDialog(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController amountController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Expense'),
          content: Column(
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Expense Name'),
              ),
              TextField(
                controller: amountController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Amount'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                final name = nameController.text;
                final amount = double.tryParse(amountController.text) ?? 0.0;

                if (name.isNotEmpty && amount > 0) {
                  final expense = Expense(name: name, amount: amount);

                  Provider.of<ExpenseProvider>(context, listen: false)
                      .addExpense(expense);

                  Navigator.pop(context);
                }
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }
}

class TotalExpenseWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ExpenseProvider>(
      builder: (context, expenseProvider, child) {
        final totalExpense = expenseProvider.totalExpense;

        return Card(
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Total Expense',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  '\$$totalExpense',
                  style: TextStyle(fontSize: 24, color: Colors.red),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class ExpenseListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ExpenseProvider>(
      builder: (context, expenseProvider, child) {
        final expenses = expenseProvider.expenses;

        return Expanded(
          child: ListView.builder(
            itemCount: expenses.length,
            itemBuilder: (context, index) {
              final expense = expenses[index];
              return Card(
                elevation: 3,
                margin: EdgeInsets.symmetric(vertical: 8),
                child: ListTile(
                  title: Text(expense.name),
                  subtitle: Text('\$${expense.amount}'),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      expenseProvider.removeExpense(expense);
                    },
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
