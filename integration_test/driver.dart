import 'package:integration_test/integration_test_driver_extended.dart';

//Instruments the app
// This code enables the integration test driver and then waits for the test to run. The response data is stored in a file named integration_response_data.json after the tests are run.
Future<void> main() => integrationDriver();
