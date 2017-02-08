xquery version "3.0";

module namespace ilir = "http://lingv.ro/ontology/templates/#ilir.xqm";

declare variable $ilir:gramGrp-template as element() :=
   <gramGrp xmlns="http://www.tei-c.org/ns/1.0">
       <pos value="" />
   </gramGrp>
;

declare variable $ilir:lexical-variant-section-template as element() :=
	<form xmlns="http://www.tei-c.org/ns/1.0" type="lexical-variant-section">
        <form type="lexical-variant" />
        {$ilir:gramGrp-template}
    </form>
;

declare variable $ilir:def-template as element() :=
    <def xmlns="http://www.tei-c.org/ns/1.0" n="" />
;

declare variable $ilir:bibl-template as element() :=
    <bibl xmlns="http://www.tei-c.org/ns/1.0" type="unknown">
        <ptr target="unknown" />
        <date />
        <citedRange />
    </bibl>
;

declare variable $ilir:cit-template as element() :=
    <cit xmlns="http://www.tei-c.org/ns/1.0">
        <quote />
        {$ilir:bibl-template}
    </cit>
;

declare variable $ilir:sense-template as element() :=
    <sense xmlns="http://www.tei-c.org/ns/1.0" xml:id="id">
        <idno n="" type="level-label" />
        <idno n="tip-unitate-semantică-subsumată" type="unknown" />
        <idno n="tip-proces-semantic" type="unknown" />
        {$ilir:def-template}
        {$ilir:cit-template}
    </sense>
;

declare variable $ilir:term-template as element() :=
    <term xmlns="http://www.tei-c.org/ns/1.0" xml:lang="" type="unknown" subtype="unknown" />
;

declare variable $ilir:term-prefix-template as element() :=
    <term xmlns="http://www.tei-c.org/ns/1.0" xml:lang="" type="prefix" subtype="unknown" />
;

declare variable $ilir:term-sufix-template as element() :=
    <term xmlns="http://www.tei-c.org/ns/1.0" xml:lang="" type="sufix" subtype="unknown" />
;

declare variable $ilir:term-la-template as element() :=
    <term xmlns="http://www.tei-c.org/ns/1.0" xml:lang="la" type="unknown" subtype="unknown" />
;

declare variable $ilir:term-una.sau.mai.multe.variante.lexicale-template as element() :=
    <term xmlns="http://www.tei-c.org/ns/1.0" xml:lang="" type="una.sau.mai.multe.variante.lexicale" />
;

declare variable $ilir:term-una.sau.mai.multe.variante.lexicale-cf.-template as element() :=
    <term xmlns="http://www.tei-c.org/ns/1.0" xml:lang="" type="una.sau.mai.multe.variante.lexicale-cf." />
;

declare variable $ilir:term-unul.sau.mai.multe.sensuri-sensul-cf.-template as element() :=
    <term xmlns="http://www.tei-c.org/ns/1.0" xml:lang="" type="unul.sau.mai.multe.sensuri-sensul-cf." />
;

declare variable $ilir:term-cuvântul.titlu-formație.internă-compus-format.din-bază-template as element() :=
    <term xmlns="http://www.tei-c.org/ns/1.0" xml:lang="" type="cuvântul.titlu-formație.internă-compus-format.din-bază" />
;

declare variable $ilir:term-cuvântul.titlu-formație.internă-compus-format.din-element.adăugat-template as element() :=
    <term xmlns="http://www.tei-c.org/ns/1.0" xml:lang="" type="cuvântul.titlu-formație.internă-compus-format.din-element.adăugat" />
;

declare variable $ilir:ptr-template as element() :=
    <ptr xmlns="http://www.tei-c.org/ns/1.0" targetLang="" type="unknown" subtype="unknown" target="unknown" />
;

declare variable $ilir:ptr-una.sau.mai.multe.variante.lexicale-cf.-template as element() :=
    <ptr xmlns="http://www.tei-c.org/ns/1.0" targetLang="ro" type="una.sau.mai.multe.variante.lexicale-cf." target="unknown" />
;

declare variable $ilir:ptr-unul.sau.mai.multe.sensuri-sensul-template as element() :=
    <ptr xmlns="http://www.tei-c.org/ns/1.0" targetLang="" type="unul.sau.mai.multe.sensuri-sensul" target="unknown" />
;

declare variable $ilir:ptr-unul.sau.mai.multe.sensuri-sensul-cf.-template as element() :=
    <ptr xmlns="http://www.tei-c.org/ns/1.0" targetLang="ro" type="unul.sau.mai.multe.sensuri-sensul-cf." target="unknown" />
;

declare variable $ilir:ptr-base-word-template as element() :=
    <ptr xmlns="http://www.tei-c.org/ns/1.0" targetLang="" type="base-word" subtype="unknown" target="unknown" />
;

declare variable $ilir:ptr-component-element-template as element() :=
    <ptr xmlns="http://www.tei-c.org/ns/1.0" targetLang="" type="component-element" subtype="unknown" target="unknown" />
;

declare variable $ilir:ptr-cuvântul.titlu-formație.internă-compus-format.din-bază-template as element() :=
    <ptr xmlns="http://www.tei-c.org/ns/1.0" targetLang="ro" type="cuvântul.titlu-formație.internă-compus-format.din-bază" target="unknown" />
;

declare variable $ilir:ptr-cuvântul.titlu-formație.internă-compus-format.din-element.adăugat-template as element() :=
    <ptr xmlns="http://www.tei-c.org/ns/1.0" targetLang="ro" type="cuvântul.titlu-formație.internă-compus-format.din-element.adăugat" target="unknown" />
;

declare variable $ilir:pRef-template as element() :=
	<pRef xmlns="http://www.tei-c.org/ns/1.0" xml:lang="ro-x-accent-lowcase-vowels" />
;

declare variable $ilir:pronunciation-form-template as element() :=
	<form xmlns="http://www.tei-c.org/ns/1.0" type="pronunciation" value="" />
;

declare variable $ilir:writing-form-template as element() :=
	<form xmlns="http://www.tei-c.org/ns/1.0" type="writing">
		<oVar />
	</form>
;
