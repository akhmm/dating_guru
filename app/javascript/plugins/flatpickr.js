import flatpickr from "flatpickr"

export const initFlatpickr = () => {
  flatpickr(".datepicker", {
    minDate: Date.now(),
    maxDate: "2025"
  })
}
