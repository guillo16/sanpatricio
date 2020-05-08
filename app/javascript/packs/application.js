import "bootstrap";
import { initSweetalert } from '../plugins/init_sweetalert';

initSweetalert('#sweet-alert-demo', {
  title: "  Estas seguro?",
  text: "Esta accion no se puede revertir",
  icon: "warning",
  buttons: true,
  dangerMode: true,
}, (value) => {
  if (value) {
    const link = document.querySelector('#delete-link');
    link.click();
  }
  else {
    swal("Tu mensaje esta seguro");
  }
});

import { loadDynamicBannerText, loadDynamicBannerTextTwo } from '../components/banner';
loadDynamicBannerText(); loadDynamicBannerTextTwo();



// import { initUpdateNavbarOnScroll } from '../components/navbar';
// // initUpdateNavbarOnScroll();

