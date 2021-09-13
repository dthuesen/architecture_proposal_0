class ConstantsRest {
  // ***
  // *** Comments below are taken from https://restfulapi.net/http-methods/
  // ***

  // Use POST APIs to create new subordinate resources,
  // e.g., a file is subordinate to a directory containing it or
  // a row is subordinate to a database table. When talking strictly
  // in terms of REST, POST methods are used to create a new resource
  // into the collection of resources
  static const String PUT = 'PUT';
  //
  //
  // Use PUT APIs primarily to update existing resource (if the resource
  // does not exist, then API may decide to create a new resource or not).
  // If a new resource has been created by the PUT API, the origin server
  // MUST inform the user agent via the HTTP response code 201 (Created)
  // response and if an existing resource is modified, either the 200 (OK)
  // or 204 (No Content) response codes SHOULD be sent to indicate successful
  // completion of the request.
  //
  // If the request passes through a cache and the Request-URI identifies
  // one or more currently cached entities, those entries SHOULD be treated
  // as stale. Responses to this method are not cacheable.
  static const String POST = 'POST';
  //
  //
  // As the name applies, DELETE APIs are used to delete resources
  // (identified by the Request-URI).
  //
  // A successful response of DELETE requests SHOULD be HTTP response
  // code 200 (OK) if the response includes an entity describing the
  // status, 202 (Accepted) if the action has been queued, or 204 (No Content)
  // if the action has been performed but the response does not
  // include an entity.
  static const String DELETE = 'DELETE';
  //
  //
  // HTTP PATCH requests are to make partial update on a resource.
  // If you see PUT requests also modify a resource entity, so to make
  // more clear – PATCH method is the correct choice for partially
  // updating an existing resource, and PUT should only be used if
  // you’re replacing a resource in its entirety.
  static const String PATCH = 'PATCH';
  //
  //
  // Use GET requests to retrieve resource representation/information
  // only – and not to modify it in any way. As GET requests do not change
  // the state of the resource, these are said to be safe methods.
  // Additionally, GET APIs should be idempotent, which means that
  // making multiple identical requests must produce the same result
  // every time until another API (POST or PUT) has changed the state
  // of the resource on the server.
  static const String GET = 'GET';
}
