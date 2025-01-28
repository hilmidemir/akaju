import 'package:get/get.dart';
import '../models/job_model.dart';
import '../services/job_service.dart';

class JobController extends GetxController {
  var jobs = <JobModel>[].obs;
  var isLoading = true.obs;
  final JobService _jobService = JobService();

  @override
  void onInit() {
    fetchJobs();
    super.onInit();
  }

  void fetchJobs() async {
    isLoading(true);
    try {
      var fetchedJobs = await _jobService.fetchJobs();
      jobs.assignAll(fetchedJobs);
    } finally {
      isLoading(false);
    }
  }
}
