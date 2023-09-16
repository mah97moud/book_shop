sealed class Result<S, E extends Exception> {}

final class ResultSuccess<S, E extends Exception> extends Result<S, E> {
  ResultSuccess(this.data);

  final S data;
}

final class ResultFailure<S, E extends Exception> extends Result<S, E> {
  ResultFailure(this.exception);

  final E exception;
}

extension ResultExtension<S, E extends Exception> on Result<S, E> {
  fold(
    Function(S data) onSuccess,
    Function(E exception) onFailure,
  ) {
    return switch (this) {
      ResultSuccess(data: final data) => onSuccess(data),
      ResultFailure(exception: final ex) => onFailure(ex),
    };
  }
}
