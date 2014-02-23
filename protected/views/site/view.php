<?php
echo $category->alias;

foreach($subCategories as $sc):
    echo $sc->alias;
endforeach;

?>

<div class="category-header">
    <div class="bar green">
        <div class="row collapse wider main-banner">
            <div class="logo-image columns"></div>

            <article class="caption-wrapper columns">
                <hgroup>
                    <h1>Slatko, sočno i hrskavo, naše voće je uvek zdravo i ukusno.</h1>
                </hgroup>
            </article>

            <div class="image-wrapper wider-image columns">
                <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/clanak-placeholder.jpg" alt="Clanak placeholder"/>
            </div>
        </div>
    </div>
</div>

<div class="main-wrapper row collapse wide">
    <aside class="main-sidebar columns">
        <nav>
            <ul>
                <li><a href="#">Proizvodi</a><span class="link-arrow">&gt;</span>
                    <ul>
                        <li><a href="#">Everyday</a><span class="link-arrow">&gt;</span></li>
                        <li><a href="#">Sveže voće</a><span class="link-arrow">&gt;</span></li>
                    </ul>
                </li>
                <li><a href="#">Kvalitet</a><span class="link-arrow">&gt;</span>
                    <ul>
                        <li><a href="#">Proizvodnja</a><span class="link-arrow">&gt;</span></li>
                        <li><a href="#">Skladištenje</a><span class="link-arrow">&gt;</span></li>
                        <li><a href="#">Pakovanje</a><span class="link-arrow">&gt;</span></li>
                        <li><a href="#">Distribucija</a><span class="link-arrow">&gt;</span></li>
                    </ul>
                </li>
                <li><a href="#">Jabuka</a><span class="link-arrow">&gt;</span>
                    <ul>
                        <li><a href="#">Zlatni delišes</a><span class="link-arrow">&gt;</span></li>
                        <li><a href="#">Red čif</a><span class="link-arrow">&gt;</span></li>
                        <li><a href="#">Jonagold</a><span class="link-arrow">&gt;</span></li>
                        <li><a href="#">Greni smit</a><span class="link-arrow">&gt;</span></li>
                        <li><a href="#">Gala</a><span class="link-arrow">&gt;</span></li>
                        <li><a href="#">Fudži</a><span class="link-arrow">&gt;</span></li>
                    </ul>
                </li>
                <li><a href="#">Trešnja</a><span class="link-arrow">&gt;</span></li>
                <li><a href="#">Jagoda</a><span class="link-arrow">&gt;</span></li>
                <li><a href="#">Betonski stubovi</a><span class="link-arrow">&gt;</span></li>
                <li><a href="#">Voćnjak</a><span class="link-arrow">&gt;</span></li>
                <li><a href="#">O nama</a><span class="link-arrow">&gt;</span></li>
                <li><a href="#">Kontakt</a><span class="link-arrow">&gt;</span></li>
                <li><a href="#">Galerija slika</a><span class="link-arrow">&gt;</span></li>
            </ul>
        </nav>
    </aside>

    <div class="main-content columns">
        <section>
            <h1 class="article-title">Kvalitet</h1>
            <nav class="article-menu">
                <ul>
                    <li><a href="#">Proizvodnja</a></li>
                    <li><a href="#">Skladištenje</a></li>
                    <li><a href="#">Pakovanje</a></li>
                    <li><a href="#">Distribucija</a></li>
                </ul>
            </nav>
            <div class="article-content">
                <article>
                    <h2>Proizvodnja</h2>

                    <h3>POČETAK</h3>
                    <p>Kada posadimo sadnicu, već u drugoj godini beremo plodove s nje. Zbog toga posvećujemo veliku
                        pažnju odabiru sadnog materijala, koji mora biti vrhunskog kvaliteta, zdrav, sertifikovan i otporan na bolesti.</p>

                    <h3>VOĆNJAK</h3>
                    <p>Mi od naše jabuke očekujemo visoke rezultate i u tome joj pomažemo tako što koristimo savremene
                        agrotehničke mere koje obuhvataju automatizovano navodnjavanje i prihranu, kao i korišćenje protivgradnih mreža.</p>

                    <h3>BERBA</h3>
                    <p>Tokom berbe veoma je važno da se jabukom rukuje pažljivo, naši berači nežno beru i stavljaju jabuke
                        u korpe, pri tom uvek nose rukavice da ih ne bi oštetili. S istom pažnjom ih transportujemo iz voćnjaka,
                        pošto zbog nepažljive vožnje jabuke mogu pretrpeti udarce i time postati podložne brzom propadanju.</p>
                    <a href="#">Pogledajte galeriju slika ></a>
                </article>

                <article>
                    <h2>Skladištenje</h2>

                    <p>Pored visokih standarda proizvodnje, želimo da obezbedimo i najsavremenije skladištenje,
                        pa smo u te svrhe izgradili modernu hladnjaču koja se nalazi u samom voćnjaku. U njoj se nalazi 14
                        ULO komora kapaciteta 2800 tona, u kojima čuvamo jabuku u strogo kontrolisanim uslovima i na taj način
                        obezbeđujemo očuvanje njenog kvaliteta i svežine.</p>
                    <a href="#">Pogledajte galeriju slika ></a>
                </article>

                <article>
                    <h2>Sortiranje</h2>
                    <p>Kada naši kupci poruče jabuke, mi ih stavljamo u liniju za kalibrisanje u kojoj se peru i
                        razvrstavaju po veličini. Naša oprema za sortiranje i kalibrisanje koristi najsavremenija naučna
                        dostignuća i time nam omogućava da svojim kupcima isporučimo jabuke koje zadovoljavaju sve njihove
                        zahteve u pogledu veličine. Nakon toga, voće se ručno pakuje u odgovarajuću ambalažu i pri tom se još
                        jedanput kontroliše njegov kvalitet.</p>
                    <a href="#">Pogledajte galeriju slika ></a>
                </article>

                <article>
                    <h2>Pakovanje</h2>
                    <p>Naši kupci pored visokog kvaliteta ambalaže žele i vrhunski dizajn. Korišćenjem savremenog i
                        atraktivnog dizajna u mogućnosti smo da odgovorimo na sve njihove zahteve. U zavisnosti od udaljenosti
                        tržišta, njegovih karakteristika i navika krajnjih potrošača, svojim kupcima nudimo sledeću ambalažu:</p>
                    <ul>
                        <li>Kartonsku gajbicu 400x600x100 i 180 mm</li>
                        <li>Drvenu gajbicu 300x500x180 i 260 mm</li>
                    </ul>
                    <a href="#">Pogledajte galeriju slika ></a>
                </article>

                <article>
                    <h2>Distribucija</h2>
                    <p>Tokom svog poslovanja stekli smo ugled kompanije koja uzgaja vrhunsko voće, ali i koja stvara i
                        održava dugoročnu saradnju sa svojim poslovnim partnerima. Naše proizvode možete kupiti u našoj
                        prodavnici u Aranđelovcu, kao i u brojnim marketima širom zemlje. Raspitajte se kod svog prodavca
                        da li prodaje Greeny voće i EveryDay sok.</p>
                    <a href="#">Pogledajte galeriju slika ></a>
                </article>

                <article>
                    <h2>Garancija kvaliteta</h2>
                    <p>Da bismo postigli vrhunski kvalitet i opravdali poverenje svojih kupaca, poštujemo najstrože
                        evropske standarde u gajenju i rukovanju voćem, što možemo da potvrdimo i dobijenim sertifikatima
                        koje redovno obnavljamo.</p>
                    <ul>
                        <li><strong>Sertifikat Greeny Globalgap</strong> <a href="#">pogledajte &gt;</a></li>
                        <li><strong>Sertifikat ISO 22000:2005</strong> <a href="#">pogledajte &gt;</a></li>
                    </ul>
                    <p>GlobalGap je ustanovio standard koji je ključna referenca za dobru poljoprivrednu praksu na
                        globalnom tržištu, prateći zahteve potrošača u poljoprivrednoj proizvodnji. GlobalGap je
                        prisutan u više od 80 zemalja sveta na svim kontinentima. ISO 22000:2005 je prvi međunarodni
                        standard za upravljanje bezbednošću hrane.</p>
                </article>
            </div>
        </section>
    </div>

</div>