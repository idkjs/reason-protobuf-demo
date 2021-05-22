/** messages.proto BuckleScript Encoding */;

/** {2 Protobuf JSON Encoding} */;

/** [encode_temperature_unit v] returns JSON string*/

let encode_temperature_unit: Messages_types.temperature_unit => string;

/** [encode_temperature v dict] encodes [v] int the given JSON [dict] */

let encode_temperature: Messages_types.temperature => Js_dict.t(Js_json.t);

/** [encode_request v dict] encodes [v] int the given JSON [dict] */

let encode_request: Messages_types.request => Js_dict.t(Js_json.t);

/** [encode_response v dict] encodes [v] int the given JSON [dict] */

let encode_response: Messages_types.response => Js_dict.t(Js_json.t);

/** {2 BS Decoding} */;

/** [decode_temperature_unit value] decodes a [temperature_unit] from a Json value*/

let decode_temperature_unit: Js_json.t => Messages_types.temperature_unit;

/** [decode_temperature decoder] decodes a [temperature] value from [decoder] */

let decode_temperature: Js_dict.t(Js_json.t) => Messages_types.temperature;

/** [decode_request decoder] decodes a [request] value from [decoder] */

let decode_request: Js_dict.t(Js_json.t) => Messages_types.request;

/** [decode_response decoder] decodes a [response] value from [decoder] */

let decode_response: Js_dict.t(Js_json.t) => Messages_types.response;
