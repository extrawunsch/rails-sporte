import flatpickr from "flatpickr";

const initFlatpickr = () => {
  flatpickr(".datepicker", {
    dateFormat: "d-m-Y",
    mode: 'range'
  });
};

export { initFlatpickr };