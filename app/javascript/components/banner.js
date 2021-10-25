import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Save any kind", "of movie"],
    typeSpeed: 100,
    loop: true
  });
}

export { loadDynamicBannerText };
