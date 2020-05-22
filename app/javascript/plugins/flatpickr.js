
// import flatpickr from 'flatpickr'
// import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

// flatpickr(".datepicker", {
//   "plugins": [new rangePlugin({ input: "#secondRangeInput"})]
// });

import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

flatpickr("#range_start", {
  altInput: true,
  // plugins: [new rangePlugin({ input: "#range_end"})]
});


flatpickr("#range_end", {
  altInput: true,
  // plugins: [new rangePlugin({ input: "#range_start"})]
});
