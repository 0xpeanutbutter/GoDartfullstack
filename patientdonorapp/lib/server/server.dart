import 'package:grpc/grpc.dart';
import 'package:patientdonorapp/protos/data.pbgrpc.dart';

class DonorPatientService {
  // declaring stub

  static DonorPatientsClient client = DonorPatientsClient(ClientChannel(
    "localhost",
    port: 9090,
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  ));
}
