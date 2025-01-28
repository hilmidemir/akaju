import 'package:flutter/material.dart';
import '../../models/job_model.dart';

class JobCard extends StatelessWidget {
  final JobModel job;

  const JobCard({required this.job});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(job.title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text(job.date, style: TextStyle(color: Colors.grey)),
              ],
            ),
            SizedBox(height: 8),
            Text(job.description),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(job.quantity, style: TextStyle(fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    Icon(Icons.warning, color: Colors.red),
                    Text(job.status, style: TextStyle(color: Colors.red)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
