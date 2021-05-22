[@ocaml.warning "-27-30-39"];

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

let rec default_temperature_unit = (): temperature_unit => C;

let rec default_temperature =
        (~u: temperature_unit=default_temperature_unit(), ~v: float=0., ())
        : temperature => {
  u,
  v,
};

let rec default_request =
        (
          ~desired: temperature_unit=default_temperature_unit(),
          ~temperature: option(temperature)=None,
          (),
        )
        : request => {
  desired,
  temperature,
};

let rec default_response = (): response => Error("");
