
/* #hillshade {
  ::1[zoom<=14],
  ::2[zoom=15],
  ::3[zoom=16],
  ::4[zoom>16] {
    [class='full_shadow'] {
      polygon-pattern-file:url(img/full_shadow.png);
      polygon-pattern-alignment:global;
    }
    [class='medium_shadow'] {
      polygon-pattern-file:url(img/medium_shadow.png);
      polygon-pattern-alignment:global;
    }
    [class='medium_highlight'] {
      polygon-pattern-file:url(img/medium_highlight.png);
      polygon-pattern-alignment:global;
    }
    [class='full_highlight'] {
      polygon-pattern-file:url(img/full_highlight.png);
      polygon-pattern-alignment:global;
    }
  }
}*/

//#landcover[class!='crop'][class!='snow']{
#landcover[class='wood']{
  polygon-fill: #b3ffb4;
  line-color: #b3ffb4 * .8;
  comp-op: multiply;
}

#landuse[class!='agriculture']{
  [class='park'],[class='wood'],[class='scrub'],
    [class='pitch'],[class='grass'] {
    polygon-fill: #b3ffb4;
    line-color: #b3ffb4 * .8;
  }
  [class='industrial'],[class='parking'],
    [class='school'],[class='hospital'] {
    polygon-fill: #57eaf8;
    line-color: #57eaf8 * .5;
  }
  [class='cemetery'] {
    polygon-fill: #2df;
    line-color: #2df * .8;
  }
  comp-op: multiply;
  [zoom>15] { line-width:2; }
}

#landuse_overlay { polygon-fill: #2df; comp-op:multiply; }