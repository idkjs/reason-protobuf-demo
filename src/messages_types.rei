/** messages.proto Types */;

/** {2 Types} */;

type temperature_unit =
  | C
  | F;

type temperature = {
  u: temperature_unit,
  v: float,
};

type request = {
  desired: temperature_unit,
  temperature: option(temperature),
};

type response =
  | Error(string)
  | Temperature(temperature);

/** {2 Default values} */;

/** [default_temperature_unit ()] is the default value for type [temperature_unit] */

let default_temperature_unit: unit => temperature_unit;

/** [default_temperature ()] is the default value for type [temperature] */

let default_temperature:
  (~u: temperature_unit=?, ~v: float=?, unit) => temperature;

/** [default_request ()] is the default value for type [request] */

let default_request:
  (~desired: temperature_unit=?, ~temperature: option(temperature)=?, unit) =>
  request;

/** [default_response ()] is the default value for type [response] */

let default_response: unit => response;
