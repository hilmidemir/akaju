import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/job_controller.dart';
import 'widgets/job_card.dart';
import 'widgets/tab_button.dart';
import 'widgets/bottom_nav_bar.dart';

class ManagementPage extends StatelessWidget {
  final JobController jobController = Get.put(JobController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AKAJU Yönetim', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Color(0xFF003366),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Üst Sekmeler
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TabButton(title: 'Başlayacak', isActive: true),
                TabButton(title: 'Devam Eden', isActive: false),
                TabButton(title: 'Tamamlanan', isActive: false),
              ],
            ),
          ),
          // İş Emri Kartları
          Expanded(
            child: Obx(() {
              if (jobController.isLoading.value) {
                return Center(child: CircularProgressIndicator());
              }
              return ListView.builder(
                itemCount: jobController.jobs.length,
                itemBuilder: (context, index) {
                  return JobCard(job: jobController.jobs[index]);
                },
              );
            }),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
