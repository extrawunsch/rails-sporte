const initUpdateNavbarOnScroll = () => {
    const navbar = document.querySelector('nav');
    if (navbar) {
      window.addEventListener('scroll', () => {
        if (window.scrollY >= 60) {
          navbar.classList.add('black');
        } else {
          navbar.classList.remove('black');
        }
      });
    }
  }
  
  export { initUpdateNavbarOnScroll };