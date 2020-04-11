class ProductsFetchError extends Error {
  String message = 'Unable to fetch';
}

class ProductSaveError extends Error {
  String message = 'Unable to save product';
}
