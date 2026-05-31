import 'package:supabase_flutter/supabase_flutter.dart';

const supabaseUrl = 'https://YOUR-SUPABASE-PROJECT.supabase.co';
const supabaseAnonKey = 'YOUR_SUPABASE_ANON_KEY';

Future<void> initSupabase() async {
  await Supabase.initialize(
    url: supabaseUrl,
    anonKey: supabaseAnonKey,
    authFlowType: AuthFlowType.local,
  );
}
