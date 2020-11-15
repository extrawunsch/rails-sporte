const initUpdateNavbarOnScroll = () => {
    const navbar = document.querySelector('nav');
    if (navbar) {
      window.addEventListener('scroll', () => {
        if (window.scrollY >= window.innerHeight) {
          navbar.classList.add('black');
        } else {
          navbar.classList.remove('black');
        }
      });
    }
  }
  
  export { initUpdateNavbarOnScroll };