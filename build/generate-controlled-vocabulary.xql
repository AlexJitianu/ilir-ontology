xquery version "3.0";

declare namespace html = "http://www.w3.org/1999/xhtml";
declare namespace rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#";

let $datalist :=
		<datalist xmlns="http://www.w3.org/1999/xhtml" id="usage-options">
            <option label="regional" value="geo" data-type="regional"/>
            <option label="Ban." value="geo" data-type="Ban."/>
            <option label="Bucov." value="geo" data-type="Bucov."/>
            <option label="Criș." value="geo" data-type="Criș."/>
            <option label="Dobr." value="geo" data-type="Dobr."/>
            <option label="Maram." value="geo" data-type="Maram."/>
            <option label="Mold." value="geo" data-type="Mold."/>
            <option label="Munt." value="geo" data-type="Munt."/>
            <option label="Olt." value="geo" data-type="Olt."/>
            <option label="Transilv." value="geo" data-type="Transilv."/>
            <option label="prin.Ban." value="geo" data-type="prin Ban."/>
            <option label="prin.Bucov." value="geo" data-type="prin Bucov."/>
            <option label="prin.Criș." value="geo" data-type="prin Criș."/>
            <option label="prin.Dobr." value="geo" data-type="prin Dobr."/>
            <option label="prin.Maram." value="geo" data-type="prin Maram."/>
            <option label="prin.Mold." value="geo" data-type="prin Mold."/>
            <option label="prin.Munt." value="geo" data-type="prin Munt."/>
            <option label="prin.Olt." value="geo" data-type="prin Olt."/>
            <option label="prin.Transilv." value="geo" data-type="prin Transilv."/>
            <option label="în.Ban." value="geo" data-type="în Ban."/>
            <option label="în.Bucov." value="geo" data-type="în Bucov."/>
            <option label="în.Criș." value="geo" data-type="în Criș."/>
            <option label="în.Dobr." value="geo" data-type="în Dobr."/>
            <option label="în.Maram." value="geo" data-type="în Maram."/>
            <option label="în.Mold." value="geo" data-type="în Mold."/>
            <option label="în.Munt." value="geo" data-type="în Munt."/>
            <option label="în.Olt." value="geo" data-type="în Olt."/>
            <option label="în.Transilv." value="geo" data-type="în Transilv."/>
            <option label="Bucov." value="geo" data-type="Bucov."/>
            <option label="Criș." value="geo" data-type="Criș."/>
            <option label="în.nordul" value="geo" data-type="în nordul"/>
            <option label="în.sudul" value="geo" data-type="în sudul"/>
            <option label="în.estul" value="geo" data-type="în estul"/>
            <option label="în.vestul" value="geo" data-type="în vestul"/>
            <option label="în.sud-vestul" value="geo" data-type="în sud-vestul"/>
            <option label="în.sud-estul" value="geo" data-type="în sud-estul"/>
            <option label="în.nord-vestul" value="geo" data-type="în nord-vestul"/>
            <option label="în.nord-estul" value="geo" data-type="în nord-estul"/>
            <option label="prin.nordul" value="geo" data-type="prin nordul"/>
            <option label="prin.sudul" value="geo" data-type="prin sudul"/>
            <option label="prin.estul" value="geo" data-type="prin estul"/>
            <option label="prin.vestul" value="geo" data-type="prin vestul"/>
            <option label="prin.sud-vestul" value="geo" data-type="prin sud-vestul"/>
            <option label="prin.sud-estul" value="geo" data-type="prin sud-estul"/>
            <option label="prin.nord-vestul" value="geo" data-type="prin nord-vestul"/>
            <option label="prin.nord-estul" value="geo" data-type="prin nord-estul"/>
            <option label="în.Țările.române." value="geo" data-type="în Țările române "/>
            <option label="din.Austria" value="geo" data-type="din Austria"/>
            <option label="înv." value="time" data-type="înv."/>
            <option label="ieșit.din.uz" value="time" data-type="ieșit din uz"/>
            <option label="astăzi" value="time" data-type="astăzi"/>
            <option label="în.Antichitate" value="time" data-type="în Antichitate"/>
            <option label="în.capitalism" value="time" data-type="în capitalism"/>
            <option label="în.socialism" value="time" data-type="în socialism"/>
            <option label="în.Evul.Mediu" value="time" data-type="în Evul Mediu"/>
            <option label="la.sfârșitul.Evului.Mediu" value="time" data-type="la sfârșitul Evului Mediu"/>
            <option label="în.monarhiile.constituționale" value="time" data-type="în monarhiile constituționale"/>
            <option label="în.organizarea" value="time" data-type="în organizarea"/>
            <option label="A..plast." value="dom" data-type="A. plast."/>
            <option label="Aeron." value="dom" data-type="Aeron."/>
            <option label="Agric." value="dom" data-type="Agric."/>
            <option label="Agron." value="dom" data-type="Agron."/>
            <option label="Anat." value="dom" data-type="Anat."/>
            <option label="Apic." value="dom" data-type="Apic."/>
            <option label="Arheol." value="dom" data-type="Arheol."/>
            <option label="Arhit." value="dom" data-type="Arhit."/>
            <option label="Astron." value="dom" data-type="Astron."/>
            <option label="Biochim." value="dom" data-type="Biochim."/>
            <option label="Biol." value="dom" data-type="Biol."/>
            <option label="Bis." value="dom" data-type="Bis."/>
            <option label="Bot." value="dom" data-type="Bot."/>
            <option label="Chim." value="dom" data-type="Chim."/>
            <option label="Ciber." value="dom" data-type="Ciber."/>
            <option label="Cinem." value="dom" data-type="Cinem."/>
            <option label="Comerț" value="dom" data-type="Comerț"/>
            <option label="Constr." value="dom" data-type="Constr."/>
            <option label="Contab." value="dom" data-type="Contab."/>
            <option label="Cosm." value="dom" data-type="Cosm."/>
            <option label="Cosmol." value="dom" data-type="Cosmol."/>
            <option label="Culgh." value="dom" data-type="Culgh."/>
            <option label="Culin." value="dom" data-type="Culin."/>
            <option label="Ec." value="dom" data-type="Ec."/>
            <option label="Electron." value="dom" data-type="Electron."/>
            <option label="Electrotehn." value="dom" data-type="Electrotehn."/>
            <option label="Entom." value="dom" data-type="Entom."/>
            <option label="Farm." value="dom" data-type="Farm."/>
            <option label="Farmac." value="dom" data-type="Farmac."/>
            <option label="Farmacol." value="dom" data-type="Farmacol."/>
            <option label="Fil." value="dom" data-type="Fil."/>
            <option label="Filoz./Filos." value="dom" data-type="Filoz./Filos."/>
            <option label="Fin." value="dom" data-type="Fin."/>
            <option label="Fiz." value="dom" data-type="Fiz."/>
            <option label="Fiziol." value="dom" data-type="Fiziol."/>
            <option label="Fon." value="dom" data-type="Fon."/>
            <option label="Fonol." value="dom" data-type="Fonol."/>
            <option label="Fot." value="dom" data-type="Fot."/>
            <option label="Genet." value="dom" data-type="Genet."/>
            <option label="Geogr." value="dom" data-type="Geogr."/>
            <option label="Geol." value="dom" data-type="Geol."/>
            <option label="Geom." value="dom" data-type="Geom."/>
            <option label="Gram." value="dom" data-type="Gram."/>
            <option label="Hot." value="dom" data-type="Hot."/>
            <option label="Iht." value="dom" data-type="Iht."/>
            <option label="Ind." value="dom" data-type="Ind."/>
            <option label="Inform." value="dom" data-type="Inform."/>
            <option label="Ist." value="dom" data-type="Ist."/>
            <option label="Jur." value="dom" data-type="Jur."/>
            <option label="Lingv." value="dom" data-type="Lingv."/>
            <option label="Lit." value="dom" data-type="Lit."/>
            <option label="Log." value="dom" data-type="Log."/>
            <option label="Mar." value="dom" data-type="Mar."/>
            <option label="Mat." value="dom" data-type="Mat."/>
            <option label="Mec." value="dom" data-type="Mec."/>
            <option label="Med." value="dom" data-type="Med."/>
            <option label="Med..pop." value="dom" data-type="Med. pop."/>
            <option label="Med..vet." value="dom" data-type="Med. vet."/>
            <option label="Met." value="dom" data-type="Met."/>
            <option label="Meteor." value="dom" data-type="Meteor."/>
            <option label="Mil." value="dom" data-type="Mil."/>
            <option label="Mil." value="dom" data-type="Mil."/>
            <option label="Min." value="dom" data-type="Min."/>
            <option label="Mineral." value="dom" data-type="Mineral."/>
            <option label="Mitol." value="dom" data-type="Mitol."/>
            <option label="Muz." value="dom" data-type="Muz."/>
            <option label="Nav." value="dom" data-type="Nav."/>
            <option label="Numism." value="dom" data-type="Numism."/>
            <option label="Opt." value="dom" data-type="Opt."/>
            <option label="Ornit." value="dom" data-type="Ornit."/>
            <option label="Paleogr." value="dom" data-type="Paleogr."/>
            <option label="Pict." value="dom" data-type="Pict."/>
            <option label="Poligr." value="dom" data-type="Poligr."/>
            <option label="Psih." value="dom" data-type="Psih."/>
            <option label="Radiofon." value="dom" data-type="Radiofon."/>
            <option label="Relig." value="dom" data-type="Relig."/>
            <option label="Statis." value="dom" data-type="Statis."/>
            <option label="Silv." value="dom" data-type="Silv."/>
            <option label="Șt..jur." value="dom" data-type="Șt. jur."/>
            <option label="Șt..nat." value="dom" data-type="Șt. nat."/>
            <option label="Tehn." value="dom" data-type="Tehn."/>
            <option label="Telec." value="dom" data-type="Telec."/>
            <option label="Teol." value="dom" data-type="Teol."/>
            <option label="Text." value="dom" data-type="Text."/>
            <option label="Tipogr." value="dom" data-type="Tipogr."/>
            <option label="Top." value="dom" data-type="Top."/>
            <option label="TV." value="dom" data-type="TV."/>
            <option label="Urban." value="dom" data-type="Urban."/>
            <option label="Sociol." value="dom" data-type="Sociol."/>
            <option label="Zool." value="dom" data-type="Zool."/>
            <option label="Chirurg." value="dom" data-type="Chirurg."/>
            <option label="Geomorf." value="dom" data-type="Geomorf."/>
            <option label="argotic" value="register style" data-type="argotic"/>
            <option label="arhaic" value="register style" data-type="arhaic"/>
            <option label="ca.epitet.pe.lângă" value="register style" data-type="ca epitet pe lângă"/>
            <option label="creație.populară" value="register style" data-type="creație populară"/>
            <option label="depreciativ" value="register style" data-type="depreciativ"/>
            <option label="emfatic" value="register style" data-type="emfatic"/>
            <option label="eufemistic" value="register style" data-type="eufemistic"/>
            <option label="exclamativ" value="register style" data-type="exclamativ"/>
            <option label="familiar" value="register style" data-type="familiar"/>
            <option label="glumeț" value="register style" data-type="glumeț"/>
            <option label="în.argoul" value="register style" data-type="în argoul"/>
            <option label="în.basme" value="register style" data-type="în basme"/>
            <option label="în.basme.și.superstiții" value="register style" data-type="în basme și superstiții"/>
            <option label="în.cântece.de.leagăn" value="register style" data-type="în cântece de leagăn"/>
            <option label="în.colinde" value="register style" data-type="în colinde"/>
            <option label="în.jurăminte" value="register style" data-type="în jurăminte"/>
            <option label="în.concepțiile.religioase" value="register style" data-type="în concepțiile religioase"/>
            <option label="în.credințele.mistice" value="register style" data-type="în credințele mistice"/>
            <option label="în.credințele.populare" value="register style" data-type="în credințele populare"/>
            <option label="în.credințele.religioase" value="register style" data-type="în credințele religioase"/>
            <option label="în.descântece" value="register style" data-type="în descântece"/>
            <option label="în.descântece.și.superstiții" value="register style" data-type="în descântece și superstiții"/>
            <option label="în.ghicitori" value="register style" data-type="în ghicitori"/>
            <option label="în.imprecații" value="register style" data-type="în imprecații"/>
            <option label="în.invocații" value="register style" data-type="în invocații"/>
            <option label="în.limba.literară" value="register style" data-type="în limba literară"/>
            <option label="în.limba.veche" value="register style" data-type="în limba veche"/>
            <option label="în.limbajul" value="register style" data-type="în limbajul"/>
            <option label="în.poezia.populară" value="register style" data-type="în poezia populară"/>
            <option label="în.practicile.religioase" value="register style" data-type="în practicile religioase"/>
            <option label="în.predicile.bazate.pe.superstiții" value="register style" data-type="în predicile bazate pe superstiții"/>
            <option label="în.stilul" value="register style" data-type="în stilul"/>
            <option label="în.supestiții" value="register style" data-type="în supestiții"/>
            <option label="în.textele" value="register style" data-type="în textele"/>
            <option label="ironic" value="register style" data-type="ironic"/>
            <option label="literar" value="register style" data-type="literar"/>
            <option label="livresc" value="register style" data-type="livresc"/>
            <option label="peiorativ" value="register style" data-type="peiorativ"/>
            <option label="personificat" value="register style" data-type="personificat"/>
            <option label="poetic" value="register style" data-type="poetic"/>
            <option label="popular" value="register style" data-type="popular"/>
            <option label="prin.exagerare" value="register style" data-type="prin exagerare"/>
            <option label="adesea" value="plev" data-type="adesea"/>
            <option label="de.obicei" value="plev" data-type="de obicei"/>
            <option label="mai.ales" value="plev" data-type="mai ales"/>
            <option label="uneori" value="plev" data-type="uneori"/>
            <option label="neobișnuit" value="plev" data-type="neobișnuit"/>
            <option label="rar" value="plev" data-type="rar"/>
            <option label="curent" value="plev" data-type="curent"/>
            <option label="mai.rar" value="plev" data-type="mai rar"/>
            <option label="franțuzism" value="lang" data-type="franțuzism"/>
            <option label="germanism" value="lang" data-type="germanism"/>
            <option label="italienism" value="lang" data-type="italienism"/>
            <option label="grecism" value="lang" data-type="grecism"/>
            <option label="maghiarism" value="lang" data-type="maghiarism"/>
            <option label="latinism" value="lang" data-type="latinism"/>
            <option label="sârbism" value="lang" data-type="sârbism"/>
            <option label="slavonism" value="lang" data-type="slavonism"/>
            <option label="turcism" value="lang" data-type="turcism"/>
            <option label="adjectival" value="gram" data-type="adjectival"/>
            <option label="adverbial" value="gram" data-type="adverbial"/>
            <option label="artic." value="gram" data-type="artic."/>
            <option label="cu.aglutinarea.art..pos." value="gram" data-type="cu aglutinarea art. pos."/>
            <option label="cu.pron." value="gram" data-type="cu pron."/>
            <option label="cu.schimbare.de.suf." value="gram" data-type="cu schimbare de suf."/>
            <option label="cu.valoare" value="gram" data-type="cu valoare"/>
            <option label="cu.valoare.de" value="gram" data-type="cu valoare de"/>
            <option label="absol." value="gram" data-type="absol."/>
            <option label="folosit.și.absol" value="gram" data-type="folosit și absol"/>
            <option label="imper..lui" value="gram" data-type="imper. lui"/>
            <option label="impers." value="gram" data-type="impers."/>
            <option label="invar." value="gram" data-type="invar."/>
            <option label="la.comparativ" value="gram" data-type="la comparativ"/>
            <option label="la.f." value="gram" data-type="la f."/>
            <option label="la.f..pl." value="gram" data-type="la f. pl."/>
            <option label="la.f..sg." value="gram" data-type="la f. sg."/>
            <option label="la.imper." value="gram" data-type="la imper."/>
            <option label="la.m." value="gram" data-type="la m."/>
            <option label="la.m..pl." value="gram" data-type="la m. pl."/>
            <option label="la.m..sg." value="gram" data-type="la m. sg."/>
            <option label="la.n." value="gram" data-type="la n."/>
            <option label="la.n..sg." value="gram" data-type="la n. sg."/>
            <option label="la.pers..1" value="gram" data-type="la pers. 1"/>
            <option label="la.pers..2" value="gram" data-type="la pers. 2"/>
            <option label="la.pers..3" value="gram" data-type="la pers. 3"/>
            <option label="la.pl." value="gram" data-type="la pl."/>
            <option label="la.pl..cu.valoare.de.sg." value="gram" data-type="la pl. cu valoare de sg."/>
            <option label="la.sg." value="gram" data-type="la sg."/>
            <option label="la.sg..cu.sens.colectiv" value="gram" data-type="la sg. cu sens colectiv"/>
            <option label="la.sg..cu.sens.de.pl." value="gram" data-type="la sg. cu sens de pl."/>
            <option label="la.superlativ" value="gram" data-type="la superlativ"/>
            <option label="la.voc." value="gram" data-type="la voc."/>
            <option label="pl..lui" value="gram" data-type="pl. lui"/>
            <option label="substantivat" value="gram" data-type="substantivat"/>
            <option label="și.substantivat" value="gram" data-type="și substantivat"/>
            <option label="complementul.indică" value="obj" data-type="complementul indică"/>
            <option label="cu.complement.intern" value="obj" data-type="cu complement intern"/>
            <option label="cu.subiectul.....sau.un.echivalent.al.acestuia" value="subj" data-type="cu subiectul ... sau un echivalent al acestuia"/>
            <option label="cu.subiectul.neexprimat,.subînțelegându-se" value="subj" data-type="cu subiectul neexprimat, subînțelegându-se"/>
            <option label="cu.subiectul.personificat" value="subj" data-type="cu subiectul personificat"/>
            <option label="cu.subiectul.personificat" value="subj" data-type="cu subiectul personificat"/>
            <option label="cu.subiectul.exprimat.sau.subînțeles" value="subj" data-type="cu subiectul exprimat sau subînțeles"/>
            <option label="subiect.gramatical.sau.logic" value="subj" data-type="subiect gramatical sau logic"/>
            <option label="subiectul.este" value="subj" data-type="subiectul este"/>
            <option label="subiectul.indică" value="subj" data-type="subiectul indică"/>
            <option label="atestat.prima.dată.în" value="hint" data-type="atestat prima dată în"/>
            <option label="atestat.prima.dată.la" value="hint" data-type="atestat prima dată la"/>
            <option label="ca.apelativ" value="hint" data-type="ca apelativ"/>
            <option label="ca.epitet" value="hint" data-type="ca epitet"/>
            <option label="ca.s..pr." value="hint" data-type="ca s. pr."/>
            <option label="ca.termen.de" value="hint" data-type="ca termen de"/>
            <option label="ca.termen.tehnic" value="hint" data-type="ca termen tehnic"/>
            <option label="cea.mai.veche.atestare.ar.data" value="hint" data-type="cea mai veche atestare ar data"/>
            <option label="creație.personală" value="hint" data-type="creație personală"/>
            <option label="creație.spontană" value="hint" data-type="creație spontană"/>
            <option label="cu.aluzie.la" value="hint" data-type="cu aluzie la"/>
            <option label="cu.echivalente.ale.acestora" value="hint" data-type="cu echivalente ale acestora"/>
            <option label="cu.echivalente.ale.acestuia" value="hint" data-type="cu echivalente ale acestuia"/>
            <option label="cu.elipsa" value="hint" data-type="cu elipsa"/>
            <option label="cu.nuanță" value="hint" data-type="cu nuanță"/>
            <option label="cu.sens" value="hint" data-type="cu sens"/>
            <option label="cu.ortografie.etimologică" value="hint" data-type="cu ortografie etimologică"/>
            <option label="cu.sensul" value="hint" data-type="cu sensul"/>
            <option label="cu.un.echivalent.al.acestora" value="hint" data-type="cu un echivalent al acestora"/>
            <option label="despre" value="hint" data-type="despre"/>
            <option label="din.necesități.prozodice" value="hint" data-type="din necesități prozodice"/>
            <option label="după.ortografia.germ." value="hint" data-type="după ortografia germ."/>
            <option label="eliptic" value="hint" data-type="eliptic"/>
            <option label="folosit.independent" value="hint" data-type="folosit independent"/>
            <option label="folosit.la.adresa" value="hint" data-type="folosit la adresa"/>
            <option label="folosit.pentru.a.contrazice.categoric.pe.vorbitor" value="hint" data-type="folosit pentru a contrazice categoric pe vorbitor"/>
            <option label="folosit.pleonastic.pe.lângă" value="hint" data-type="folosit pleonastic pe lângă"/>
            <option label="formă.coruptă" value="hint" data-type="formă coruptă"/>
            <option label="formă.greşită" value="hint" data-type="formă greşită"/>
            <option label="formă.latinizantă" value="hint" data-type="formă latinizantă"/>
            <option label="formă.prescurtată" value="hint" data-type="formă prescurtată"/>
            <option label="greșit.în.dicționare" value="hint" data-type="greșit în dicționare"/>
            <option label="impropriu" value="hint" data-type="impropriu"/>
            <option label="în.comparații" value="hint" data-type="în comparații"/>
            <option label="în.dialog" value="hint" data-type="în dialog"/>
            <option label="în.dicționarele.din.trecut" value="hint" data-type="în dicționarele din trecut"/>
            <option label="în.enumerări" value="hint" data-type="în enumerări"/>
            <option label="în.filozofia" value="hint" data-type="în filozofia"/>
            <option label="în.formă.prescurtată" value="hint" data-type="în formă prescurtată"/>
            <option label="în.forme.compuse,.așezat.între" value="hint" data-type="în forme compuse, așezat între"/>
            <option label="în.opoziție.cu" value="hint" data-type="în opoziție cu"/>
            <option label="în.textele" value="hint" data-type="în textele"/>
            <option label="între.articol.şi.numeral.intervine.art..nehot." value="hint" data-type="între articol şi numeral intervine art. nehot."/>
            <option label="la" value="hint" data-type="la"/>
            <option label="la.jocul.de" value="hint" data-type="la jocul de"/>
            <option label="la.unele.jocuri.de" value="hint" data-type="la unele jocuri de"/>
            <option label="la.unele.sporturi" value="hint" data-type="la unele sporturi"/>
            <option label="nedefinit.mai.îndeaproape" value="hint" data-type="nedefinit mai îndeaproape"/>
            <option label="pleonastic" value="hint" data-type="pleonastic"/>
            <option label="precizat.prin" value="hint" data-type="precizat prin"/>
            <option label="prin.adaptare.la.sistemul.fonetic.popular" value="hint" data-type="prin adaptare la sistemul fonetic popular"/>
            <option label="prin.antiteză" value="hint" data-type="prin antiteză"/>
            <option label="prin.confuzie" value="hint" data-type="prin confuzie"/>
            <option label="prin.confuzie.cu" value="hint" data-type="prin confuzie cu"/>
            <option label="prin.haplologie" value="hint" data-type="prin haplologie"/>
            <option label="prin.metateză" value="hint" data-type="prin metateză"/>
            <option label="prin.metonimie" value="hint" data-type="prin metonimie"/>
            <option label="prin.sincopare" value="hint" data-type="prin sincopare"/>
            <option label="probabil.din.necesități.prozodice" value="hint" data-type="probabil din necesități prozodice"/>
            <option label="pronunțat.cu" value="hint" data-type="pronunțat cu"/>
            <option label="scris.într-un.singur.cuvânt" value="hint" data-type="scris într-un singur cuvânt"/>
            <option label="suspect" value="hint" data-type="suspect"/>
            <option label="construit.cu" value="coloc" data-type="construit cu"/>
            <option label="construit.cu.corelativele" value="coloc" data-type="construit cu corelativele"/>
            <option label="cu.determinarea.subînțeleasă" value="coloc" data-type="cu determinarea subînțeleasă"/>
            <option label="cu.determinarea" value="coloc" data-type="cu determinarea"/>
            <option label="cu.forma.negativă.a.expr." value="coloc" data-type="cu forma negativă a expr."/>
            <option label="cu.parafrazarea.expr." value="coloc" data-type="cu parafrazarea expr."/>
            <option label="cu.parafrazarea.prov." value="coloc" data-type="cu parafrazarea prov."/>
            <option label="cu.topica.schimbată" value="coloc" data-type="cu topica schimbată"/>
            <option label="despre" value="coloc" data-type="despre"/>
            <option label="determină" value="coloc" data-type="determină"/>
            <option label="determinat.de" value="coloc" data-type="determinat de"/>
            <option label="determinat.prin" value="coloc" data-type="determinat prin"/>
            <option label="în.componența.unor" value="coloc" data-type="în componența unor"/>
            <option label="în.concurență.cu" value="coloc" data-type="în concurență cu"/>
            <option label="în.construcția" value="coloc" data-type="în construcția"/>
            <option label="în.construcții" value="coloc" data-type="în construcții"/>
            <option label="în.construcții.cu" value="coloc" data-type="în construcții cu"/>
            <option label="în.construcțiile" value="coloc" data-type="în construcțiile"/>
            <option label="în.corelație.cu" value="coloc" data-type="în corelație cu"/>
            <option label="în.corelație.cu.el.însuși" value="coloc" data-type="în corelație cu el însuși"/>
            <option label="în.expr." value="coloc" data-type="în expr."/>
            <option label="în.forma" value="coloc" data-type="în forma"/>
            <option label="în.forme.compuse" value="coloc" data-type="în forme compuse"/>
            <option label="în.formele" value="coloc" data-type="în formele"/>
            <option label="în.formule" value="coloc" data-type="în formule"/>
            <option label="în.formule.de" value="coloc" data-type="în formule de"/>
            <option label="în.loc.și.în.expr." value="coloc" data-type="în loc și în expr."/>
            <option label="în.loc..adj." value="loc. adj." data-type="în loc. adj."/>
            <option label="în.loc..adv." value="loc. adv." data-type="în loc. adv."/>
            <option label="în.loc..conj." value="loc. conj." data-type="în loc. conj."/>
            <option label="în.loc..prep." value="loc. prep." data-type="în loc. prep."/>
            <option label="în.loc..vb." value="loc. vb." data-type="în loc. vb."/>
            <option label="în.prov." value="proverb" data-type="în prov."/>
            <option label="în.prov..și.în.zic." value="coloc" data-type="în prov. și în zic."/>
            <option label="în.sint." value="coloc" data-type="în sint."/>
            <option label="în.zic..și.în.expr." value="coloc" data-type="în zic. și în expr."/>
            <option label="într-o.ghicitoare" value="coloc" data-type="într-o ghicitoare"/>
            <option label="indică" value="coloc" data-type="indică"/>
            <option label="întărit.prin" value="coloc" data-type="întărit prin"/>
            <option label="precedă" value="coloc" data-type="precedă"/>
            <option label="precedă.noțiuni.temporale" value="coloc" data-type="precedă noțiuni temporale"/>
            <option label="precedă.ultimul.termen.al.unei.enumerări" value="coloc" data-type="precedă ultimul termen al unei enumerări"/>
            <option label="precedat.de" value="coloc" data-type="precedat de"/>
            <option label="precedat.de.prep." value="coloc" data-type="precedat de prep."/>
            <option label="precedat.de.calificative" value="coloc" data-type="precedat de calificative"/>
            <option label="precedat.de.complementul" value="coloc" data-type="precedat de complementul"/>
            <option label="urmat.de.complementul" value="coloc" data-type="urmat de complementul"/>
            <option label="precedat.de.corelativele" value="coloc" data-type="precedat de corelativele"/>
            <option label="precedat.de.determinarea" value="coloc" data-type="precedat de determinarea"/>
            <option label="precedat.de.determinări" value="coloc" data-type="precedat de determinări"/>
            <option label="precedat.de.determinări.care" value="coloc" data-type="precedat de determinări care"/>
            <option label="precedat.de.determinări.introduse.prin" value="coloc" data-type="precedat de determinări introduse prin"/>
            <option label="precedat.de.determinările" value="coloc" data-type="precedat de determinările"/>
            <option label="precedat.de.nume.de.identificare" value="coloc" data-type="precedat de nume de identificare"/>
            <option label="precedat.de.o.comparație" value="coloc" data-type="precedat de o comparație"/>
            <option label="precedat.de.propoziții.completive" value="coloc" data-type="precedat de propoziții completive"/>
            <option label="precedat.de.propoziții.completive.care" value="coloc" data-type="precedat de propoziții completive care"/>
            <option label="precedat.de.propoziții.finale.care" value="coloc" data-type="precedat de propoziții finale care"/>
            <option label="precedat.de.propoziții.finale" value="coloc" data-type="precedat de propoziții finale"/>
            <option label="precedat.de.propoziții.negative" value="coloc" data-type="precedat de propoziții negative"/>
            <option label="precedat.de.propoziții.negative.care" value="coloc" data-type="precedat de propoziții negative care"/>
            <option label="repetat" value="coloc" data-type="repetat"/>
            <option label="urmând.după.s..determinat" value="coloc" data-type="urmând după s. determinat"/>
            <option label="urmat.de" value="coloc" data-type="urmat de"/>
            <option label="urmat.de.calificative" value="coloc" data-type="urmat de calificative"/>
            <option label="urmat.de.determinarea" value="coloc" data-type="urmat de determinarea"/>
            <option label="urmat.de.determinări" value="coloc" data-type="urmat de determinări"/>
            <option label="urmat.de.determinări.care" value="coloc" data-type="urmat de determinări care"/>
            <option label="urmat.de.determinări.introduse.prin" value="coloc" data-type="urmat de determinări introduse prin"/>
            <option label="urmat.de.determinările" value="coloc" data-type="urmat de determinările"/>
            <option label="urmat.de.nume.de.identificare" value="coloc" data-type="urmat de nume de identificare"/>
            <option label="urmat.de.o.comparație" value="coloc" data-type="urmat de o comparație"/>
            <option label="urmat.de.propoziții.completive" value="coloc" data-type="urmat de propoziții completive"/>
            <option label="urmat.de.propoziții.completive.care.precizează" value="coloc" data-type="urmat de propoziții completive care precizează"/>
            <option label="urmat.de.propoziții.completive.introduse.prin.conj." value="coloc" data-type="urmat de propoziții completive introduse prin conj."/>
            <option label="urmat.de.propoziții.finale" value="coloc" data-type="urmat de propoziții finale"/>
            <option label="urmat.de.propoziții.finale.care.precizează" value="coloc" data-type="urmat de propoziții finale care precizează"/>
            <option label="urmat.de.propoziții.finale.introduse.prin.conj." value="coloc" data-type="urmat de propoziții finale introduse prin conj."/>
            <option label="urmat.de.propoziții.negative" value="coloc" data-type="urmat de propoziții negative"/>
            <option label="urmat.de.propoziții.negative.care.precizează" value="coloc" data-type="urmat de propoziții negative care precizează"/>
            <option label="urmat.de.propoziții.negative.introduse.prin.conj." value="coloc" data-type="urmat de propoziții negative introduse prin conj."/>
            <option label="urmează.după.s..determinat" value="coloc" data-type="urmează după s. determinat"/>
            <option label="dial." value="geo." data-type="dial."/>
            <option label="abstr." value="sem" data-type="abstr."/>
            <option label="concr." value="sem" data-type="concr."/>
            <option label="fig." value="sem" data-type="fig."/>
            <option label="p..anal." value="sem" data-type="p. anal."/>
            <option label="p..anal..cu" value="sem" data-type="p. anal. cu"/>
            <option label="p..ext." value="sem" data-type="p. ext."/>
            <option label="p..gener." value="sem" data-type="p. gener."/>
            <option label="p..restr." value="sem" data-type="p. restr."/>
            <option label="spec." value="sem" data-type="spec."/>
            <option label="cu.determinări" value="coloc" data-type="cu determinări"/>
            <option label="rar.la" value="gram" data-type="rar la"/>
            <option label="mai.ales.la" value="plev" data-type="mai ales la"/>
            <option label="cu.dativul.etic" value="gram" data-type="cu dativul etic"/>
            <option label="cu.inversarea.construcției" value="coloc" data-type="cu inversarea construcției"/>
		</datalist>
