class APIResponse<T> {
  final String error;
  final T data;

  APIResponse({this.error = '', required this.data});
}
