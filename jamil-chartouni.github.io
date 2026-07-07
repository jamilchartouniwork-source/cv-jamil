<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Jamil Chartouni — Communication & Marketing</title>
<meta name="description" content="Portfolio de Jamil Chartouni — communication, marketing, web & branding.">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@400;500;600;700&family=Inter:wght@400;500;600&family=JetBrains+Mono:wght@400;500&family=Cairo:wght@400;600;700;900&display=swap" rel="stylesheet">
<style>
  :root{
    --bg:#0C0F0C; --panel:#141813; --panel2:#1A1F18; --line2:#2C322A;
    --txt:#EBEDE5; --muted:#8B917E; --tan:#CDB781; --tan2:#E7D6A6; --olive:#7C8A54; --amber:#E0A63C;
    --display:'Oswald',sans-serif; --body:'Inter',sans-serif; --mono:'JetBrains Mono',monospace;
    --maxw:1140px; --ease:cubic-bezier(.16,1,.3,1);
  }
  html[lang="ar"]{ --display:'Cairo',sans-serif; --body:'Cairo',sans-serif; }
  *{box-sizing:border-box;margin:0;padding:0}
  html{scroll-behavior:smooth}
  body{background:var(--bg);color:var(--txt);font-family:var(--body);line-height:1.6;-webkit-font-smoothing:antialiased;overflow-x:hidden}
  .wrap{max-width:var(--maxw);margin:0 auto;padding:0 24px;position:relative;z-index:2}
  ::selection{background:var(--tan);color:#141614}

  .fx-grain{position:fixed;inset:0;z-index:1;pointer-events:none;opacity:.05;
    background-image:url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='140' height='140'%3E%3Cfilter id='n'%3E%3CfeTurbulence type='fractalNoise' baseFrequency='.85' numOctaves='2'/%3E%3C/filter%3E%3Crect width='100%25' height='100%25' filter='url(%23n)'/%3E%3C/svg%3E")}
  .fx-vig{position:fixed;inset:0;z-index:1;pointer-events:none;background:radial-gradient(120% 90% at 50% 0%,transparent 55%,rgba(0,0,0,.55) 100%)}

  .ticker{border-bottom:1px solid var(--line2);background:rgba(12,15,12,.6);backdrop-filter:blur(6px);position:relative;z-index:6}
  .ticker .wrap{display:flex;align-items:center;gap:10px;height:34px;font-family:var(--mono);font-size:11.5px;letter-spacing:.14em;color:var(--muted);text-transform:uppercase}
  .dot{width:8px;height:8px;border-radius:50%;background:var(--amber);animation:pulse 2.4s infinite;flex:none}
  @keyframes pulse{0%{box-shadow:0 0 0 0 rgba(224,166,60,.55)}70%{box-shadow:0 0 0 8px rgba(224,166,60,0)}100%{box-shadow:0 0 0 0 rgba(224,166,60,0)}}

  header.nav{position:sticky;top:0;z-index:30;background:rgba(12,15,12,.72);backdrop-filter:blur(12px);border-bottom:1px solid var(--line2)}
  header.nav .wrap{display:flex;align-items:center;justify-content:space-between;height:64px}
  .brand{display:flex;align-items:center;gap:12px;font-family:var(--display);font-weight:700;letter-spacing:.06em;font-size:18px}
  .brand .sq{width:26px;height:26px;border:1px solid var(--tan);display:grid;place-items:center;color:var(--tan);font-size:13px}
  .mono-tag{font-family:var(--mono);font-size:10px;color:var(--tan);border:1px solid var(--line2);padding:3px 7px;letter-spacing:.12em}
  nav.links{display:flex;gap:28px}
  nav.links a{color:var(--muted);text-decoration:none;font-size:13.5px;letter-spacing:.04em;font-weight:500;transition:color .2s;position:relative;padding:4px 0}
  nav.links a:hover,nav.links a:focus-visible{color:var(--txt)}
  nav.links a::after{content:"";position:absolute;left:0;bottom:0;height:2px;width:0;background:var(--tan);transition:width .3s var(--ease)}
  nav.links a:hover::after{width:100%}
  .lang{display:flex;border:1px solid var(--line2);border-radius:2px;overflow:hidden}
  .lang button{background:transparent;color:var(--muted);border:0;font-family:var(--mono);font-size:11px;letter-spacing:.1em;padding:7px 11px;cursor:pointer;transition:.2s}
  .lang button+button{border-inline-start:1px solid var(--line2)}
  .lang button.active{background:var(--tan);color:#141614}
  .lang button:hover:not(.active){color:var(--txt)}

  .hero{position:relative;min-height:100vh;display:flex;align-items:center;overflow:hidden;border-bottom:1px solid var(--line2)}
  #heroCanvas{position:absolute;inset:0;width:100%;height:100%;z-index:0;opacity:.9}
  .hero .grid-lines{position:absolute;inset:0;z-index:0;opacity:.5;
    background-image:linear-gradient(var(--line2) 1px,transparent 1px),linear-gradient(90deg,var(--line2) 1px,transparent 1px);
    background-size:64px 64px;-webkit-mask-image:radial-gradient(120% 100% at 50% 40%,#000 30%,transparent 75%);mask-image:radial-gradient(120% 100% at 50% 40%,#000 30%,transparent 75%)}
  .hero .wrap{padding:90px 24px}
  .eyebrow{font-family:var(--mono);font-size:12px;letter-spacing:.24em;color:var(--tan);text-transform:uppercase;margin-bottom:26px;display:flex;align-items:center;gap:12px}
  .eyebrow::before{content:"";width:0;height:1px;background:var(--tan);display:inline-block;transition:width .8s var(--ease) .2s}
  .loaded .eyebrow::before{width:30px}
  .hero h1{font-family:var(--display);font-weight:700;font-size:clamp(46px,9vw,110px);line-height:.94;letter-spacing:.01em;text-transform:uppercase}
  .hero h1 .word{display:inline-block;overflow:hidden;vertical-align:top}
  .hero h1 .word i{display:inline-block;transform:translateY(105%);transition:transform .9s var(--ease)}
  .loaded .hero h1 .word i{transform:none}
  .hero h1 .thin i{color:transparent;-webkit-text-stroke:1.3px var(--tan)}
  .role,.lede,.meta,.coord{opacity:0;transform:translateY(16px);transition:opacity .8s var(--ease),transform .8s var(--ease)}
  .loaded .role{opacity:1;transform:none;transition-delay:.55s}
  .loaded .lede{opacity:1;transform:none;transition-delay:.7s}
  .loaded .meta{opacity:1;transform:none;transition-delay:.85s}
  .loaded .coord{opacity:1;transform:none;transition-delay:1s}
  .role{font-family:var(--display);font-weight:500;font-size:clamp(17px,2.4vw,26px);margin-top:20px;letter-spacing:.03em;color:var(--tan2)}
  .lede{max-width:640px;color:var(--muted);margin-top:18px;font-size:16.5px}
  .meta{display:flex;flex-wrap:wrap;gap:14px;margin-top:38px}
  .meta .cell{border:1px solid var(--line2);background:rgba(20,24,19,.6);backdrop-filter:blur(4px);padding:12px 16px;min-width:150px;position:relative;transition:border-color .3s,transform .3s}
  .meta .cell:hover{border-color:var(--tan);transform:translateY(-3px)}
  .meta .cell::before,.meta .cell::after{content:"";position:absolute;width:7px;height:7px;border:1px solid var(--tan)}
  .meta .cell::before{top:-1px;inset-inline-start:-1px;border-inline-end:0;border-bottom:0}
  .meta .cell::after{bottom:-1px;inset-inline-end:-1px;border-inline-start:0;border-top:0}
  .meta .k{font-family:var(--mono);font-size:10.5px;letter-spacing:.16em;color:var(--tan);text-transform:uppercase}
  .meta .v{font-size:15px;margin-top:4px}
  .coord{font-family:var(--mono);font-size:11.5px;color:var(--muted);margin-top:28px;letter-spacing:.1em}
  .coord .cursor{display:inline-block;width:8px;height:14px;background:var(--tan);margin-inline-start:4px;vertical-align:middle;animation:blink 1.1s steps(1) infinite}
  @keyframes blink{50%{opacity:0}}
  .scroll-cue{position:absolute;bottom:26px;inset-inline-start:50%;transform:translateX(-50%);font-family:var(--mono);font-size:10px;letter-spacing:.2em;color:var(--muted);text-transform:uppercase;display:flex;flex-direction:column;align-items:center;gap:8px;z-index:2}
  .scroll-cue .bar{width:1px;height:34px;background:linear-gradient(var(--tan),transparent);animation:cue 1.8s var(--ease) infinite}
  @keyframes cue{0%{transform:scaleY(0);transform-origin:top}50%{transform:scaleY(1);transform-origin:top}50.1%{transform-origin:bottom}100%{transform:scaleY(0);transform-origin:bottom}}

  section{padding:96px 0;border-bottom:1px solid var(--line2);position:relative}
  .sec-head{display:flex;align-items:baseline;gap:18px;margin-bottom:46px}
  .sec-num{font-family:var(--display);font-weight:700;font-size:15px;color:var(--tan);border:1px solid var(--tan);width:40px;height:40px;display:flex;align-items:center;justify-content:center;flex:none;transition:background .3s,color .3s}
  section:hover .sec-num{background:var(--tan);color:#141614}
  .sec-title{font-family:var(--display);font-weight:600;font-size:clamp(28px,4.5vw,46px);text-transform:uppercase;letter-spacing:.03em}
  .sec-sub{font-family:var(--mono);font-size:11.5px;letter-spacing:.18em;color:var(--muted);text-transform:uppercase;margin-inline-start:auto;align-self:center}
  .about p{max-width:760px;font-size:clamp(18px,2.2vw,22px);color:#d3d6cb;line-height:1.7}

  .skills-grid{display:grid;grid-template-columns:repeat(3,1fr);gap:20px}
  .skill{border:1px solid var(--line2);background:var(--panel);padding:26px;position:relative;overflow:hidden;transition:transform .35s var(--ease),border-color .35s}
  .skill:hover{transform:translateY(-6px);border-color:var(--tan)}
  .skill::before{content:"";position:absolute;top:0;inset-inline-start:0;width:100%;height:2px;background:linear-gradient(90deg,var(--tan),transparent);transform:scaleX(0);transform-origin:left;transition:transform .5s var(--ease)}
  .skill:hover::before{transform:scaleX(1)}
  .skill h3{font-family:var(--display);font-weight:600;font-size:20px;text-transform:uppercase;letter-spacing:.04em;margin-bottom:18px;color:var(--tan)}
  .chips{display:flex;flex-wrap:wrap;gap:8px}
  .chip{font-family:var(--mono);font-size:12px;letter-spacing:.02em;color:#d7dacf;border:1px solid var(--line2);background:var(--panel2);padding:6px 11px;transition:.25s}
  .chip:hover{color:var(--tan);border-color:var(--tan);transform:translateY(-2px)}

  .proj-grid{display:grid;grid-template-columns:repeat(3,1fr);gap:20px}
  .proj{border:1px solid var(--line2);background:var(--panel);padding:28px;position:relative;overflow:hidden;transition:transform .4s var(--ease),border-color .4s}
  .proj:hover{transform:translateY(-8px);border-color:var(--tan)}
  .proj .glow{position:absolute;width:260px;height:260px;border-radius:50%;background:radial-gradient(circle,rgba(205,183,129,.16),transparent 70%);pointer-events:none;opacity:0;transition:opacity .3s;transform:translate(-50%,-50%)}
  .proj:hover .glow{opacity:1}
  .proj .code{font-family:var(--mono);font-size:11px;color:var(--muted);letter-spacing:.16em}
  .proj h3{font-family:var(--display);font-weight:700;font-size:30px;text-transform:uppercase;letter-spacing:.03em;margin:12px 0 6px}
  .proj .ptag{font-family:var(--mono);font-size:11px;color:var(--tan);letter-spacing:.08em;text-transform:uppercase;margin-bottom:16px;display:block}
  .proj p{color:var(--muted);font-size:14.5px;position:relative;z-index:1}
  .proj .rule{height:1px;background:var(--line2);margin-top:20px;position:relative;overflow:hidden}
  .proj .rule::after{content:"";position:absolute;inset:0;background:var(--tan);transform:translateX(-101%);transition:transform .5s var(--ease)}
  .proj:hover .rule::after{transform:none}

  .tl{position:relative;max-width:840px}
  .tl::before{content:"";position:absolute;inset-inline-start:8px;top:6px;bottom:6px;width:1px;background:var(--line2)}
  .tl-prog{position:absolute;inset-inline-start:8px;top:6px;width:1px;background:var(--tan);height:0}
  .tl-item{position:relative;padding-inline-start:42px;padding-bottom:38px}
  .tl-item:last-child{padding-bottom:0}
  .tl-item::before{content:"";position:absolute;inset-inline-start:3px;top:6px;width:11px;height:11px;background:var(--bg);border:2px solid var(--tan);border-radius:50%;transition:transform .3s,box-shadow .3s;z-index:2}
  .tl-item:hover::before{transform:scale(1.4);box-shadow:0 0 0 4px rgba(205,183,129,.15)}
  .tl-year{font-family:var(--mono);font-size:12px;color:var(--tan);letter-spacing:.12em}
  .tl-role{font-family:var(--display);font-weight:600;font-size:21px;text-transform:uppercase;letter-spacing:.03em;margin-top:4px}
  .tl-org{font-size:14.5px;margin-top:2px}
  .tl-org .at{color:var(--muted)}
  .tl-desc{color:var(--muted);font-size:14px;margin-top:6px;max-width:600px}

  .contact-in{display:flex;flex-wrap:wrap;align-items:center;justify-content:space-between;gap:28px;border:1px solid var(--line2);background:linear-gradient(180deg,var(--panel),var(--bg));padding:46px;position:relative;overflow:hidden}
  .contact-in::before{content:"";position:absolute;inset:0;background:radial-gradient(600px 300px at 100% 0%,rgba(205,183,129,.12),transparent 60%)}
  .contact-in>*{position:relative;z-index:1}
  .contact-in h2{font-family:var(--display);font-weight:700;font-size:clamp(28px,4.5vw,46px);text-transform:uppercase;letter-spacing:.03em}
  .contact-in p{color:var(--muted);margin-top:10px;max-width:460px}
  .links-out{display:flex;flex-direction:column;gap:12px;min-width:260px}
  .lk{display:flex;align-items:center;gap:14px;border:1px solid var(--line2);background:var(--panel2);padding:14px 16px;text-decoration:none;color:var(--txt);font-size:14px;transition:.28s var(--ease);position:relative;overflow:hidden}
  .lk::before{content:"→";position:absolute;inset-inline-end:16px;opacity:0;transform:translateX(-8px);transition:.28s}
  html[dir="rtl"] .lk::before{content:"←"}
  .lk:hover{border-color:var(--tan);color:var(--tan);padding-inline-end:36px}
  .lk:hover::before{opacity:1;transform:none}
  .lk .lk-k{font-family:var(--mono);font-size:10.5px;color:var(--muted);letter-spacing:.14em;text-transform:uppercase}
  .lk:hover .lk-k{color:var(--tan)}

  footer{padding:34px 0 50px}
  footer .wrap{display:flex;flex-wrap:wrap;gap:10px;justify-content:space-between;font-family:var(--mono);font-size:11px;color:var(--muted);letter-spacing:.1em;text-transform:uppercase}

  .reveal>*{opacity:0;transform:translateY(30px);transition:opacity .8s var(--ease),transform .8s var(--ease)}
  .reveal.in>*{opacity:1;transform:none}
  .reveal.stagger.in .skill,.reveal.stagger.in .proj{opacity:0;transform:translateY(30px);animation:pop .7s var(--ease) forwards}
  .reveal.stagger.in .skill:nth-child(1),.reveal.stagger.in .proj:nth-child(1){animation-delay:.12s}
  .reveal.stagger.in .skill:nth-child(2),.reveal.stagger.in .proj:nth-child(2){animation-delay:.24s}
  .reveal.stagger.in .skill:nth-child(3),.reveal.stagger.in .proj:nth-child(3){animation-delay:.36s}
  @keyframes pop{to{opacity:1;transform:none}}

  html[lang="ar"] .hero h1,html[lang="ar"] .sec-title,html[lang="ar"] .proj h3,html[lang="ar"] .tl-role,html[lang="ar"] .role,html[lang="ar"] .contact-in h2{letter-spacing:0;text-transform:none}
  html[lang="ar"] .hero h1 .word i{transform:translateY(0);opacity:0;transition:opacity .8s var(--ease)}
  html[lang="ar"].loaded .hero h1 .word i{opacity:1}

  @media (max-width:860px){
    .skills-grid,.proj-grid{grid-template-columns:1fr}
    nav.links{display:none}
    .hero{min-height:auto;padding:20px 0}
    section{padding:64px 0}
  }
  @media (prefers-reduced-motion:reduce){
    *{animation:none!important;transition:none!important;scroll-behavior:auto!important}
    .hero h1 .word i,.role,.lede,.meta,.coord,.reveal>*{opacity:1!important;transform:none!important}
    #heroCanvas{display:none}
  }
</style>
</head>
<body>
<div class="fx-grain"></div>
<div class="fx-vig"></div>

<div class="ticker"><div class="wrap"><span class="dot"></span><span data-i18n="ticker"></span></div></div>

<header class="nav">
  <div class="wrap">
    <div class="brand"><span class="sq">JC</span><span class="mono-tag" data-i18n="brandtag"></span></div>
    <nav class="links">
      <a href="#profil" data-i18n="nav.profile"></a>
      <a href="#competences" data-i18n="nav.skills"></a>
      <a href="#projets" data-i18n="nav.projects"></a>
      <a href="#parcours" data-i18n="nav.path"></a>
      <a href="#contact" data-i18n="nav.contact"></a>
    </nav>
    <div class="lang" role="group" aria-label="Language">
      <button data-lang="fr">FR</button>
      <button data-lang="en">EN</button>
      <button data-lang="ar">AR</button>
    </div>
  </div>
</header>

<div class="hero" id="hero">
  <canvas id="heroCanvas"></canvas>
  <div class="grid-lines" data-parallax="0.15"></div>
  <div class="wrap">
    <div class="eyebrow" data-i18n="hero.eyebrow"></div>
    <h1><span class="word" data-i18n-word="hero.first"></span> <span class="word thin" data-i18n-word="hero.last"></span></h1>
    <div class="role" data-i18n="hero.role"></div>
    <p class="lede" data-i18n="hero.lede"></p>
    <div class="meta">
      <div class="cell"><div class="k" data-i18n="meta.loc_k"></div><div class="v" data-i18n="meta.loc_v"></div></div>
      <div class="cell"><div class="k" data-i18n="meta.status_k"></div><div class="v" data-i18n="meta.status_v"></div></div>
      <div class="cell"><div class="k" data-i18n="meta.edu_k"></div><div class="v" data-i18n="meta.edu_v"></div></div>
    </div>
    <div class="coord"><span data-i18n="hero.coord"></span><span class="cursor"></span></div>
  </div>
  <div class="scroll-cue"><span data-i18n="scroll"></span><span class="bar"></span></div>
</div>

<section id="profil" class="about"><div class="wrap reveal">
  <div class="sec-head"><span class="sec-num">01</span><h2 class="sec-title" data-i18n="nav.profile"></h2><span class="sec-sub" data-i18n="profile.sub"></span></div>
  <p data-i18n="profile.body"></p>
</div></section>

<section id="competences"><div class="wrap reveal stagger">
  <div class="sec-head"><span class="sec-num">02</span><h2 class="sec-title" data-i18n="nav.skills"></h2><span class="sec-sub" data-i18n="skills.sub"></span></div>
  <div class="skills-grid" id="skillsGrid"></div>
</div></section>

<section id="projets"><div class="wrap reveal stagger">
  <div class="sec-head"><span class="sec-num">03</span><h2 class="sec-title" data-i18n="nav.projects"></h2><span class="sec-sub" data-i18n="projects.sub"></span></div>
  <div class="proj-grid" id="projGrid"></div>
</div></section>

<section id="parcours"><div class="wrap reveal">
  <div class="sec-head"><span class="sec-num">04</span><h2 class="sec-title" data-i18n="nav.path"></h2><span class="sec-sub" data-i18n="path.sub"></span></div>
  <div class="tl" id="tl"><div class="tl-prog" id="tlProg"></div></div>
</div></section>

<section id="contact" style="border-bottom:0"><div class="wrap reveal">
  <div class="contact-in">
    <div>
      <h2 data-i18n="contact.title"></h2>
      <p data-i18n="contact.body"></p>
    </div>
    <div class="links-out">
      <a class="lk" id="lkMail" href="#"><span class="lk-k">E-MAIL</span><span id="lkMailV">jamilchartouni.work@gmail.com</span></a>
      <a class="lk" id="lkIn" href="#" target="_blank" rel="noopener"><span class="lk-k">LINKEDIN</span><span data-i18n="contact.in"></span></a>
      <a class="lk" id="lkLoc" href="#" target="_blank" rel="noopener"><span class="lk-k">BASE</span><span data-i18n="meta.loc_v"></span></a>
    </div>
  </div>
</div></section>

<footer><div class="wrap">
  <span>© <span id="yr"></span> Jamil Chartouni</span>
  <span data-i18n="footer.note"></span>
</div></footer>

<script>
const I18N = {
  fr:{ticker:"Disponible — Rennes, FR — Communication & Marketing",brandtag:"COM · MKT",scroll:"Défiler",
    nav:{profile:"Profil",skills:"Compétences",projects:"Projets",path:"Parcours",contact:"Contact"},
    hero:{eyebrow:"Dossier — Communication & Marketing",first:"Jamil",last:"Chartouni",
      role:"Chargé de communication & marketing — digital, web & branding",
      lede:"Je construis et pilote l'image de marques aux univers très différents, du site e-commerce à la campagne, en reliant la stratégie à l'exécution.",
      coord:"48.1173° N, 1.6778° W — RENNES // STATUS: ACTIF"},
    meta:{loc_k:"Localisation",loc_v:"Rennes, France",status_k:"Statut",status_v:"Ouvert aux opportunités",edu_k:"Formation",edu_v:"M2 Communication des Organisations — Rennes 2"},
    profile:{sub:"// À propos",body:"Chargé de communication et marketing, je relie la stratégie à l'exécution : du développement de sites e-commerce à la gestion de campagnes, en passant par le branding, les réseaux sociaux et la création de contenus. Mon exigence : une communication cohérente qui renforce durablement la valeur de la marque."},
    skills:{sub:"// Savoir-faire"},projects:{sub:"// Réalisations"},path:{sub:"// Expériences"},
    contact:{title:"Travaillons ensemble",body:"Un projet de marque, de site ou de campagne ? Écrivez-moi, je réponds vite.",in:"Voir mon profil"},
    footer:{note:"Portfolio — hébergé sur GitHub Pages"},
    skillsData:[{title:"Web & Tech",tags:["Shopify","Liquid","HTML / CSS","E-commerce","SEO","Automatisation"]},{title:"Branding & Design",tags:["Identité visuelle","Direction artistique","Canva","Suite Adobe","Packaging"]},{title:"Marketing & Réseaux",tags:["Stratégie marketing","Réseaux sociaux","Campagnes emailing","Contenu","Community management"]}],
    projData:[{code:"PROJ//01",name:"ASAP France",tag:"E-commerce · Tactique",desc:"Refonte et pilotage du site Shopify : pages produit, SEO, campagnes emailing et cohérence de marque pour une gamme d'équipements tactiques et de sport de combat."},{code:"PROJ//02",name:"RELIX",tag:"Création de marque · Upcycling",desc:"Conception d'une marque d'accessoires upcyclés, fabriqués en France à partir de matériaux militaires déclassés : positionnement, naming, identité et lancement."},{code:"PROJ//03",name:"Atelier 317",tag:"Textile · Made in France",desc:"Communication d'un atelier de confection textile française : valorisation du savoir-faire et mise en récit de la production locale."}],
    expData:[{year:"2026",role:"Chargé de communication & web",org:"Groupe 317",at:"Stage M2",desc:"Pilotage de la communication et du marketing multi-marques : ASAP France, RELIX et Atelier 317."},{year:"2025",role:"Communication",org:"Dopamine Club",at:"",desc:"Communication digitale et création de contenus."},{year:"2021",role:"Communication",org:"Ara Media",at:"",desc:"Production de contenus et gestion des réseaux sociaux."},{year:"2019",role:"Communication",org:"Oneders Communication",at:"",desc:"Premières expériences en communication et campagnes."},{year:"—",role:"Master Communication des Organisations",org:"Université Rennes 2",at:"Formation",desc:"Stratégie, communication digitale et sociologie des organisations."}]},
  en:{ticker:"Available — Rennes, FR — Communication & Marketing",brandtag:"COM · MKT",scroll:"Scroll",
    nav:{profile:"Profile",skills:"Skills",projects:"Projects",path:"Path",contact:"Contact"},
    hero:{eyebrow:"File — Communication & Marketing",first:"Jamil",last:"Chartouni",
      role:"Communication & marketing specialist — digital, web & branding",
      lede:"I build and steer brand identities across very different worlds, from e-commerce to campaigns, connecting strategy to execution.",
      coord:"48.1173° N, 1.6778° W — RENNES // STATUS: ACTIVE"},
    meta:{loc_k:"Location",loc_v:"Rennes, France",status_k:"Status",status_v:"Open to opportunities",edu_k:"Education",edu_v:"MSc Organizational Communication — Rennes 2"},
    profile:{sub:"// About",body:"A communication and marketing specialist, I connect strategy to execution: from building e-commerce sites to running campaigns, through branding, social media and content creation. My standard: coherent communication that lastingly grows brand value."},
    skills:{sub:"// Expertise"},projects:{sub:"// Work"},path:{sub:"// Experience"},
    contact:{title:"Let's work together",body:"A brand, a website or a campaign in mind? Drop me a line — I reply fast.",in:"View my profile"},
    footer:{note:"Portfolio — hosted on GitHub Pages"},
    skillsData:[{title:"Web & Tech",tags:["Shopify","Liquid","HTML / CSS","E-commerce","SEO","Automation"]},{title:"Branding & Design",tags:["Visual identity","Art direction","Canva","Adobe Suite","Packaging"]},{title:"Marketing & Social",tags:["Marketing strategy","Social media","Email campaigns","Content","Community management"]}],
    projData:[{code:"PROJ//01",name:"ASAP France",tag:"E-commerce · Tactical",desc:"Rebuilt and ran the Shopify store: product pages, SEO, email campaigns and brand consistency for a range of tactical and combat-sport gear."},{code:"PROJ//02",name:"RELIX",tag:"Brand creation · Upcycling",desc:"Created an upcycled accessories brand, made in France from decommissioned military materials: positioning, naming, identity and launch."},{code:"PROJ//03",name:"Atelier 317",tag:"Textile · Made in France",desc:"Communication for a French textile workshop: showcasing craftsmanship and telling the story of local production."}],
    expData:[{year:"2026",role:"Communication & web officer",org:"Groupe 317",at:"MSc internship",desc:"Led multi-brand communication and marketing: ASAP France, RELIX and Atelier 317."},{year:"2025",role:"Communication",org:"Dopamine Club",at:"",desc:"Digital communication and content creation."},{year:"2021",role:"Communication",org:"Ara Media",at:"",desc:"Content production and social media management."},{year:"2019",role:"Communication",org:"Oneders Communication",at:"",desc:"First experiences in communication and campaigns."},{year:"—",role:"Master's in Organizational Communication",org:"University of Rennes 2",at:"Education",desc:"Strategy, digital communication and organizational sociology."}]},
  ar:{ticker:"متاح — رين، فرنسا — تواصل وتسويق",brandtag:"COM · MKT",scroll:"مرِّر",
    nav:{profile:"نبذة",skills:"المهارات",projects:"المشاريع",path:"المسار",contact:"تواصل"},
    hero:{eyebrow:"ملف — تواصل وتسويق",first:"جميل",last:"شرتوني",
      role:"مسؤول تواصل وتسويق — رقمي، ويب وهوية بصرية",
      lede:"أبني وأقود صورة علامات تجارية بعوالم مختلفة تمامًا، من المتجر الإلكتروني إلى الحملات، رابطًا الاستراتيجية بالتنفيذ.",
      coord:"48.1173° N, 1.6778° W — RENNES // الحالة: نشِط"},
    meta:{loc_k:"الموقع",loc_v:"رين، فرنسا",status_k:"الحالة",status_v:"منفتح على الفرص",edu_k:"التعليم",edu_v:"ماجستير تواصل المنظمات — رين ٢"},
    profile:{sub:"// نبذة",body:"مختصّ في التواصل والتسويق، أربط الاستراتيجية بالتنفيذ: من تطوير المتاجر الإلكترونية إلى إدارة الحملات، مرورًا بالهوية البصرية ووسائل التواصل وصناعة المحتوى. معياري: تواصل متماسك يعزّز قيمة العلامة على المدى الطويل."},
    skills:{sub:"// الخبرات"},projects:{sub:"// الأعمال"},path:{sub:"// الخبرات المهنية"},
    contact:{title:"لنعمل معًا",body:"لديك مشروع علامة أو موقع أو حملة؟ راسلني، أردّ بسرعة.",in:"شاهد ملفي"},
    footer:{note:"معرض أعمال — مُستضاف على GitHub Pages"},
    skillsData:[{title:"الويب والتقنية",tags:["Shopify","Liquid","HTML / CSS","التجارة الإلكترونية","تحسين محركات البحث","الأتمتة"]},{title:"الهوية والتصميم",tags:["الهوية البصرية","الإدارة الفنية","Canva","حزمة Adobe","التغليف"]},{title:"التسويق والشبكات",tags:["استراتيجية التسويق","وسائل التواصل","حملات البريد","المحتوى","إدارة المجتمع"]}],
    projData:[{code:"PROJ//01",name:"ASAP France",tag:"تجارة إلكترونية · تكتيكي",desc:"إعادة بناء وإدارة متجر Shopify: صفحات المنتجات، تحسين محركات البحث، حملات البريد وتماسك الهوية لمجموعة معدّات تكتيكية ورياضات قتالية."},{code:"PROJ//02",name:"RELIX",tag:"إنشاء علامة · إعادة تدوير",desc:"ابتكار علامة إكسسوارات معاد تدويرها، مصنوعة في فرنسا من موادّ عسكرية مُستغنى عنها: التموضع، التسمية، الهوية والإطلاق."},{code:"PROJ//03",name:"Atelier 317",tag:"نسيج · صُنع في فرنسا",desc:"تواصل لورشة نسيج فرنسية: إبراز الحرفية وسرد قصة الإنتاج المحلي."}],
    expData:[{year:"2026",role:"مسؤول تواصل وويب",org:"Groupe 317",at:"تدريب ماجستير",desc:"قيادة التواصل والتسويق لعلامات متعددة: ASAP France وRELIX وAtelier 317."},{year:"2025",role:"تواصل",org:"Dopamine Club",at:"",desc:"تواصل رقمي وصناعة محتوى."},{year:"2021",role:"تواصل",org:"Ara Media",at:"",desc:"إنتاج المحتوى وإدارة وسائل التواصل."},{year:"2019",role:"تواصل",org:"Oneders Communication",at:"",desc:"خبرات أولى في التواصل والحملات."},{year:"—",role:"ماجستير في تواصل المنظمات",org:"جامعة رين ٢",at:"تعليم",desc:"الاستراتيجية والتواصل الرقمي وعلم اجتماع المنظمات."}]}
};

function get(o,p){return p.split('.').reduce((a,k)=>a&&a[k],o);}
function render(lang){
  const d=I18N[lang];
  document.documentElement.lang=lang;
  document.documentElement.dir=lang==='ar'?'rtl':'ltr';
  document.querySelectorAll('[data-i18n]').forEach(el=>{const v=get(d,el.getAttribute('data-i18n'));if(typeof v==='string')el.textContent=v;});
  document.querySelectorAll('[data-i18n-word]').forEach(el=>{const v=get(d,el.getAttribute('data-i18n-word'));el.innerHTML='<i>'+v+'</i>';});
  const sg=document.getElementById('skillsGrid');sg.innerHTML='';
  d.skillsData.forEach(s=>sg.insertAdjacentHTML('beforeend',`<div class="skill"><h3>${s.title}</h3><div class="chips">${s.tags.map(t=>`<span class="chip">${t}</span>`).join('')}</div></div>`));
  const pg=document.getElementById('projGrid');pg.innerHTML='';
  d.projData.forEach(p=>pg.insertAdjacentHTML('beforeend',`<div class="proj"><span class="glow"></span><span class="code">${p.code}</span><h3>${p.name}</h3><span class="ptag">${p.tag}</span><p>${p.desc}</p><div class="rule"></div></div>`));
  const tl=document.getElementById('tl');[...tl.querySelectorAll('.tl-item')].forEach(n=>n.remove());
  d.expData.forEach(e=>{const at=e.at?` <span class="at">· ${e.at}</span>`:'';tl.insertAdjacentHTML('beforeend',`<div class="tl-item"><div class="tl-year">${e.year}</div><div class="tl-role">${e.role}</div><div class="tl-org">${e.org}${at}</div><div class="tl-desc">${e.desc}</div></div>`);});
  document.querySelectorAll('.lang button').forEach(b=>b.classList.toggle('active',b.dataset.lang===lang));
  bindProjGlow();
  try{localStorage.setItem('lang',lang);}catch(e){}
}

const EMAIL="jamilchartouni.work@gmail.com",LINKEDIN="https://www.linkedin.com/in/jamil-chartouni-8744141b0";
document.getElementById('lkMail').href="mailto:"+EMAIL;
document.getElementById('lkMailV').textContent=EMAIL;
document.getElementById('lkIn').href=LINKEDIN;
document.getElementById('lkLoc').href="https://maps.google.com/?q=Rennes,France";
document.getElementById('yr').textContent=new Date().getFullYear();
document.querySelectorAll('.lang button').forEach(b=>b.addEventListener('click',()=>render(b.dataset.lang)));

let start='fr';try{const s=localStorage.getItem('lang');if(s&&I18N[s])start=s;}catch(e){}
render(start);
requestAnimationFrame(()=>document.body.classList.add('loaded'));

const reduce=matchMedia('(prefers-reduced-motion:reduce)').matches;

const io=new IntersectionObserver(es=>es.forEach(e=>{if(e.isIntersecting){e.target.classList.add('in');io.unobserve(e.target);}}),{threshold:.14});
document.querySelectorAll('.reveal').forEach(el=>io.observe(el));

const pl=document.querySelectorAll('[data-parallax]');
const tlWrap=document.getElementById('tl'),tlProg=document.getElementById('tlProg');
function onScroll(){
  const y=window.scrollY;
  pl.forEach(el=>{el.style.transform='translateY('+(y*parseFloat(el.dataset.parallax))+'px)';});
  if(tlWrap){const r=tlWrap.getBoundingClientRect(),vh=innerHeight;
    const p=Math.min(1,Math.max(0,(vh*0.8-r.top)/(r.height)));tlProg.style.height=(p*100)+'%';}
}
if(!reduce){window.addEventListener('scroll',onScroll,{passive:true});onScroll();}

function bindProjGlow(){document.querySelectorAll('.proj').forEach(p=>{p.onmousemove=e=>{const r=p.getBoundingClientRect();const g=p.querySelector('.glow');if(g){g.style.left=(e.clientX-r.left)+'px';g.style.top=(e.clientY-r.top)+'px';}};});}

(function(){
  if(reduce)return;
  const c=document.getElementById('heroCanvas');if(!c)return;const x=c.getContext('2d');let w,h,pts,raf;
  const N=window.innerWidth<700?34:64;
  function size(){w=c.width=c.offsetWidth*devicePixelRatio;h=c.height=c.offsetHeight*devicePixelRatio;}
  function init(){pts=Array.from({length:N},()=>({x:Math.random()*w,y:Math.random()*h,vx:(Math.random()-.5)*.28*devicePixelRatio,vy:(Math.random()-.5)*.28*devicePixelRatio}));}
  function loop(){
    x.clearRect(0,0,w,h);
    for(const p of pts){p.x+=p.vx;p.y+=p.vy;if(p.x<0||p.x>w)p.vx*=-1;if(p.y<0||p.y>h)p.vy*=-1;}
    for(let i=0;i<pts.length;i++){
      for(let j=i+1;j<pts.length;j++){
        const a=pts[i],b=pts[j],dx=a.x-b.x,dy=a.y-b.y,d=Math.hypot(dx,dy),max=140*devicePixelRatio;
        if(d<max){x.strokeStyle='rgba(205,183,129,'+(0.14*(1-d/max))+')';x.lineWidth=devicePixelRatio;x.beginPath();x.moveTo(a.x,a.y);x.lineTo(b.x,b.y);x.stroke();}
      }
      x.fillStyle='rgba(205,183,129,.5)';x.beginPath();x.arc(pts[i].x,pts[i].y,1.4*devicePixelRatio,0,7);x.fill();
    }
    raf=requestAnimationFrame(loop);
  }
  function begin(){size();init();cancelAnimationFrame(raf);loop();}
  window.addEventListener('resize',begin);begin();
})();
</script>
</body>
</html>
