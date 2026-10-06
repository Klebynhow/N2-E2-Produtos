class LifecycleManager {
  static final List<String> history = [];
  static void register(String state){
    final timestamp = DateTime.now().toString().substring(11, 19); 
    history.add('[$timestamp] Estado: $state');
  }
}

