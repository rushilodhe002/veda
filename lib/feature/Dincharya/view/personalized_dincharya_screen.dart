import 'package:flutter/material.dart';
import 'package:donation_management/utils/constants/app_colors.dart';

class PersonalizedDincharyaScreen extends StatefulWidget {
  const PersonalizedDincharyaScreen({Key? key}) : super(key: key);

  @override
  State<PersonalizedDincharyaScreen> createState() => _PersonalizedDincharyaScreenState();
}

class _PersonalizedDincharyaScreenState extends State<PersonalizedDincharyaScreen> {
  final List<_Task> _tasks = [
    _Task('Create icons for a dashboard'),
    _Task('Prepare a design presentation'),
    _Task('Stretch for 15 minutes'),
    _Task('Plan your meal'),
    _Task('Review daily goals before sleeping. Add some new if time permits'),
    _Task('Water indoor plants'),
  ];
  final TextEditingController _controller = TextEditingController();

  void _addTask() {
    final text = _controller.text.trim();
    if (text.isNotEmpty) {
      setState(() {
        _tasks.add(_Task(text));
        _controller.clear();
      });
    }
  }

  void _toggleTask(int index) {
    setState(() {
      _tasks[index].done = !_tasks[index].done;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              const Text(
                'Personalized Dincharya',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(height: 12),
              Expanded(
                child: ListView.separated(
                  itemCount: _tasks.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 8),
                  itemBuilder: (context, index) {
                    final task = _tasks[index];
                    return Material(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: () => _toggleTask(index),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                          child: Row(
                            children: [
                              Checkbox(
                                value: task.done,
                                onChanged: (_) => _toggleTask(index),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  task.text,
                                  style: TextStyle(
                                    fontSize: 16,
                                    decoration: task.done ? TextDecoration.lineThrough : null,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: const InputDecoration(
                        hintText: 'Write a task...',
                        border: OutlineInputBorder(),
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                      ),
                      onSubmitted: (_) => _addTask(),
                    ),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: _addTask,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black87,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                    child: const Text('Add'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Task {
  final String text;
  bool done;
  _Task(this.text, {this.done = false});
} 