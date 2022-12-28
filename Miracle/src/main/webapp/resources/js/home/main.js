/*==================== SHOW MENU ====================*/
const navMenu = document.getElementById('nav-menu'),
      navToggle = document.getElementById('nav-toggle'),
      navClose = document.getElementById('nav-close')

/*===== MENU SHOW =====*/
if(navToggle){
    navToggle.addEventListener('click', () =>{
        navMenu.classList.add('show-menu')
    })
}

/*===== MENU HIDDEN =====*/
if(navClose){
  navClose.addEventListener('click', () =>{
      navMenu.classList.remove('show-menu')
  })
}

/*===== REMOVE MENU MOBILE =====*/
const navLink = document.querySelectorAll('.nav__link')

function linkAction(){
    const navMenu = document.getElementById('nav-menu')
    navMenu.classList.remove('show-menu')
}
navLink.forEach(n => n.addEventListener('click', linkAction))

/*==================== CHANGE BACKGROUND HEADER. 스크롤 할 때 어느순간 navbar 배경이 흰색으로 변경 ====================*/
function scrollHeader(){
  const header = document.getElementById('header')
  // When the scroll is greater than 100 viewport height, add the scroll-header class to the header tag
  if(this.scrollY >= 100){ 
    header.classList.add('scroll-header');
   } else { 
     header.classList.remove('scroll-header')
   }
}
window.addEventListener('scroll', scrollHeader)

/*==================== SWIPER DISCOVER ====================*/

var swiper = new Swiper(".discover__container", {
  effect: "coverflow",
  grabCursor: true,
  centeredSlides: true,
  slidesPerView: "auto",
  loop: true,
  spaceBetween: 32,
  coverflowEffect: {
    rotate: 0
  }
});

/*==================== VIDEO ====================*/
const videoFile = document.getElementById('video-file'),
      videoButton = document.getElementById('video-button'),
      videoIcon = document.getElementById('video-icon')

function playPause(){ 
  if (videoFile.paused){
      // Play video
      videoFile.play()
      // We change the icon
      videoIcon.classList.add('ri-pause-line')
      videoIcon.classList.remove('ri-play-line')
  }
  else {
      // Pause video
      videoFile.pause(); 
      // We change the icon
      videoIcon.classList.remove('ri-pause-line')
      videoIcon.classList.add('ri-play-line')

  }
}

videoButton.addEventListener('click', playPause)

function finalVideo(){
    // Video ends, icon change
    videoIcon.classList.remove('ri-pause-line')
    videoIcon.classList.add('ri-play-line')
}
// ended, when the video ends
videoFile.addEventListener('ended', finalVideo)

/*==================== SHOW SCROLL UP ====================*/ 
function scrollUp(){
  const scrollUp = document.getElementById('scroll-up');
  // When the scroll is higher than 200 viewport height, add the show-scroll class to the a tag with the scroll-top class
  if(this.scrollY >= 200){
    scrollUp.classList.add('show-scroll');
  } else{ 
    scrollUp.classList.remove('show-scroll')
  }
}
window.addEventListener('scroll', scrollUp)

/*==================== SCROLL SECTIONS ACTIVE LINK ====================*/
const sections = document.querySelectorAll('section[id]')

function scrollActive(){
    const scrollY = window.pageYOffset

    sections.forEach(current =>{
        const sectionHeight = current.offsetHeight
        const sectionTop = current.offsetTop - 50;
        sectionId = current.getAttribute('id')

        if(scrollY > sectionTop && scrollY <= sectionTop + sectionHeight){
            document.querySelector('.nav__menu a[href*=' + sectionId + ']').classList.add('active-link')
        }else{
            document.querySelector('.nav__menu a[href*=' + sectionId + ']').classList.remove('active-link')
        }
    })
}
window.addEventListener('scroll', scrollActive)

/*==================== DARK LIGHT THEME ====================*/ 
const themeButton = document.getElementById('theme-button')
const darkTheme = 'dark-theme'
const iconTheme = 'ri-sun-line'

// Previously selected topic (if user selected)
const selectedTheme = localStorage.getItem('selected-theme')
const selectedIcon = localStorage.getItem('selected-icon')

// We obtain the current theme that the interface has by validating the dark-theme class
const getCurrentTheme = () => document.body.classList.contains(darkTheme) ? 'dark' : 'light'
const getCurrentIcon = () => themeButton.classList.contains(iconTheme) ? 'ri-moon-line' : 'ri-sun-line'

// We validate if the user previously chose a topic
if (selectedTheme) {
  // If the validation is fulfilled, we ask what the issue was to know if we activated or deactivated the dark
  document.body.classList[selectedTheme === 'dark' ? 'add' : 'remove'](darkTheme)
  themeButton.classList[selectedIcon === 'ri-moon-line' ? 'add' : 'remove'](iconTheme)
}

// Activate / deactivate the theme manually with the button
themeButton.addEventListener('click', () => {
    // Add or remove the dark / icon theme
    document.body.classList.toggle(darkTheme)
    themeButton.classList.toggle(iconTheme)
    // We save the theme and the current icon that the user chose
    localStorage.setItem('selected-theme', getCurrentTheme())
    localStorage.setItem('selected-icon', getCurrentIcon())
})

/*==================== SCROLL REVEAL ANIMATION ====================*/
const sr = ScrollReveal({
  distance: '60px',
  duration: 2500,
  // reset: true,
})


sr.reveal(`.home__data, .home__social-link, .home__info,
          .section__title,
         .discover__container,
         .experience__data, .experience__overlay,
         .place__card,
         .sponsor__content,
         .footer__data, .footer__rights`,{
  origin: 'top',
  // interval: 100,
})

sr.reveal(`.about__data,
         .video__description,
         .subscribe__description`,{
  origin: 'left',
  interval: 100,
})

sr.reveal(`.about__img-overlay, 
         .video__content,
         .subscribe__form`,{
  origin: 'right',
  interval: 100,
})

if (window.matchMedia("(prefers-color-scheme: dark)").matches) {
    document.documentElement.classList.add("dark")
}

document.getElementById("toggleTheme").addEventListener("click",() => {
  document.documentElement.classList.toggle("dark")
})


var rouletter = {
	// 부여할 숫자 랜덤으로 하기
    random:function(){
        min = Math.ceil(0);
        max = Math.floor(5);
        return Math.floor(Math.random() * (max - min)) + min;      
    },
    // start 버튼
    start:function(){
    	var btn = document.querySelector('.rouletter-btn');
        var panel = document.querySelector('.rouletter-wacu');
        
        panel.classList.add('on');
        btn.innerText = 'stop';
    },
    // stop 버튼
    stop:function(){
        var btn = document.querySelector('.rouletter-btn');
    	var panel = document.querySelector('.rouletter-wacu');
        // 돌림판 형태가 6개로 분할되어있어 필요한 각도를 array로 만들었다.
        // 후에 length로 for문으로 돌려서 array처리로 변경하면 보다 동적으로 대처할수 있겠다.
        var deg = [60,120,180,240,300,360];
        
        panel.style.transform = 'rotate('+ deg[rouletter.random()] +'deg)';
        panel.classList.remove('on');
        btn.innerText = 'start';
    }
}
                                 
document.addEventListener('click',function(e){
    var target = e.target
    if( target.tagName === 'BUTTON'){
        target.innerText === 'start' 
            ? rouletter.start() : rouletter.stop();
    }
})