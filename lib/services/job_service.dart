import '../models/job_model.dart';

class JobService {
  Future<List<JobModel>> fetchJobs() async {
    await Future.delayed(Duration(seconds: 1)); // Simüle edilmiş gecikme
    return [
      JobModel(
        title: 'Kanepe',
        description: '100 Adet kapı ahşap kapı üretilecek.',
        quantity: '100 Adet',
        status: 'Eksik Malzeme',
        date: '25/12/2025 13:30',
      ),
      JobModel(
        title: 'İş Emri Başlık',
        description: 'Satın alma sürecinin başlaması bekleniyor.',
        quantity: '500 Adet',
        status: 'Eksik Malzeme',
        date: '26/12/2025 14:00',
      ),
    ];
  }
}
