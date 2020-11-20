import flatpickr from "flatpickr";

const initFlatpickr = () => {
  flatpickr(".datepicker", {
    dateFormat: "d-m-Y",
    mode: 'range'
  });
  flatpickr(".date", {
    dateFormat: "d-m-Y"
  });
};

export { initFlatpickr };