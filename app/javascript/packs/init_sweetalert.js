import Swal from 'sweetalert2'

const initSweetalert = (selector, options = {}) => {
  const swalButtons = document.querySelectorAll(selector);
  swalButtons.forEach(swalButton => {
    // protect other pages
      swalButton.addEventListener('click', (event) => {
        event.preventDefault()
        swalWithBootstrapButtons.fire(options).then((result) => {
      if (result.value) {
        document.querySelector('.target').click()
      } else if (
        /* Read more about handling dismissals below */
        result.dismiss === Swal.DismissReason.cancel
      ) {
        swalWithBootstrapButtons.fire(
          'Cancelled',
          'Your imaginary file is safe :)',
        'error'
        )
        }
      });
    });
  })
};


const swalWithBootstrapButtons = Swal.mixin({
  customClass: {
    confirmButton: 'btn btn-dark ml-3',
    cancelButton: 'btn btn-outline-dark'
  },
  buttonsStyling: false
})

// swalWithBootstrapButtons.fire({
//   title: 'Are you sure?',
//   text: "You won't be able to revert this!",
//   icon: 'warning',
//   showCancelButton: true,
//   confirmButtonText: 'Yes, delete it!',
//   cancelButtonText: 'No, cancel!',
//   reverseButtons: true
// }).then((result) => {
//   if (result.value) {
//     swalWithBootstrapButtons.fire(
//       'Deleted!',
//       'Your file has been deleted.',
//       'success'
//     )
//   } else if (
//     /* Read more about handling dismissals below */
//     result.dismiss === Swal.DismissReason.cancel
//   ) {
//     swalWithBootstrapButtons.fire(
//       'Cancelled',
//       'Your imaginary file is safe :)',
//       'error'
//     )
//   }
// })

export { initSweetalert };
