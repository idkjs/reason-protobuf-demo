/** This module implement the temperature conversion API */;

open Messages_types;

/* Actual conversion logic */
let convert = (desired, {u, v} as t) =>
  if (desired == u) {
    t;
  } else {
    let v =
      switch (desired) {
      | C => (v -. 32.) *. 5. /. 9.
      | F => v *. 9. /. 5. +. 32.
      };

    {v, u: desired};
  };

/* Decoding request */
let request_of_json_string = json_str =>
  switch (Js_json.decodeObject @@ Js_json.parseExn(json_str)) {
  | None => None
  | Some(o) => Some(Messages_bs.decode_request(o))
  };

/* Encoding response */
let json_str_of_response = response =>
  Messages_bs.encode_response(response)
  |> Js_json.object_
  |> Js_json.stringify;

/* JSON entry point */
let convert_json = request_str =>
  switch (request_of_json_string(request_str)) {
  | Some({desired, temperature: Some(t)}) =>
    let response = Temperature(convert(desired, t));
    json_str_of_response(response);
  | _ => json_str_of_response(Error("error decoding request"))
  };
