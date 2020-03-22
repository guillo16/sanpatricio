import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["International Baccalaureate", "Bachillerato Internacional", "Baccalauréat International"],
    typeSpeed: 80,
    loop: true
  });
}

export { loadDynamicBannerText };