let $domains := distinct-values($datalist//html:option/@value)
let $domain-concepts :=
    for $domain in $domains
    let $notation := "uuid-" || util:uuid("usage-domains-" || $domain)
    
    return
        <skos:Concept xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:skos="http://www.w3.org/2004/02/skos/core#" rdf:about="http://lingv.ro/ontology/usage/domains/#{$notation}">
        	<skos:prefLabel>{$domain}</skos:prefLabel>
        	<skos:altLabel>{$domain}</skos:altLabel>
        	<skos:notation>{$notation}</skos:notation>
        </skos:Concept>	
		
let $controlled-vocabulary :=
    <rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:skos="http://www.w3.org/2004/02/skos/core#"
    	xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#">
    	<skos:OrderedCollection rdf:about="http://lingv.ro/ontology/usage">
    		<rdfs:label>Indicații de folosire</rdfs:label>
    		<skos:memberList rdf:parseType="Collection">
    			<skos:OrderedCollection rdf:about="http://lingv.ro/ontology/usage/types">
    				<rdfs:label>Tipuri de indicații de folosire</rdfs:label>
    				<skos:memberList rdf:parseType="Collection">
                		{
                            for $option in $datalist//html:option[@label != '']
                            let $type-label := $option/@data-type/string()
                            let $domain := $option/@value/string()
                            let $type := $option/@label/string()
                            let $notation := "uuid-" || util:uuid("usage-types-" || $type-label)
                            let $broad-match := $domain-concepts[skos:altLabel = $domain]/@rdf:about
                            
                            return
                                <skos:Concept rdf:about="http://lingv.ro/ontology/usage/types/#{$notation}">
                                	<skos:prefLabel>{$type-label}</skos:prefLabel>
                                	<skos:altLabel>{$type}</skos:altLabel>
                                	<skos:broadMatch rdf:resource="{$broad-match}" />
                                	<skos:notation>{$notation}</skos:notation>
                                </skos:Concept>		    
                		}    				
    				</skos:memberList>
    			</skos:OrderedCollection>
    			<skos:OrderedCollection rdf:about="http://lingv.ro/ontology/usage/domains">
    				<rdfs:label>Domenii ale indicațiilor de folosire</rdfs:label>
    				<skos:memberList rdf:parseType="Collection">{$domain-concepts}</skos:memberList>
    			</skos:OrderedCollection>
    		</skos:memberList>
    	</skos:OrderedCollection>
    </rdf:RDF>

return xmldb:store("/db", "usage.rdf", $controlled-vocabulary)