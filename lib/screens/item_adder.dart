import 'package:flutter/material.dart';
import '../models/items_data.dart';
import 'package:provider/provider.dart';

class ItemAdder extends StatelessWidget {
  final textController = TextEditingController();

  ItemAdder({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  minLines: 1,
                  maxLines: 3,
                  controller: textController,
                  onChanged: (input) {},
                  style: const TextStyle(color: Colors.black, fontSize: 20),
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Add Item',
                      hintText: '...'),
                  autofocus: true,
                ),
                ElevatedButton(
                    onPressed: () {
                      Provider.of<ItemData>(context, listen: false)
                          .addItem(textController.text);
                      Navigator.pop(context);
                    },
                    child: const Text('ADD'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
