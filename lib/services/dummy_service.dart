class DummyService {
  Future<String> getDummyString() async {
    await Future.delayed(const Duration(milliseconds: 2000));

    return "dummy string";
  }
}
