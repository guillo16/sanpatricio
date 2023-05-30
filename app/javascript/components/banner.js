import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["International Baccalaureate", "Bachillerato Internacional", "Baccalauréat International"],
    typeSpeed: 80,
    loop: true
  });
}

const loadDynamicBannerTextTwo = () => {
  new Typed('#banner-typed-text-secondary', {
    strings: ["Colegio SAN PATRICIO", "Fundado en 1976"],
    typeSpeed: 80,
    loop: true
  });
}

const loadDynamicBannerTextThree = () => {
  new Typed('#banner-typed-text-third', {
    strings: ["Colegio SAN PATRICIO", "Fundado en 1976"],
    typeSpeed: 80,
    loop: true
  });
}

const loadDynamicBannerTextFour = () => {
  new Typed('#banner-typed-text-four', {
    strings: ["Colegio SAN PATRICIO", "Fundado en 1976"],
    typeSpeed: 80,
    loop: true
  });
}

export { loadDynamicBannerText, loadDynamicBannerTextTwo, loadDynamicBannerTextThree, loadDynamicBannerTextFour };
