
declare @data xml = N'<Games>
  <Game Seq="1" Site="Bhopal IND" Round="5.3" WhiteName="David, Alberto" WhiteElo="2571" BlackName="Rathnakaran, K" BlackElo="2307" Year="2017" Date="2017-12-24T00:00:00" ECO="A15" MoveCount="43" Result="1" Reason="1" PGN="[Event &quot;Bhopal International Open&quot;]&#xD;&#xA;[Site &quot;Bhopal IND&quot;]&#xD;&#xA;[Date &quot;2017.12.24&quot;]&#xD;&#xA;[Round &quot;5.3&quot;]&#xD;&#xA;[White &quot;David, Alberto&quot;]&#xD;&#xA;[Black &quot;Rathnakaran, K&quot;]&#xD;&#xA;[Result &quot;1-0&quot;]&#xD;&#xA;[WhiteElo &quot;2571&quot;]&#xD;&#xA;[BlackElo &quot;2307&quot;]&#xD;&#xA;[ECO &quot;A15&quot;]&#xD;&#xA;[EventDate &quot;2017.12.21&quot;]&#xD;&#xA;&#xD;&#xA;1.Nf3 Nf6 2.c4 g6 3.b4 Bg7 4.Bb2 O-O 5.g3 a5 6.b5 d5 7.Bg2 c5 8.cxd5 Nxd5 &#xD;&#xA;9.Bxg7 Kxg7 10.O-O Nd7 11.d4 cxd4 12.Qxd4+ N7f6 13.Na3 Nb6 14.Rfd1 Qxd4 &#xD;&#xA;15.Nxd4 Rd8 16.Nb3 Rxd1+ 17.Rxd1 Ne8 18.Rd8 a4 19.Nc5 Nd6 20.e4 Ra5 21.Bf1&#xD;&#xA;f5 22.e5 Nf7 23.Re8 Nxe5 24.Rxe7+ Kf6 25.Rc7 Nf3+ 26.Kg2 Ne1+ 27.Kg1 Ra8 &#xD;&#xA;28.f4 Nf3+ 29.Kh1 g5 30.Rxh7 Nd5 31.Rh6+ Kg7 32.Rd6 Ne3 33.Be2 g4 34.Nc4 &#xD;&#xA;Nxc4 35.Bxc4 a3 36.Kg2 Kf8 37.h4 Ke7 38.Rg6 Nd2 39.Bd5 Ne4 40.Nxe4 fxe4 &#xD;&#xA;41.Rg8 Kd6 42.Bb3 e3 43.h5 1-0&#xD;&#xA;&#xD;&#xA;" PgnHash="2096845707" GameHash="1333227837">
    <Move Seq="2" Ply="1" FromFile="7" FromRank="1" ToFile="6" ToRank="3">
      <FromPos>
        <Pos Seq="3" FEN="rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1" White="true" Move="1" Ply50="0" CastleWK="true" CastleWQ="true" CastleBK="true" CastleBQ="true">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="7" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="2" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="2" R="8" P="3" W="0" C="0" />
          <S F="3" R="1" P="4" W="1" C="0" />
          <S F="3" R="2" P="1" W="1" C="0" />
          <S F="3" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="7" P="1" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="1" P="232" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="5" R="8" P="232" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="4" W="0" C="0" />
          <S F="7" R="1" P="3" W="1" C="0" />
          <S F="7" R="2" P="1" W="1" C="0" />
          <S F="7" R="7" P="1" W="0" C="0" />
          <S F="7" R="8" P="3" W="0" C="0" />
          <S F="8" R="1" P="5" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
          <S F="8" R="8" P="5" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="4" FEN="rnbqkbnr/pppppppp/8/8/8/5N2/PPPPPPPP/RNBQKB1R b KQkq - 1 1" White="false" Move="1" Ply50="1" CastleWK="true" CastleWQ="true" CastleBK="true" CastleBQ="true">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="7" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="2" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="2" R="8" P="3" W="0" C="0" />
          <S F="3" R="1" P="4" W="1" C="0" />
          <S F="3" R="2" P="1" W="1" C="0" />
          <S F="3" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="7" P="1" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="1" P="232" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="5" R="8" P="232" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="4" W="0" C="0" />
          <S F="7" R="2" P="1" W="1" C="0" />
          <S F="7" R="7" P="1" W="0" C="0" />
          <S F="7" R="8" P="3" W="0" C="0" />
          <S F="8" R="1" P="5" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
          <S F="8" R="8" P="5" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="5" Ply="2" FromFile="7" FromRank="8" ToFile="6" ToRank="6">
      <FromPos>
        <Pos Seq="6" FEN="rnbqkbnr/pppppppp/8/8/8/5N2/PPPPPPPP/RNBQKB1R b KQkq - 1 1" White="false" Move="1" Ply50="1" CastleWK="true" CastleWQ="true" CastleBK="true" CastleBQ="true">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="7" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="2" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="2" R="8" P="3" W="0" C="0" />
          <S F="3" R="1" P="4" W="1" C="0" />
          <S F="3" R="2" P="1" W="1" C="0" />
          <S F="3" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="7" P="1" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="1" P="232" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="5" R="8" P="232" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="4" W="0" C="0" />
          <S F="7" R="2" P="1" W="1" C="0" />
          <S F="7" R="7" P="1" W="0" C="0" />
          <S F="7" R="8" P="3" W="0" C="0" />
          <S F="8" R="1" P="5" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
          <S F="8" R="8" P="5" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="7" FEN="rnbqkb1r/pppppppp/5n2/8/8/5N2/PPPPPPPP/RNBQKB1R w KQkq - 2 2" White="true" Move="2" Ply50="2" CastleWK="true" CastleWQ="true" CastleBK="true" CastleBQ="true">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="7" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="2" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="2" R="8" P="3" W="0" C="0" />
          <S F="3" R="1" P="4" W="1" C="0" />
          <S F="3" R="2" P="1" W="1" C="0" />
          <S F="3" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="7" P="1" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="1" P="232" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="5" R="8" P="232" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="4" W="0" C="0" />
          <S F="7" R="2" P="1" W="1" C="0" />
          <S F="7" R="7" P="1" W="0" C="0" />
          <S F="8" R="1" P="5" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
          <S F="8" R="8" P="5" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="8" Ply="3" FromFile="3" FromRank="2" ToFile="3" ToRank="4">
      <FromPos>
        <Pos Seq="9" FEN="rnbqkb1r/pppppppp/5n2/8/8/5N2/PPPPPPPP/RNBQKB1R w KQkq - 2 2" White="true" Move="2" Ply50="2" CastleWK="true" CastleWQ="true" CastleBK="true" CastleBQ="true">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="7" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="2" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="2" R="8" P="3" W="0" C="0" />
          <S F="3" R="1" P="4" W="1" C="0" />
          <S F="3" R="2" P="1" W="1" C="0" />
          <S F="3" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="7" P="1" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="1" P="232" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="5" R="8" P="232" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="4" W="0" C="0" />
          <S F="7" R="2" P="1" W="1" C="0" />
          <S F="7" R="7" P="1" W="0" C="0" />
          <S F="8" R="1" P="5" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
          <S F="8" R="8" P="5" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="10" FEN="rnbqkb1r/pppppppp/5n2/8/2P5/5N2/PP1PPPPP/RNBQKB1R b KQkq c3 0 2" White="false" EP="3" Move="2" Ply50="0" CastleWK="true" CastleWQ="true" CastleBK="true" CastleBQ="true">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="7" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="2" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="2" R="8" P="3" W="0" C="0" />
          <S F="3" R="1" P="4" W="1" C="0" />
          <S F="3" R="4" P="1" W="1" C="0" />
          <S F="3" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="7" P="1" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="1" P="232" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="5" R="8" P="232" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="4" W="0" C="0" />
          <S F="7" R="2" P="1" W="1" C="0" />
          <S F="7" R="7" P="1" W="0" C="0" />
          <S F="8" R="1" P="5" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
          <S F="8" R="8" P="5" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="11" Ply="4" FromFile="7" FromRank="7" ToFile="7" ToRank="6">
      <FromPos>
        <Pos Seq="12" FEN="rnbqkb1r/pppppppp/5n2/8/2P5/5N2/PP1PPPPP/RNBQKB1R b KQkq c3 0 2" White="false" EP="3" Move="2" Ply50="0" CastleWK="true" CastleWQ="true" CastleBK="true" CastleBQ="true">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="7" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="2" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="2" R="8" P="3" W="0" C="0" />
          <S F="3" R="1" P="4" W="1" C="0" />
          <S F="3" R="4" P="1" W="1" C="0" />
          <S F="3" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="7" P="1" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="1" P="232" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="5" R="8" P="232" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="4" W="0" C="0" />
          <S F="7" R="2" P="1" W="1" C="0" />
          <S F="7" R="7" P="1" W="0" C="0" />
          <S F="8" R="1" P="5" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
          <S F="8" R="8" P="5" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="13" FEN="rnbqkb1r/pppppp1p/5np1/8/2P5/5N2/PP1PPPPP/RNBQKB1R w KQkq - 0 3" White="true" Move="3" Ply50="0" CastleWK="true" CastleWQ="true" CastleBK="true" CastleBQ="true">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="7" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="2" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="2" R="8" P="3" W="0" C="0" />
          <S F="3" R="1" P="4" W="1" C="0" />
          <S F="3" R="4" P="1" W="1" C="0" />
          <S F="3" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="7" P="1" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="1" P="232" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="5" R="8" P="232" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="4" W="0" C="0" />
          <S F="7" R="2" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="8" R="1" P="5" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
          <S F="8" R="8" P="5" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="14" Ply="5" FromFile="2" FromRank="2" ToFile="2" ToRank="4">
      <FromPos>
        <Pos Seq="15" FEN="rnbqkb1r/pppppp1p/5np1/8/2P5/5N2/PP1PPPPP/RNBQKB1R w KQkq - 0 3" White="true" Move="3" Ply50="0" CastleWK="true" CastleWQ="true" CastleBK="true" CastleBQ="true">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="7" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="2" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="2" R="8" P="3" W="0" C="0" />
          <S F="3" R="1" P="4" W="1" C="0" />
          <S F="3" R="4" P="1" W="1" C="0" />
          <S F="3" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="7" P="1" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="1" P="232" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="5" R="8" P="232" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="4" W="0" C="0" />
          <S F="7" R="2" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="8" R="1" P="5" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
          <S F="8" R="8" P="5" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="16" FEN="rnbqkb1r/pppppp1p/5np1/8/1PP5/5N2/P2PPPPP/RNBQKB1R b KQkq b3 0 3" White="false" EP="2" Move="3" Ply50="0" CastleWK="true" CastleWQ="true" CastleBK="true" CastleBQ="true">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="7" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="4" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="2" R="8" P="3" W="0" C="0" />
          <S F="3" R="1" P="4" W="1" C="0" />
          <S F="3" R="4" P="1" W="1" C="0" />
          <S F="3" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="7" P="1" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="1" P="232" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="5" R="8" P="232" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="4" W="0" C="0" />
          <S F="7" R="2" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="8" R="1" P="5" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
          <S F="8" R="8" P="5" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="17" Ply="6" FromFile="6" FromRank="8" ToFile="7" ToRank="7">
      <FromPos>
        <Pos Seq="18" FEN="rnbqkb1r/pppppp1p/5np1/8/1PP5/5N2/P2PPPPP/RNBQKB1R b KQkq b3 0 3" White="false" EP="2" Move="3" Ply50="0" CastleWK="true" CastleWQ="true" CastleBK="true" CastleBQ="true">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="7" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="4" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="2" R="8" P="3" W="0" C="0" />
          <S F="3" R="1" P="4" W="1" C="0" />
          <S F="3" R="4" P="1" W="1" C="0" />
          <S F="3" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="7" P="1" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="1" P="232" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="5" R="8" P="232" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="4" W="0" C="0" />
          <S F="7" R="2" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="8" R="1" P="5" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
          <S F="8" R="8" P="5" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="19" FEN="rnbqk2r/ppppppbp/5np1/8/1PP5/5N2/P2PPPPP/RNBQKB1R w KQkq - 1 4" White="true" Move="4" Ply50="1" CastleWK="true" CastleWQ="true" CastleBK="true" CastleBQ="true">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="7" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="4" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="2" R="8" P="3" W="0" C="0" />
          <S F="3" R="1" P="4" W="1" C="0" />
          <S F="3" R="4" P="1" W="1" C="0" />
          <S F="3" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="7" P="1" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="1" P="232" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="5" R="8" P="232" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="7" R="2" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="4" W="0" C="0" />
          <S F="8" R="1" P="5" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
          <S F="8" R="8" P="5" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="20" Ply="7" FromFile="3" FromRank="1" ToFile="2" ToRank="2">
      <FromPos>
        <Pos Seq="21" FEN="rnbqk2r/ppppppbp/5np1/8/1PP5/5N2/P2PPPPP/RNBQKB1R w KQkq - 1 4" White="true" Move="4" Ply50="1" CastleWK="true" CastleWQ="true" CastleBK="true" CastleBQ="true">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="7" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="4" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="2" R="8" P="3" W="0" C="0" />
          <S F="3" R="1" P="4" W="1" C="0" />
          <S F="3" R="4" P="1" W="1" C="0" />
          <S F="3" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="7" P="1" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="1" P="232" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="5" R="8" P="232" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="7" R="2" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="4" W="0" C="0" />
          <S F="8" R="1" P="5" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
          <S F="8" R="8" P="5" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="22" FEN="rnbqk2r/ppppppbp/5np1/8/1PP5/5N2/PB1PPPPP/RN1QKB1R b KQkq - 2 4" White="false" Move="4" Ply50="2" CastleWK="true" CastleWQ="true" CastleBK="true" CastleBQ="true">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="7" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="2" P="4" W="1" C="1" />
          <S F="2" R="4" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="2" R="8" P="3" W="0" C="0" />
          <S F="3" R="4" P="1" W="1" C="0" />
          <S F="3" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="7" P="1" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="1" P="232" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="5" R="8" P="232" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="7" R="2" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="4" W="0" C="0" />
          <S F="8" R="1" P="5" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
          <S F="8" R="8" P="5" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="23" Ply="8" FromFile="5" FromRank="8" ToFile="7" ToRank="8">
      <FromPos>
        <Pos Seq="24" FEN="rnbqk2r/ppppppbp/5np1/8/1PP5/5N2/PB1PPPPP/RN1QKB1R b KQkq - 2 4" White="false" Move="4" Ply50="2" CastleWK="true" CastleWQ="true" CastleBK="true" CastleBQ="true">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="7" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="2" P="4" W="1" C="1" />
          <S F="2" R="4" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="2" R="8" P="3" W="0" C="0" />
          <S F="3" R="4" P="1" W="1" C="0" />
          <S F="3" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="7" P="1" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="1" P="232" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="5" R="8" P="232" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="7" R="2" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="4" W="0" C="0" />
          <S F="8" R="1" P="5" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
          <S F="8" R="8" P="5" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="25" FEN="rnbq1rk1/ppppppbp/5np1/8/1PP5/5N2/PB1PPPPP/RN1QKB1R w KQ - 3 5" White="true" Move="5" Ply50="3" CastleWK="true" CastleWQ="true" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="7" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="2" P="4" W="1" C="1" />
          <S F="2" R="4" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="2" R="8" P="3" W="0" C="0" />
          <S F="3" R="4" P="1" W="1" C="0" />
          <S F="3" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="7" P="1" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="1" P="232" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="2" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="4" W="0" C="0" />
          <S F="7" R="8" P="232" W="0" C="0" />
          <S F="8" R="1" P="5" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="26" Ply="9" FromFile="7" FromRank="2" ToFile="7" ToRank="3">
      <FromPos>
        <Pos Seq="27" FEN="rnbq1rk1/ppppppbp/5np1/8/1PP5/5N2/PB1PPPPP/RN1QKB1R w KQ - 3 5" White="true" Move="5" Ply50="3" CastleWK="true" CastleWQ="true" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="7" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="2" P="4" W="1" C="1" />
          <S F="2" R="4" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="2" R="8" P="3" W="0" C="0" />
          <S F="3" R="4" P="1" W="1" C="0" />
          <S F="3" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="7" P="1" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="1" P="232" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="2" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="4" W="0" C="0" />
          <S F="7" R="8" P="232" W="0" C="0" />
          <S F="8" R="1" P="5" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="28" FEN="rnbq1rk1/ppppppbp/5np1/8/1PP5/5NP1/PB1PPP1P/RN1QKB1R b KQ - 0 5" White="false" Move="5" Ply50="0" CastleWK="true" CastleWQ="true" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="7" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="2" P="4" W="1" C="1" />
          <S F="2" R="4" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="2" R="8" P="3" W="0" C="0" />
          <S F="3" R="4" P="1" W="1" C="0" />
          <S F="3" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="7" P="1" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="1" P="232" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="4" W="0" C="0" />
          <S F="7" R="8" P="232" W="0" C="0" />
          <S F="8" R="1" P="5" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="29" Ply="10" FromFile="1" FromRank="7" ToFile="1" ToRank="5">
      <FromPos>
        <Pos Seq="30" FEN="rnbq1rk1/ppppppbp/5np1/8/1PP5/5NP1/PB1PPP1P/RN1QKB1R b KQ - 0 5" White="false" Move="5" Ply50="0" CastleWK="true" CastleWQ="true" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="7" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="2" P="4" W="1" C="1" />
          <S F="2" R="4" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="2" R="8" P="3" W="0" C="0" />
          <S F="3" R="4" P="1" W="1" C="0" />
          <S F="3" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="7" P="1" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="1" P="232" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="4" W="0" C="0" />
          <S F="7" R="8" P="232" W="0" C="0" />
          <S F="8" R="1" P="5" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="31" FEN="rnbq1rk1/1pppppbp/5np1/p7/1PP5/5NP1/PB1PPP1P/RN1QKB1R w KQ a6 0 6" White="true" EP="1" Move="6" Ply50="0" CastleWK="true" CastleWQ="true" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="1" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="2" P="4" W="1" C="1" />
          <S F="2" R="4" P="1" W="1" C="1" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="2" R="8" P="3" W="0" C="0" />
          <S F="3" R="4" P="1" W="1" C="0" />
          <S F="3" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="7" P="1" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="1" P="232" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="4" W="0" C="0" />
          <S F="7" R="8" P="232" W="0" C="0" />
          <S F="8" R="1" P="5" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="32" Ply="11" FromFile="2" FromRank="4" ToFile="2" ToRank="5">
      <FromPos>
        <Pos Seq="33" FEN="rnbq1rk1/1pppppbp/5np1/p7/1PP5/5NP1/PB1PPP1P/RN1QKB1R w KQ a6 0 6" White="true" EP="1" Move="6" Ply50="0" CastleWK="true" CastleWQ="true" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="1" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="2" P="4" W="1" C="1" />
          <S F="2" R="4" P="1" W="1" C="1" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="2" R="8" P="3" W="0" C="0" />
          <S F="3" R="4" P="1" W="1" C="0" />
          <S F="3" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="7" P="1" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="1" P="232" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="4" W="0" C="0" />
          <S F="7" R="8" P="232" W="0" C="0" />
          <S F="8" R="1" P="5" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="34" FEN="rnbq1rk1/1pppppbp/5np1/pP6/2P5/5NP1/PB1PPP1P/RN1QKB1R b KQ - 0 6" White="false" Move="6" Ply50="0" CastleWK="true" CastleWQ="true" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="2" P="4" W="1" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="2" R="8" P="3" W="0" C="0" />
          <S F="3" R="4" P="1" W="1" C="0" />
          <S F="3" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="7" P="1" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="1" P="232" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="4" W="0" C="0" />
          <S F="7" R="8" P="232" W="0" C="0" />
          <S F="8" R="1" P="5" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="35" Ply="12" FromFile="4" FromRank="7" ToFile="4" ToRank="5">
      <FromPos>
        <Pos Seq="36" FEN="rnbq1rk1/1pppppbp/5np1/pP6/2P5/5NP1/PB1PPP1P/RN1QKB1R b KQ - 0 6" White="false" Move="6" Ply50="0" CastleWK="true" CastleWQ="true" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="2" P="4" W="1" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="2" R="8" P="3" W="0" C="0" />
          <S F="3" R="4" P="1" W="1" C="0" />
          <S F="3" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="7" P="1" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="1" P="232" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="4" W="0" C="0" />
          <S F="7" R="8" P="232" W="0" C="0" />
          <S F="8" R="1" P="5" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="37" FEN="rnbq1rk1/1pp1ppbp/5np1/pP1p4/2P5/5NP1/PB1PPP1P/RN1QKB1R w KQ d6 0 7" White="true" EP="4" Move="7" Ply50="0" CastleWK="true" CastleWQ="true" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="2" P="4" W="1" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="2" R="8" P="3" W="0" C="0" />
          <S F="3" R="4" P="1" W="1" C="1" />
          <S F="3" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="5" P="1" W="0" C="1" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="1" P="232" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="4" W="0" C="0" />
          <S F="7" R="8" P="232" W="0" C="0" />
          <S F="8" R="1" P="5" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="38" Ply="13" FromFile="6" FromRank="1" ToFile="7" ToRank="2">
      <FromPos>
        <Pos Seq="39" FEN="rnbq1rk1/1pp1ppbp/5np1/pP1p4/2P5/5NP1/PB1PPP1P/RN1QKB1R w KQ d6 0 7" White="true" EP="4" Move="7" Ply50="0" CastleWK="true" CastleWQ="true" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="2" P="4" W="1" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="2" R="8" P="3" W="0" C="0" />
          <S F="3" R="4" P="1" W="1" C="1" />
          <S F="3" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="5" P="1" W="0" C="1" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="1" P="232" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="4" W="0" C="0" />
          <S F="7" R="8" P="232" W="0" C="0" />
          <S F="8" R="1" P="5" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="40" FEN="rnbq1rk1/1pp1ppbp/5np1/pP1p4/2P5/5NP1/PB1PPPBP/RN1QK2R b KQ - 1 7" White="false" Move="7" Ply50="1" CastleWK="true" CastleWQ="true" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="2" P="4" W="1" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="2" R="8" P="3" W="0" C="0" />
          <S F="3" R="4" P="1" W="1" C="1" />
          <S F="3" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="5" P="1" W="0" C="1" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="1" P="232" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="2" P="4" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="4" W="0" C="0" />
          <S F="7" R="8" P="232" W="0" C="0" />
          <S F="8" R="1" P="5" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="41" Ply="14" FromFile="3" FromRank="7" ToFile="3" ToRank="5">
      <FromPos>
        <Pos Seq="42" FEN="rnbq1rk1/1pp1ppbp/5np1/pP1p4/2P5/5NP1/PB1PPPBP/RN1QK2R b KQ - 1 7" White="false" Move="7" Ply50="1" CastleWK="true" CastleWQ="true" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="2" P="4" W="1" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="2" R="8" P="3" W="0" C="0" />
          <S F="3" R="4" P="1" W="1" C="1" />
          <S F="3" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="5" P="1" W="0" C="1" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="1" P="232" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="2" P="4" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="4" W="0" C="0" />
          <S F="7" R="8" P="232" W="0" C="0" />
          <S F="8" R="1" P="5" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="43" FEN="rnbq1rk1/1p2ppbp/5np1/pPpp4/2P5/5NP1/PB1PPPBP/RN1QK2R w KQ c6 0 8" White="true" EP="3" Move="8" Ply50="0" CastleWK="true" CastleWQ="true" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="2" P="4" W="1" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="2" R="8" P="3" W="0" C="0" />
          <S F="3" R="4" P="1" W="1" C="1" />
          <S F="3" R="5" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="5" P="1" W="0" C="1" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="1" P="232" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="2" P="4" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="4" W="0" C="0" />
          <S F="7" R="8" P="232" W="0" C="0" />
          <S F="8" R="1" P="5" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="44" Ply="15" FromFile="3" FromRank="4" ToFile="4" ToRank="5">
      <FromPos>
        <Pos Seq="45" FEN="rnbq1rk1/1p2ppbp/5np1/pPpp4/2P5/5NP1/PB1PPPBP/RN1QK2R w KQ c6 0 8" White="true" EP="3" Move="8" Ply50="0" CastleWK="true" CastleWQ="true" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="2" P="4" W="1" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="2" R="8" P="3" W="0" C="0" />
          <S F="3" R="4" P="1" W="1" C="1" />
          <S F="3" R="5" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="5" P="1" W="0" C="1" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="1" P="232" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="2" P="4" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="4" W="0" C="0" />
          <S F="7" R="8" P="232" W="0" C="0" />
          <S F="8" R="1" P="5" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="46" FEN="rnbq1rk1/1p2ppbp/5np1/pPpP4/8/5NP1/PB1PPPBP/RN1QK2R b KQ - 0 8" White="false" Move="8" Ply50="0" CastleWK="true" CastleWQ="true" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="2" P="4" W="1" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="2" R="8" P="3" W="0" C="0" />
          <S F="3" R="5" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="5" P="1" W="1" C="0" />
          <S F="4" R="8" P="9" W="0" C="1" />
          <S F="5" R="1" P="232" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="1" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="2" P="4" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="4" W="0" C="0" />
          <S F="7" R="8" P="232" W="0" C="0" />
          <S F="8" R="1" P="5" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="47" Ply="16" FromFile="6" FromRank="6" ToFile="4" ToRank="5">
      <FromPos>
        <Pos Seq="48" FEN="rnbq1rk1/1p2ppbp/5np1/pPpP4/8/5NP1/PB1PPPBP/RN1QK2R b KQ - 0 8" White="false" Move="8" Ply50="0" CastleWK="true" CastleWQ="true" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="2" P="4" W="1" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="2" R="8" P="3" W="0" C="0" />
          <S F="3" R="5" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="5" P="1" W="1" C="0" />
          <S F="4" R="8" P="9" W="0" C="1" />
          <S F="5" R="1" P="232" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="1" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="2" P="4" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="4" W="0" C="0" />
          <S F="7" R="8" P="232" W="0" C="0" />
          <S F="8" R="1" P="5" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="49" FEN="rnbq1rk1/1p2ppbp/6p1/pPpn4/8/5NP1/PB1PPPBP/RN1QK2R w KQ - 0 9" White="true" Move="9" Ply50="0" CastleWK="true" CastleWQ="true" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="2" P="4" W="1" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="2" R="8" P="3" W="0" C="0" />
          <S F="3" R="5" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="5" P="3" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="1" P="232" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="2" P="4" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="4" W="0" C="1" />
          <S F="7" R="8" P="232" W="0" C="0" />
          <S F="8" R="1" P="5" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="50" Ply="17" FromFile="2" FromRank="2" ToFile="7" ToRank="7">
      <FromPos>
        <Pos Seq="51" FEN="rnbq1rk1/1p2ppbp/6p1/pPpn4/8/5NP1/PB1PPPBP/RN1QK2R w KQ - 0 9" White="true" Move="9" Ply50="0" CastleWK="true" CastleWQ="true" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="2" P="4" W="1" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="2" R="8" P="3" W="0" C="0" />
          <S F="3" R="5" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="5" P="3" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="1" P="232" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="2" P="4" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="4" W="0" C="1" />
          <S F="7" R="8" P="232" W="0" C="0" />
          <S F="8" R="1" P="5" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="52" FEN="rnbq1rk1/1p2ppBp/6p1/pPpn4/8/5NP1/P2PPPBP/RN1QK2R b KQ - 0 9" White="false" Move="9" Ply50="0" CastleWK="true" CastleWQ="true" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="2" R="8" P="3" W="0" C="0" />
          <S F="3" R="5" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="5" P="3" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="1" P="232" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="2" P="4" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="4" W="1" C="1" />
          <S F="7" R="8" P="232" W="0" C="1" />
          <S F="8" R="1" P="5" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="53" Ply="18" FromFile="7" FromRank="8" ToFile="7" ToRank="7">
      <FromPos>
        <Pos Seq="54" FEN="rnbq1rk1/1p2ppBp/6p1/pPpn4/8/5NP1/P2PPPBP/RN1QK2R b KQ - 0 9" White="false" Move="9" Ply50="0" CastleWK="true" CastleWQ="true" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="2" R="8" P="3" W="0" C="0" />
          <S F="3" R="5" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="5" P="3" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="1" P="232" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="2" P="4" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="4" W="1" C="1" />
          <S F="7" R="8" P="232" W="0" C="1" />
          <S F="8" R="1" P="5" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="55" FEN="rnbq1r2/1p2ppkp/6p1/pPpn4/8/5NP1/P2PPPBP/RN1QK2R w KQ - 0 10" White="true" Move="10" Ply50="0" CastleWK="true" CastleWQ="true" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="2" R="8" P="3" W="0" C="0" />
          <S F="3" R="5" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="5" P="3" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="1" P="232" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="2" P="4" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="1" P="5" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="56" Ply="19" FromFile="5" FromRank="1" ToFile="7" ToRank="1">
      <FromPos>
        <Pos Seq="57" FEN="rnbq1r2/1p2ppkp/6p1/pPpn4/8/5NP1/P2PPPBP/RN1QK2R w KQ - 0 10" White="true" Move="10" Ply50="0" CastleWK="true" CastleWQ="true" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="2" R="8" P="3" W="0" C="0" />
          <S F="3" R="5" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="5" P="3" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="1" P="232" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="2" P="4" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="1" P="5" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="58" FEN="rnbq1r2/1p2ppkp/6p1/pPpn4/8/5NP1/P2PPPBP/RN1Q1RK1 b - - 1 10" White="false" Move="10" Ply50="1" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="2" R="8" P="3" W="0" C="0" />
          <S F="3" R="5" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="5" P="3" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="1" P="5" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="59" Ply="20" FromFile="2" FromRank="8" ToFile="4" ToRank="7">
      <FromPos>
        <Pos Seq="60" FEN="rnbq1r2/1p2ppkp/6p1/pPpn4/8/5NP1/P2PPPBP/RN1Q1RK1 b - - 1 10" White="false" Move="10" Ply50="1" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="2" R="8" P="3" W="0" C="0" />
          <S F="3" R="5" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="5" P="3" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="1" P="5" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="61" FEN="r1bq1r2/1p1nppkp/6p1/pPpn4/8/5NP1/P2PPPBP/RN1Q1RK1 w - - 2 11" White="true" Move="11" Ply50="2" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="5" P="3" W="0" C="0" />
          <S F="4" R="7" P="3" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="1" P="5" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="62" Ply="21" FromFile="4" FromRank="2" ToFile="4" ToRank="4">
      <FromPos>
        <Pos Seq="63" FEN="r1bq1r2/1p1nppkp/6p1/pPpn4/8/5NP1/P2PPPBP/RN1Q1RK1 w - - 2 11" White="true" Move="11" Ply50="2" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="2" P="1" W="1" C="0" />
          <S F="4" R="5" P="3" W="0" C="0" />
          <S F="4" R="7" P="3" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="1" P="5" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="64" FEN="r1bq1r2/1p1nppkp/6p1/pPpn4/3P4/5NP1/P3PPBP/RN1Q1RK1 b - d3 0 11" White="false" EP="4" Move="11" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="1" W="0" C="1" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="4" P="1" W="1" C="1" />
          <S F="4" R="5" P="3" W="0" C="0" />
          <S F="4" R="7" P="3" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="1" P="5" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="65" Ply="22" FromFile="3" FromRank="5" ToFile="4" ToRank="4">
      <FromPos>
        <Pos Seq="66" FEN="r1bq1r2/1p1nppkp/6p1/pPpn4/3P4/5NP1/P3PPBP/RN1Q1RK1 b - d3 0 11" White="false" EP="4" Move="11" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="1" W="0" C="1" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="0" />
          <S F="4" R="4" P="1" W="1" C="1" />
          <S F="4" R="5" P="3" W="0" C="0" />
          <S F="4" R="7" P="3" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="1" P="5" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="67" FEN="r1bq1r2/1p1nppkp/6p1/pP1n4/3p4/5NP1/P3PPBP/RN1Q1RK1 w - - 0 12" White="true" Move="12" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="1" />
          <S F="4" R="4" P="1" W="0" C="0" />
          <S F="4" R="5" P="3" W="0" C="0" />
          <S F="4" R="7" P="3" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="1" P="5" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="1" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="68" Ply="23" FromFile="4" FromRank="1" ToFile="4" ToRank="4">
      <FromPos>
        <Pos Seq="69" FEN="r1bq1r2/1p1nppkp/6p1/pP1n4/3p4/5NP1/P3PPBP/RN1Q1RK1 w - - 0 12" White="true" Move="12" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="9" W="1" C="1" />
          <S F="4" R="4" P="1" W="0" C="0" />
          <S F="4" R="5" P="3" W="0" C="0" />
          <S F="4" R="7" P="3" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="1" P="5" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="1" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="70" FEN="r1bq1r2/1p1nppkp/6p1/pP1n4/3Q4/5NP1/P3PPBP/RN3RK1 b - - 0 12" White="false" Move="12" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="4" P="9" W="1" C="2" />
          <S F="4" R="5" P="3" W="0" C="0" />
          <S F="4" R="7" P="3" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="1" P="5" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="71" Ply="24" FromFile="4" FromRank="7" ToFile="6" ToRank="6">
      <FromPos>
        <Pos Seq="72" FEN="r1bq1r2/1p1nppkp/6p1/pP1n4/3Q4/5NP1/P3PPBP/RN3RK1 b - - 0 12" White="false" Move="12" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="4" P="9" W="1" C="2" />
          <S F="4" R="5" P="3" W="0" C="0" />
          <S F="4" R="7" P="3" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="1" P="5" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="73" FEN="r1bq1r2/1p2ppkp/5np1/pP1n4/3Q4/5NP1/P3PPBP/RN3RK1 w - - 1 13" White="true" Move="13" Ply50="1" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="4" P="9" W="1" C="2" />
          <S F="4" R="5" P="3" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="1" P="5" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="74" Ply="25" FromFile="2" FromRank="1" ToFile="1" ToRank="3">
      <FromPos>
        <Pos Seq="75" FEN="r1bq1r2/1p2ppkp/5np1/pP1n4/3Q4/5NP1/P3PPBP/RN3RK1 w - - 1 13" White="true" Move="13" Ply50="1" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="1" P="3" W="1" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="4" P="9" W="1" C="2" />
          <S F="4" R="5" P="3" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="1" P="5" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="76" FEN="r1bq1r2/1p2ppkp/5np1/pP1n4/3Q4/N4NP1/P3PPBP/R4RK1 b - - 2 13" White="false" Move="13" Ply50="2" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="4" P="9" W="1" C="2" />
          <S F="4" R="5" P="3" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="1" P="5" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="77" Ply="26" FromFile="4" FromRank="5" ToFile="2" ToRank="6">
      <FromPos>
        <Pos Seq="78" FEN="r1bq1r2/1p2ppkp/5np1/pP1n4/3Q4/N4NP1/P3PPBP/R4RK1 b - - 2 13" White="false" Move="13" Ply50="2" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="4" P="9" W="1" C="2" />
          <S F="4" R="5" P="3" W="0" C="0" />
          <S F="4" R="8" P="9" W="0" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="1" P="5" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="79" FEN="r1bq1r2/1p2ppkp/1n3np1/pP6/3Q4/N4NP1/P3PPBP/R4RK1 w - - 3 14" White="true" Move="14" Ply50="3" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="4" P="9" W="1" C="3" />
          <S F="4" R="8" P="9" W="0" C="1" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="1" P="5" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="80" Ply="27" FromFile="6" FromRank="1" ToFile="4" ToRank="1">
      <FromPos>
        <Pos Seq="81" FEN="r1bq1r2/1p2ppkp/1n3np1/pP6/3Q4/N4NP1/P3PPBP/R4RK1 w - - 3 14" White="true" Move="14" Ply50="3" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="4" P="9" W="1" C="3" />
          <S F="4" R="8" P="9" W="0" C="1" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="1" P="5" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="82" FEN="r1bq1r2/1p2ppkp/1n3np1/pP6/3Q4/N4NP1/P3PPBP/R2R2K1 b - - 4 14" White="false" Move="14" Ply50="4" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="5" W="1" C="0" />
          <S F="4" R="4" P="9" W="1" C="3" />
          <S F="4" R="8" P="9" W="0" C="1" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="83" Ply="28" FromFile="4" FromRank="8" ToFile="4" ToRank="4">
      <FromPos>
        <Pos Seq="84" FEN="r1bq1r2/1p2ppkp/1n3np1/pP6/3Q4/N4NP1/P3PPBP/R2R2K1 b - - 4 14" White="false" Move="14" Ply50="4" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="5" W="1" C="0" />
          <S F="4" R="4" P="9" W="1" C="3" />
          <S F="4" R="8" P="9" W="0" C="1" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="85" FEN="r1b2r2/1p2ppkp/1n3np1/pP6/3q4/N4NP1/P3PPBP/R2R2K1 w - - 0 15" White="true" Move="15" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="5" W="1" C="1" />
          <S F="4" R="4" P="9" W="0" C="3" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="1" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="86" Ply="29" FromFile="6" FromRank="3" ToFile="4" ToRank="4">
      <FromPos>
        <Pos Seq="87" FEN="r1b2r2/1p2ppkp/1n3np1/pP6/3q4/N4NP1/P3PPBP/R2R2K1 w - - 0 15" White="true" Move="15" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="5" W="1" C="1" />
          <S F="4" R="4" P="9" W="0" C="3" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="1" C="1" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="88" FEN="r1b2r2/1p2ppkp/1n3np1/pP6/3N4/N5P1/P3PPBP/R2R2K1 b - - 0 15" White="false" Move="15" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="5" W="1" C="0" />
          <S F="4" R="4" P="3" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="1" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="89" Ply="30" FromFile="6" FromRank="8" ToFile="4" ToRank="8">
      <FromPos>
        <Pos Seq="90" FEN="r1b2r2/1p2ppkp/1n3np1/pP6/3N4/N5P1/P3PPBP/R2R2K1 b - - 0 15" White="false" Move="15" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="5" W="1" C="0" />
          <S F="4" R="4" P="3" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="6" R="8" P="5" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="1" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="91" FEN="r1br4/1p2ppkp/1n3np1/pP6/3N4/N5P1/P3PPBP/R2R2K1 w - - 1 16" White="true" Move="16" Ply50="1" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="5" W="1" C="0" />
          <S F="4" R="4" P="3" W="1" C="0" />
          <S F="4" R="8" P="5" W="0" C="1" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="1" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="92" Ply="31" FromFile="4" FromRank="4" ToFile="2" ToRank="3">
      <FromPos>
        <Pos Seq="93" FEN="r1br4/1p2ppkp/1n3np1/pP6/3N4/N5P1/P3PPBP/R2R2K1 w - - 1 16" White="true" Move="16" Ply50="1" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="5" W="1" C="0" />
          <S F="4" R="4" P="3" W="1" C="0" />
          <S F="4" R="8" P="5" W="0" C="1" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="1" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="94" FEN="r1br4/1p2ppkp/1n3np1/pP6/8/NN4P1/P3PPBP/R2R2K1 b - - 2 16" White="false" Move="16" Ply50="2" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="3" P="3" W="1" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="5" W="1" C="1" />
          <S F="4" R="8" P="5" W="0" C="1" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="1" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="95" Ply="32" FromFile="4" FromRank="8" ToFile="4" ToRank="1">
      <FromPos>
        <Pos Seq="96" FEN="r1br4/1p2ppkp/1n3np1/pP6/8/NN4P1/P3PPBP/R2R2K1 b - - 2 16" White="false" Move="16" Ply50="2" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="0" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="3" P="3" W="1" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="5" W="1" C="1" />
          <S F="4" R="8" P="5" W="0" C="1" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="1" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="97" FEN="r1b5/1p2ppkp/1n3np1/pP6/8/NN4P1/P3PPBP/R2r2K1 w - - 0 17" White="true" Move="17" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="1" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="3" P="3" W="1" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="5" W="0" C="2" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="98" Ply="33" FromFile="1" FromRank="1" ToFile="4" ToRank="1">
      <FromPos>
        <Pos Seq="99" FEN="r1b5/1p2ppkp/1n3np1/pP6/8/NN4P1/P3PPBP/R2r2K1 w - - 0 17" White="true" Move="17" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="1" P="5" W="1" C="1" />
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="3" P="3" W="1" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="5" W="0" C="2" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="100" FEN="r1b5/1p2ppkp/1n3np1/pP6/8/NN4P1/P3PPBP/3R2K1 b - - 0 17" White="false" Move="17" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="3" P="3" W="1" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="5" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="1" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="101" Ply="34" FromFile="6" FromRank="6" ToFile="5" ToRank="8">
      <FromPos>
        <Pos Seq="102" FEN="r1b5/1p2ppkp/1n3np1/pP6/8/NN4P1/P3PPBP/3R2K1 b - - 0 17" White="false" Move="17" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="3" P="3" W="1" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="5" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="6" P="3" W="0" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="1" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="103" FEN="r1b1n3/1p2ppkp/1n4p1/pP6/8/NN4P1/P3PPBP/3R2K1 w - - 1 18" White="true" Move="18" Ply50="1" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="3" P="3" W="1" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="5" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="5" R="8" P="3" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="1" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="104" Ply="35" FromFile="4" FromRank="1" ToFile="4" ToRank="8">
      <FromPos>
        <Pos Seq="105" FEN="r1b1n3/1p2ppkp/1n4p1/pP6/8/NN4P1/P3PPBP/3R2K1 w - - 1 18" White="true" Move="18" Ply50="1" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="3" P="3" W="1" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="1" P="5" W="1" C="0" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="5" R="8" P="3" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="1" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="106" FEN="r1bRn3/1p2ppkp/1n4p1/pP6/8/NN4P1/P3PPBP/6K1 b - - 2 18" White="false" Move="18" Ply50="2" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="3" P="3" W="1" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="8" P="5" W="1" C="2" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="5" R="8" P="3" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="1" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="107" Ply="36" FromFile="1" FromRank="5" ToFile="1" ToRank="4">
      <FromPos>
        <Pos Seq="108" FEN="r1bRn3/1p2ppkp/1n4p1/pP6/8/NN4P1/P3PPBP/6K1 b - - 2 18" White="false" Move="18" Ply50="2" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="5" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="3" P="3" W="1" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="8" P="5" W="1" C="2" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="5" R="8" P="3" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="1" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="109" FEN="r1bRn3/1p2ppkp/1n4p1/1P6/p7/NN4P1/P3PPBP/6K1 w - - 0 19" White="true" Move="19" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="1" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="3" P="3" W="1" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="8" P="5" W="1" C="2" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="5" R="8" P="3" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="1" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="110" Ply="37" FromFile="2" FromRank="3" ToFile="3" ToRank="5">
      <FromPos>
        <Pos Seq="111" FEN="r1bRn3/1p2ppkp/1n4p1/1P6/p7/NN4P1/P3PPBP/6K1 w - - 0 19" White="true" Move="19" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="1" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="3" P="3" W="1" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="8" P="5" W="1" C="2" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="5" R="8" P="3" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="1" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="112" FEN="r1bRn3/1p2ppkp/1n4p1/1PN5/p7/N5P1/P3PPBP/6K1 b - - 1 19" White="false" Move="19" Ply50="1" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="8" P="5" W="1" C="2" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="5" R="8" P="3" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="1" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="113" Ply="38" FromFile="5" FromRank="8" ToFile="4" ToRank="6">
      <FromPos>
        <Pos Seq="114" FEN="r1bRn3/1p2ppkp/1n4p1/1PN5/p7/N5P1/P3PPBP/6K1 b - - 1 19" White="false" Move="19" Ply50="1" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="8" P="5" W="1" C="2" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="5" R="8" P="3" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="1" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="115" FEN="r1bR4/1p2ppkp/1n1n2p1/1PN5/p7/N5P1/P3PPBP/6K1 w - - 2 20" White="true" Move="20" Ply50="2" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="6" P="3" W="0" C="1" />
          <S F="4" R="8" P="5" W="1" C="2" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="1" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="116" Ply="39" FromFile="5" FromRank="2" ToFile="5" ToRank="4">
      <FromPos>
        <Pos Seq="117" FEN="r1bR4/1p2ppkp/1n1n2p1/1PN5/p7/N5P1/P3PPBP/6K1 w - - 2 20" White="true" Move="20" Ply50="2" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="6" P="3" W="0" C="1" />
          <S F="4" R="8" P="5" W="1" C="2" />
          <S F="5" R="2" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="1" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="118" FEN="r1bR4/1p2ppkp/1n1n2p1/1PN5/p3P3/N5P1/P4PBP/6K1 b - e3 0 20" White="false" EP="5" Move="20" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="6" P="3" W="0" C="2" />
          <S F="4" R="8" P="5" W="1" C="2" />
          <S F="5" R="4" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="119" Ply="40" FromFile="1" FromRank="8" ToFile="1" ToRank="5">
      <FromPos>
        <Pos Seq="120" FEN="r1bR4/1p2ppkp/1n1n2p1/1PN5/p3P3/N5P1/P4PBP/6K1 b - e3 0 20" White="false" EP="5" Move="20" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="6" P="3" W="0" C="2" />
          <S F="4" R="8" P="5" W="1" C="2" />
          <S F="5" R="4" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="121" FEN="2bR4/1p2ppkp/1n1n2p1/rPN5/p3P3/N5P1/P4PBP/6K1 w - - 1 21" White="true" Move="21" Ply50="1" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="5" P="5" W="0" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="6" P="3" W="0" C="2" />
          <S F="4" R="8" P="5" W="1" C="2" />
          <S F="5" R="4" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="122" Ply="41" FromFile="7" FromRank="2" ToFile="6" ToRank="1">
      <FromPos>
        <Pos Seq="123" FEN="2bR4/1p2ppkp/1n1n2p1/rPN5/p3P3/N5P1/P4PBP/6K1 w - - 1 21" White="true" Move="21" Ply50="1" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="5" P="5" W="0" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="6" P="3" W="0" C="2" />
          <S F="4" R="8" P="5" W="1" C="2" />
          <S F="5" R="4" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="2" P="4" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="124" FEN="2bR4/1p2ppkp/1n1n2p1/rPN5/p3P3/N5P1/P4P1P/5BK1 b - - 2 21" White="false" Move="21" Ply50="2" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="5" P="5" W="0" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="6" P="3" W="0" C="2" />
          <S F="4" R="8" P="5" W="1" C="2" />
          <S F="5" R="4" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="125" Ply="42" FromFile="6" FromRank="7" ToFile="6" ToRank="5">
      <FromPos>
        <Pos Seq="126" FEN="2bR4/1p2ppkp/1n1n2p1/rPN5/p3P3/N5P1/P4P1P/5BK1 b - - 2 21" White="false" Move="21" Ply50="2" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="5" P="5" W="0" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="6" P="3" W="0" C="2" />
          <S F="4" R="8" P="5" W="1" C="2" />
          <S F="5" R="4" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="7" P="1" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="127" FEN="2bR4/1p2p1kp/1n1n2p1/rPN2p2/p3P3/N5P1/P4P1P/5BK1 w - f6 0 22" White="true" EP="6" Move="22" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="5" P="5" W="0" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="6" P="3" W="0" C="2" />
          <S F="4" R="8" P="5" W="1" C="2" />
          <S F="5" R="4" P="1" W="1" C="1" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="1" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="128" Ply="43" FromFile="5" FromRank="4" ToFile="5" ToRank="5">
      <FromPos>
        <Pos Seq="129" FEN="2bR4/1p2p1kp/1n1n2p1/rPN2p2/p3P3/N5P1/P4P1P/5BK1 w - f6 0 22" White="true" EP="6" Move="22" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="5" P="5" W="0" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="6" P="3" W="0" C="2" />
          <S F="4" R="8" P="5" W="1" C="2" />
          <S F="5" R="4" P="1" W="1" C="1" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="1" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="130" FEN="2bR4/1p2p1kp/1n1n2p1/rPN1Pp2/p7/N5P1/P4P1P/5BK1 b - - 0 22" White="false" Move="22" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="5" P="5" W="0" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="6" P="3" W="0" C="1" />
          <S F="4" R="8" P="5" W="1" C="2" />
          <S F="5" R="5" P="1" W="1" C="1" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="131" Ply="44" FromFile="4" FromRank="6" ToFile="6" ToRank="7">
      <FromPos>
        <Pos Seq="132" FEN="2bR4/1p2p1kp/1n1n2p1/rPN1Pp2/p7/N5P1/P4P1P/5BK1 b - - 0 22" White="false" Move="22" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="5" P="5" W="0" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="6" P="3" W="0" C="1" />
          <S F="4" R="8" P="5" W="1" C="2" />
          <S F="5" R="5" P="1" W="1" C="1" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="133" FEN="2bR4/1p2pnkp/1n4p1/rPN1Pp2/p7/N5P1/P4P1P/5BK1 w - - 1 23" White="true" Move="23" Ply50="1" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="5" P="5" W="0" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="8" P="5" W="1" C="1" />
          <S F="5" R="5" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="6" R="7" P="3" W="0" C="2" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="134" Ply="45" FromFile="4" FromRank="8" ToFile="5" ToRank="8">
      <FromPos>
        <Pos Seq="135" FEN="2bR4/1p2pnkp/1n4p1/rPN1Pp2/p7/N5P1/P4P1P/5BK1 w - - 1 23" White="true" Move="23" Ply50="1" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="5" P="5" W="0" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="8" P="5" W="1" C="1" />
          <S F="5" R="5" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="6" R="7" P="3" W="0" C="2" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="136" FEN="2b1R3/1p2pnkp/1n4p1/rPN1Pp2/p7/N5P1/P4P1P/5BK1 b - - 2 23" White="false" Move="23" Ply50="2" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="5" P="5" W="0" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="5" R="5" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="5" R="8" P="5" W="1" C="2" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="6" R="7" P="3" W="0" C="1" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="137" Ply="46" FromFile="6" FromRank="7" ToFile="5" ToRank="5">
      <FromPos>
        <Pos Seq="138" FEN="2b1R3/1p2pnkp/1n4p1/rPN1Pp2/p7/N5P1/P4P1P/5BK1 b - - 2 23" White="false" Move="23" Ply50="2" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="5" P="5" W="0" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="5" R="5" P="1" W="1" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="5" R="8" P="5" W="1" C="2" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="6" R="7" P="3" W="0" C="1" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="139" FEN="2b1R3/1p2p1kp/1n4p1/rPN1np2/p7/N5P1/P4P1P/5BK1 w - - 0 24" White="true" Move="24" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="5" P="5" W="0" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="5" R="5" P="3" W="0" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="5" R="8" P="5" W="1" C="2" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="140" Ply="47" FromFile="5" FromRank="8" ToFile="5" ToRank="7">
      <FromPos>
        <Pos Seq="141" FEN="2b1R3/1p2p1kp/1n4p1/rPN1np2/p7/N5P1/P4P1P/5BK1 w - - 0 24" White="true" Move="24" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="5" P="5" W="0" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="5" R="5" P="3" W="0" C="0" />
          <S F="5" R="7" P="1" W="0" C="0" />
          <S F="5" R="8" P="5" W="1" C="2" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="142" FEN="2b5/1p2R1kp/1n4p1/rPN1np2/p7/N5P1/P4P1P/5BK1 b - - 0 24" White="false" Move="24" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="5" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="5" R="5" P="3" W="0" C="0" />
          <S F="5" R="7" P="5" W="1" C="3" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="143" Ply="48" FromFile="7" FromRank="7" ToFile="6" ToRank="6">
      <FromPos>
        <Pos Seq="144" FEN="2b5/1p2R1kp/1n4p1/rPN1np2/p7/N5P1/P4P1P/5BK1 b - - 0 24" White="false" Move="24" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="5" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="5" R="5" P="3" W="0" C="0" />
          <S F="5" R="7" P="5" W="1" C="3" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="145" FEN="2b5/1p2R2p/1n3kp1/rPN1np2/p7/N5P1/P4P1P/5BK1 w - - 1 25" White="true" Move="25" Ply50="1" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="5" P="5" W="0" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="5" R="5" P="3" W="0" C="0" />
          <S F="5" R="7" P="5" W="1" C="3" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="6" R="6" P="232" W="0" C="1" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="146" Ply="49" FromFile="5" FromRank="7" ToFile="3" ToRank="7">
      <FromPos>
        <Pos Seq="147" FEN="2b5/1p2R2p/1n3kp1/rPN1np2/p7/N5P1/P4P1P/5BK1 w - - 1 25" White="true" Move="25" Ply50="1" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="5" P="5" W="0" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="5" R="5" P="3" W="0" C="0" />
          <S F="5" R="7" P="5" W="1" C="3" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="6" R="6" P="232" W="0" C="1" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="148" FEN="2b5/1pR4p/1n3kp1/rPN1np2/p7/N5P1/P4P1P/5BK1 b - - 2 25" White="false" Move="25" Ply50="2" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="5" P="5" W="0" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="7" P="5" W="1" C="3" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="5" R="5" P="3" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="6" R="6" P="232" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="149" Ply="50" FromFile="5" FromRank="5" ToFile="6" ToRank="3">
      <FromPos>
        <Pos Seq="150" FEN="2b5/1pR4p/1n3kp1/rPN1np2/p7/N5P1/P4P1P/5BK1 b - - 2 25" White="false" Move="25" Ply50="2" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="5" P="5" W="0" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="7" P="5" W="1" C="3" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="5" R="5" P="3" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="6" R="6" P="232" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="151" FEN="2b5/1pR4p/1n3kp1/rPN2p2/p7/N4nP1/P4P1P/5BK1 w - - 3 26" White="true" Move="26" Ply50="3" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="5" P="5" W="0" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="0" />
          <S F="3" R="7" P="5" W="1" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="0" C="2" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="6" R="6" P="232" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="152" Ply="51" FromFile="7" FromRank="1" ToFile="7" ToRank="2">
      <FromPos>
        <Pos Seq="153" FEN="2b5/1pR4p/1n3kp1/rPN2p2/p7/N4nP1/P4P1P/5BK1 w - - 3 26" White="true" Move="26" Ply50="3" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="5" P="5" W="0" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="0" />
          <S F="3" R="7" P="5" W="1" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="0" C="2" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="6" R="6" P="232" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="154" FEN="2b5/1pR4p/1n3kp1/rPN2p2/p7/N4nP1/P4PKP/5B2 b - - 4 26" White="false" Move="26" Ply50="4" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="5" P="5" W="0" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="7" P="5" W="1" C="3" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="0" C="1" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="6" R="6" P="232" W="0" C="0" />
          <S F="7" R="2" P="232" W="1" C="1" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="155" Ply="52" FromFile="6" FromRank="3" ToFile="5" ToRank="1">
      <FromPos>
        <Pos Seq="156" FEN="2b5/1pR4p/1n3kp1/rPN2p2/p7/N4nP1/P4PKP/5B2 b - - 4 26" White="false" Move="26" Ply50="4" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="5" P="5" W="0" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="7" P="5" W="1" C="3" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="3" P="3" W="0" C="1" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="6" R="6" P="232" W="0" C="0" />
          <S F="7" R="2" P="232" W="1" C="1" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="157" FEN="2b5/1pR4p/1n3kp1/rPN2p2/p7/N5P1/P4PKP/4nB2 w - - 5 27" White="true" Move="27" Ply50="5" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="5" P="5" W="0" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="0" />
          <S F="3" R="7" P="5" W="1" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="5" R="1" P="3" W="0" C="1" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="6" R="6" P="232" W="0" C="0" />
          <S F="7" R="2" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="158" Ply="53" FromFile="7" FromRank="2" ToFile="7" ToRank="1">
      <FromPos>
        <Pos Seq="159" FEN="2b5/1pR4p/1n3kp1/rPN2p2/p7/N5P1/P4PKP/4nB2 w - - 5 27" White="true" Move="27" Ply50="5" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="5" P="5" W="0" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="0" />
          <S F="3" R="7" P="5" W="1" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="5" R="1" P="3" W="0" C="1" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="6" R="6" P="232" W="0" C="0" />
          <S F="7" R="2" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="160" FEN="2b5/1pR4p/1n3kp1/rPN2p2/p7/N5P1/P4P1P/4nBK1 b - - 6 27" White="false" Move="27" Ply50="6" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="5" P="5" W="0" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="7" P="5" W="1" C="3" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="5" R="1" P="3" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="6" R="6" P="232" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="161" Ply="54" FromFile="1" FromRank="5" ToFile="1" ToRank="8">
      <FromPos>
        <Pos Seq="162" FEN="2b5/1pR4p/1n3kp1/rPN2p2/p7/N5P1/P4P1P/4nBK1 b - - 6 27" White="false" Move="27" Ply50="6" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="5" P="5" W="0" C="1" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="7" P="5" W="1" C="3" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="5" R="1" P="3" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="6" R="6" P="232" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="163" FEN="r1b5/1pR4p/1n3kp1/1PN2p2/p7/N5P1/P4P1P/4nBK1 w - - 7 28" White="true" Move="28" Ply50="7" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="7" P="5" W="1" C="3" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="5" R="1" P="3" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="6" R="6" P="232" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="164" Ply="55" FromFile="6" FromRank="2" ToFile="6" ToRank="4">
      <FromPos>
        <Pos Seq="165" FEN="r1b5/1pR4p/1n3kp1/1PN2p2/p7/N5P1/P4P1P/4nBK1 w - - 7 28" White="true" Move="28" Ply50="7" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="7" P="5" W="1" C="3" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="5" R="1" P="3" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="2" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="6" R="6" P="232" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="166" FEN="r1b5/1pR4p/1n3kp1/1PN2p2/p4P2/N5P1/P6P/4nBK1 b - f3 0 28" White="false" EP="6" Move="28" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="7" P="5" W="1" C="3" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="5" R="1" P="3" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="6" R="6" P="232" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="167" Ply="56" FromFile="5" FromRank="1" ToFile="6" ToRank="3">
      <FromPos>
        <Pos Seq="168" FEN="r1b5/1pR4p/1n3kp1/1PN2p2/p4P2/N5P1/P6P/4nBK1 b - f3 0 28" White="false" EP="6" Move="28" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="7" P="5" W="1" C="3" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="5" R="1" P="3" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="6" R="6" P="232" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="169" FEN="r1b5/1pR4p/1n3kp1/1PN2p2/p4P2/N4nP1/P6P/5BK1 w - - 1 29" White="true" Move="29" Ply50="1" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="0" />
          <S F="3" R="7" P="5" W="1" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="3" P="3" W="0" C="2" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="6" R="6" P="232" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="170" Ply="57" FromFile="7" FromRank="1" ToFile="8" ToRank="1">
      <FromPos>
        <Pos Seq="171" FEN="r1b5/1pR4p/1n3kp1/1PN2p2/p4P2/N4nP1/P6P/5BK1 w - - 1 29" White="true" Move="29" Ply50="1" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="0" />
          <S F="3" R="7" P="5" W="1" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="3" P="3" W="0" C="2" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="6" R="6" P="232" W="0" C="0" />
          <S F="7" R="1" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="172" FEN="r1b5/1pR4p/1n3kp1/1PN2p2/p4P2/N4nP1/P6P/5B1K b - - 2 29" White="false" Move="29" Ply50="2" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="7" P="5" W="1" C="3" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="3" P="3" W="0" C="1" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="6" R="6" P="232" W="0" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="8" R="1" P="232" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="173" Ply="58" FromFile="7" FromRank="6" ToFile="7" ToRank="5">
      <FromPos>
        <Pos Seq="174" FEN="r1b5/1pR4p/1n3kp1/1PN2p2/p4P2/N4nP1/P6P/5B1K b - - 2 29" White="false" Move="29" Ply50="2" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="7" P="5" W="1" C="3" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="3" P="3" W="0" C="1" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="6" R="6" P="232" W="0" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="6" P="1" W="0" C="0" />
          <S F="8" R="1" P="232" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="175" FEN="r1b5/1pR4p/1n3k2/1PN2pp1/p4P2/N4nP1/P6P/5B1K w - - 0 30" White="true" Move="30" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="7" P="5" W="1" C="3" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="3" P="3" W="0" C="1" />
          <S F="6" R="4" P="1" W="1" C="1" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="6" R="6" P="232" W="0" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="5" P="1" W="0" C="1" />
          <S F="8" R="1" P="232" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="176" Ply="59" FromFile="3" FromRank="7" ToFile="8" ToRank="7">
      <FromPos>
        <Pos Seq="177" FEN="r1b5/1pR4p/1n3k2/1PN2pp1/p4P2/N4nP1/P6P/5B1K w - - 0 30" White="true" Move="30" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="7" P="5" W="1" C="3" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="3" P="3" W="0" C="1" />
          <S F="6" R="4" P="1" W="1" C="1" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="6" R="6" P="232" W="0" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="5" P="1" W="0" C="1" />
          <S F="8" R="1" P="232" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="1" W="0" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="178" FEN="r1b5/1p5R/1n3k2/1PN2pp1/p4P2/N4nP1/P6P/5B1K b - - 0 30" White="false" Move="30" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="3" P="3" W="0" C="1" />
          <S F="6" R="4" P="1" W="1" C="1" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="6" R="6" P="232" W="0" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="5" P="1" W="0" C="1" />
          <S F="8" R="1" P="232" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="5" W="1" C="1" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="179" Ply="60" FromFile="2" FromRank="6" ToFile="4" ToRank="5">
      <FromPos>
        <Pos Seq="180" FEN="r1b5/1p5R/1n3k2/1PN2pp1/p4P2/N4nP1/P6P/5B1K b - - 0 30" White="false" Move="30" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="6" P="3" W="0" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="3" P="3" W="0" C="1" />
          <S F="6" R="4" P="1" W="1" C="1" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="6" R="6" P="232" W="0" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="5" P="1" W="0" C="1" />
          <S F="8" R="1" P="232" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="5" W="1" C="1" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="181" FEN="r1b5/1p5R/5k2/1PNn1pp1/p4P2/N4nP1/P6P/5B1K w - - 1 31" White="true" Move="31" Ply50="1" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="5" P="3" W="0" C="1" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="3" P="3" W="0" C="1" />
          <S F="6" R="4" P="1" W="1" C="1" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="6" R="6" P="232" W="0" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="5" P="1" W="0" C="1" />
          <S F="8" R="1" P="232" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="5" W="1" C="1" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="182" Ply="61" FromFile="8" FromRank="7" ToFile="8" ToRank="6">
      <FromPos>
        <Pos Seq="183" FEN="r1b5/1p5R/5k2/1PNn1pp1/p4P2/N4nP1/P6P/5B1K w - - 1 31" White="true" Move="31" Ply50="1" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="5" P="3" W="0" C="1" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="3" P="3" W="0" C="1" />
          <S F="6" R="4" P="1" W="1" C="1" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="6" R="6" P="232" W="0" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="5" P="1" W="0" C="1" />
          <S F="8" R="1" P="232" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="7" P="5" W="1" C="1" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="184" FEN="r1b5/1p6/5k1R/1PNn1pp1/p4P2/N4nP1/P6P/5B1K b - - 2 31" White="false" Move="31" Ply50="2" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="5" P="3" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="3" P="3" W="0" C="0" />
          <S F="6" R="4" P="1" W="1" C="1" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="6" R="6" P="232" W="0" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="5" P="1" W="0" C="0" />
          <S F="8" R="1" P="232" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="6" P="5" W="1" C="1" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="185" Ply="62" FromFile="6" FromRank="6" ToFile="7" ToRank="7">
      <FromPos>
        <Pos Seq="186" FEN="r1b5/1p6/5k1R/1PNn1pp1/p4P2/N4nP1/P6P/5B1K b - - 2 31" White="false" Move="31" Ply50="2" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="5" P="3" W="0" C="0" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="3" P="3" W="0" C="0" />
          <S F="6" R="4" P="1" W="1" C="1" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="6" R="6" P="232" W="0" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="5" P="1" W="0" C="0" />
          <S F="8" R="1" P="232" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="6" P="5" W="1" C="1" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="187" FEN="r1b5/1p4k1/7R/1PNn1pp1/p4P2/N4nP1/P6P/5B1K w - - 3 32" White="true" Move="32" Ply50="3" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="5" P="3" W="0" C="1" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="3" P="3" W="0" C="1" />
          <S F="6" R="4" P="1" W="1" C="1" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="5" P="1" W="0" C="1" />
          <S F="7" R="7" P="232" W="0" C="1" />
          <S F="8" R="1" P="232" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="6" P="5" W="1" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="188" Ply="63" FromFile="8" FromRank="6" ToFile="4" ToRank="6">
      <FromPos>
        <Pos Seq="189" FEN="r1b5/1p4k1/7R/1PNn1pp1/p4P2/N4nP1/P6P/5B1K w - - 3 32" White="true" Move="32" Ply50="3" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="5" P="3" W="0" C="1" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="3" P="3" W="0" C="1" />
          <S F="6" R="4" P="1" W="1" C="1" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="5" P="1" W="0" C="1" />
          <S F="7" R="7" P="232" W="0" C="1" />
          <S F="8" R="1" P="232" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
          <S F="8" R="6" P="5" W="1" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="190" FEN="r1b5/1p4k1/3R4/1PNn1pp1/p4P2/N4nP1/P6P/5B1K b - - 4 32" White="false" Move="32" Ply50="4" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="5" P="3" W="0" C="1" />
          <S F="4" R="6" P="5" W="1" C="1" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="3" P="3" W="0" C="1" />
          <S F="6" R="4" P="1" W="1" C="1" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="5" P="1" W="0" C="1" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="1" P="232" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="191" Ply="64" FromFile="4" FromRank="5" ToFile="5" ToRank="3">
      <FromPos>
        <Pos Seq="192" FEN="r1b5/1p4k1/3R4/1PNn1pp1/p4P2/N4nP1/P6P/5B1K b - - 4 32" White="false" Move="32" Ply50="4" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="5" P="3" W="0" C="1" />
          <S F="4" R="6" P="5" W="1" C="1" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="3" P="3" W="0" C="1" />
          <S F="6" R="4" P="1" W="1" C="1" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="5" P="1" W="0" C="1" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="1" P="232" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="193" FEN="r1b5/1p4k1/3R4/1PN2pp1/p4P2/N3nnP1/P6P/5B1K w - - 5 33" White="true" Move="33" Ply50="5" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="6" P="5" W="1" C="0" />
          <S F="5" R="3" P="3" W="0" C="1" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="3" P="3" W="0" C="1" />
          <S F="6" R="4" P="1" W="1" C="1" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="5" P="1" W="0" C="1" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="1" P="232" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="194" Ply="65" FromFile="6" FromRank="1" ToFile="5" ToRank="2">
      <FromPos>
        <Pos Seq="195" FEN="r1b5/1p4k1/3R4/1PN2pp1/p4P2/N3nnP1/P6P/5B1K w - - 5 33" White="true" Move="33" Ply50="5" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="6" P="5" W="1" C="0" />
          <S F="5" R="3" P="3" W="0" C="1" />
          <S F="6" R="1" P="4" W="1" C="0" />
          <S F="6" R="3" P="3" W="0" C="1" />
          <S F="6" R="4" P="1" W="1" C="1" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="5" P="1" W="0" C="1" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="1" P="232" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="196" FEN="r1b5/1p4k1/3R4/1PN2pp1/p4P2/N3nnP1/P3B2P/7K b - - 6 33" White="false" Move="33" Ply50="6" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="6" P="5" W="1" C="0" />
          <S F="5" R="2" P="4" W="1" C="1" />
          <S F="5" R="3" P="3" W="0" C="0" />
          <S F="6" R="3" P="3" W="0" C="1" />
          <S F="6" R="4" P="1" W="1" C="1" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="5" P="1" W="0" C="1" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="1" P="232" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="197" Ply="66" FromFile="7" FromRank="5" ToFile="7" ToRank="4">
      <FromPos>
        <Pos Seq="198" FEN="r1b5/1p4k1/3R4/1PN2pp1/p4P2/N3nnP1/P3B2P/7K b - - 6 33" White="false" Move="33" Ply50="6" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="6" P="5" W="1" C="0" />
          <S F="5" R="2" P="4" W="1" C="1" />
          <S F="5" R="3" P="3" W="0" C="0" />
          <S F="6" R="3" P="3" W="0" C="1" />
          <S F="6" R="4" P="1" W="1" C="1" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="5" P="1" W="0" C="1" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="1" P="232" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="199" FEN="r1b5/1p4k1/3R4/1PN2p2/p4Pp1/N3nnP1/P3B2P/7K w - - 0 34" White="true" Move="34" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="6" P="5" W="1" C="0" />
          <S F="5" R="2" P="4" W="1" C="1" />
          <S F="5" R="3" P="3" W="0" C="0" />
          <S F="6" R="3" P="3" W="0" C="1" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="4" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="1" P="232" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="200" Ply="67" FromFile="1" FromRank="3" ToFile="3" ToRank="4">
      <FromPos>
        <Pos Seq="201" FEN="r1b5/1p4k1/3R4/1PN2p2/p4Pp1/N3nnP1/P3B2P/7K w - - 0 34" White="true" Move="34" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="3" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="6" P="5" W="1" C="0" />
          <S F="5" R="2" P="4" W="1" C="1" />
          <S F="5" R="3" P="3" W="0" C="0" />
          <S F="6" R="3" P="3" W="0" C="1" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="4" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="1" P="232" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="202" FEN="r1b5/1p4k1/3R4/1PN2p2/p1N2Pp1/4nnP1/P3B2P/7K b - - 1 34" White="false" Move="34" Ply50="1" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="4" P="3" W="1" C="1" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="6" P="5" W="1" C="0" />
          <S F="5" R="2" P="4" W="1" C="1" />
          <S F="5" R="3" P="3" W="0" C="1" />
          <S F="6" R="3" P="3" W="0" C="1" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="4" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="1" P="232" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="203" Ply="68" FromFile="5" FromRank="3" ToFile="3" ToRank="4">
      <FromPos>
        <Pos Seq="204" FEN="r1b5/1p4k1/3R4/1PN2p2/p1N2Pp1/4nnP1/P3B2P/7K b - - 1 34" White="false" Move="34" Ply50="1" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="4" P="3" W="1" C="1" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="6" P="5" W="1" C="0" />
          <S F="5" R="2" P="4" W="1" C="1" />
          <S F="5" R="3" P="3" W="0" C="1" />
          <S F="6" R="3" P="3" W="0" C="1" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="4" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="1" P="232" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="205" FEN="r1b5/1p4k1/3R4/1PN2p2/p1n2Pp1/5nP1/P3B2P/7K w - - 0 35" White="true" Move="35" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="4" P="3" W="0" C="1" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="6" P="5" W="1" C="0" />
          <S F="5" R="2" P="4" W="1" C="2" />
          <S F="6" R="3" P="3" W="0" C="1" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="4" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="1" P="232" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="206" Ply="69" FromFile="5" FromRank="2" ToFile="3" ToRank="4">
      <FromPos>
        <Pos Seq="207" FEN="r1b5/1p4k1/3R4/1PN2p2/p1n2Pp1/5nP1/P3B2P/7K w - - 0 35" White="true" Move="35" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="4" P="3" W="0" C="1" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="6" P="5" W="1" C="0" />
          <S F="5" R="2" P="4" W="1" C="2" />
          <S F="6" R="3" P="3" W="0" C="1" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="4" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="1" P="232" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="208" FEN="r1b5/1p4k1/3R4/1PN2p2/p1B2Pp1/5nP1/P6P/7K b - - 0 35" White="false" Move="35" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="4" P="4" W="1" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="6" P="5" W="1" C="0" />
          <S F="6" R="3" P="3" W="0" C="1" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="4" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="1" P="232" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="209" Ply="70" FromFile="1" FromRank="4" ToFile="1" ToRank="3">
      <FromPos>
        <Pos Seq="210" FEN="r1b5/1p4k1/3R4/1PN2p2/p1B2Pp1/5nP1/P6P/7K b - - 0 35" White="false" Move="35" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="4" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="4" P="4" W="1" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="6" P="5" W="1" C="0" />
          <S F="6" R="3" P="3" W="0" C="1" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="4" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="1" P="232" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="211" FEN="r1b5/1p4k1/3R4/1PN2p2/2B2Pp1/p4nP1/P6P/7K w - - 0 36" White="true" Move="36" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="4" P="4" W="1" C="0" />
          <S F="3" R="5" P="3" W="1" C="1" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="6" P="5" W="1" C="0" />
          <S F="6" R="3" P="3" W="0" C="1" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="4" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="1" P="232" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="212" Ply="71" FromFile="8" FromRank="1" ToFile="7" ToRank="2">
      <FromPos>
        <Pos Seq="213" FEN="r1b5/1p4k1/3R4/1PN2p2/2B2Pp1/p4nP1/P6P/7K w - - 0 36" White="true" Move="36" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="4" P="4" W="1" C="0" />
          <S F="3" R="5" P="3" W="1" C="1" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="6" P="5" W="1" C="0" />
          <S F="6" R="3" P="3" W="0" C="1" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="4" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="1" P="232" W="1" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="214" FEN="r1b5/1p4k1/3R4/1PN2p2/2B2Pp1/p4nP1/P5KP/8 b - - 1 36" White="false" Move="36" Ply50="1" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="4" P="4" W="1" C="0" />
          <S F="3" R="5" P="3" W="1" C="1" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="6" P="5" W="1" C="0" />
          <S F="6" R="3" P="3" W="0" C="1" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="7" R="2" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="4" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="215" Ply="72" FromFile="7" FromRank="7" ToFile="6" ToRank="8">
      <FromPos>
        <Pos Seq="216" FEN="r1b5/1p4k1/3R4/1PN2p2/2B2Pp1/p4nP1/P5KP/8 b - - 1 36" White="false" Move="36" Ply50="1" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="4" P="4" W="1" C="0" />
          <S F="3" R="5" P="3" W="1" C="1" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="6" P="5" W="1" C="0" />
          <S F="6" R="3" P="3" W="0" C="1" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="7" R="2" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="4" P="1" W="0" C="0" />
          <S F="7" R="7" P="232" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="217" FEN="r1b2k2/1p6/3R4/1PN2p2/2B2Pp1/p4nP1/P5KP/8 w - - 2 37" White="true" Move="37" Ply50="2" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="4" P="4" W="1" C="0" />
          <S F="3" R="5" P="3" W="1" C="1" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="6" P="5" W="1" C="0" />
          <S F="6" R="3" P="3" W="0" C="1" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="6" R="8" P="232" W="0" C="0" />
          <S F="7" R="2" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="4" P="1" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="218" Ply="73" FromFile="8" FromRank="2" ToFile="8" ToRank="4">
      <FromPos>
        <Pos Seq="219" FEN="r1b2k2/1p6/3R4/1PN2p2/2B2Pp1/p4nP1/P5KP/8 w - - 2 37" White="true" Move="37" Ply50="2" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="4" P="4" W="1" C="0" />
          <S F="3" R="5" P="3" W="1" C="1" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="6" P="5" W="1" C="0" />
          <S F="6" R="3" P="3" W="0" C="1" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="6" R="8" P="232" W="0" C="0" />
          <S F="7" R="2" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="4" P="1" W="0" C="0" />
          <S F="8" R="2" P="1" W="1" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="220" FEN="r1b2k2/1p6/3R4/1PN2p2/2B2PpP/p4nP1/P5K1/8 b - h3 0 37" White="false" EP="8" Move="37" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="4" P="4" W="1" C="0" />
          <S F="3" R="5" P="3" W="1" C="1" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="6" P="5" W="1" C="0" />
          <S F="6" R="3" P="3" W="0" C="1" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="6" R="8" P="232" W="0" C="0" />
          <S F="7" R="2" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="4" P="1" W="0" C="0" />
          <S F="8" R="4" P="1" W="1" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="221" Ply="74" FromFile="6" FromRank="8" ToFile="5" ToRank="7">
      <FromPos>
        <Pos Seq="222" FEN="r1b2k2/1p6/3R4/1PN2p2/2B2PpP/p4nP1/P5K1/8 b - h3 0 37" White="false" EP="8" Move="37" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="4" P="4" W="1" C="0" />
          <S F="3" R="5" P="3" W="1" C="1" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="6" P="5" W="1" C="0" />
          <S F="6" R="3" P="3" W="0" C="1" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="6" R="8" P="232" W="0" C="0" />
          <S F="7" R="2" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="4" P="1" W="0" C="0" />
          <S F="8" R="4" P="1" W="1" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="223" FEN="r1b5/1p2k3/3R4/1PN2p2/2B2PpP/p4nP1/P5K1/8 w - - 1 38" White="true" Move="38" Ply50="1" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="4" P="4" W="1" C="0" />
          <S F="3" R="5" P="3" W="1" C="1" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="6" P="5" W="1" C="0" />
          <S F="5" R="7" P="232" W="0" C="1" />
          <S F="6" R="3" P="3" W="0" C="1" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="7" R="2" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="4" P="1" W="0" C="0" />
          <S F="8" R="4" P="1" W="1" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="224" Ply="75" FromFile="4" FromRank="6" ToFile="7" ToRank="6">
      <FromPos>
        <Pos Seq="225" FEN="r1b5/1p2k3/3R4/1PN2p2/2B2PpP/p4nP1/P5K1/8 w - - 1 38" White="true" Move="38" Ply50="1" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="4" P="4" W="1" C="0" />
          <S F="3" R="5" P="3" W="1" C="1" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="6" P="5" W="1" C="0" />
          <S F="5" R="7" P="232" W="0" C="1" />
          <S F="6" R="3" P="3" W="0" C="1" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="7" R="2" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="4" P="1" W="0" C="0" />
          <S F="8" R="4" P="1" W="1" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="226" FEN="r1b5/1p2k3/6R1/1PN2p2/2B2PpP/p4nP1/P5K1/8 b - - 2 38" White="false" Move="38" Ply50="2" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="4" P="4" W="1" C="0" />
          <S F="3" R="5" P="3" W="1" C="1" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="5" R="7" P="232" W="0" C="0" />
          <S F="6" R="3" P="3" W="0" C="1" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="7" R="2" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="4" P="1" W="0" C="0" />
          <S F="7" R="6" P="5" W="1" C="1" />
          <S F="8" R="4" P="1" W="1" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="227" Ply="76" FromFile="6" FromRank="3" ToFile="4" ToRank="2">
      <FromPos>
        <Pos Seq="228" FEN="r1b5/1p2k3/6R1/1PN2p2/2B2PpP/p4nP1/P5K1/8 b - - 2 38" White="false" Move="38" Ply50="2" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="4" P="4" W="1" C="0" />
          <S F="3" R="5" P="3" W="1" C="1" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="5" R="7" P="232" W="0" C="0" />
          <S F="6" R="3" P="3" W="0" C="1" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="7" R="2" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="4" P="1" W="0" C="0" />
          <S F="7" R="6" P="5" W="1" C="1" />
          <S F="8" R="4" P="1" W="1" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="229" FEN="r1b5/1p2k3/6R1/1PN2p2/2B2PpP/p5P1/P2n2K1/8 w - - 3 39" White="true" Move="39" Ply50="3" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="4" P="4" W="1" C="0" />
          <S F="3" R="5" P="3" W="1" C="1" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="2" P="3" W="0" C="1" />
          <S F="5" R="7" P="232" W="0" C="0" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="7" R="2" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="4" P="1" W="0" C="0" />
          <S F="7" R="6" P="5" W="1" C="1" />
          <S F="8" R="4" P="1" W="1" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="230" Ply="77" FromFile="3" FromRank="4" ToFile="4" ToRank="5">
      <FromPos>
        <Pos Seq="231" FEN="r1b5/1p2k3/6R1/1PN2p2/2B2PpP/p5P1/P2n2K1/8 w - - 3 39" White="true" Move="39" Ply50="3" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="4" P="4" W="1" C="0" />
          <S F="3" R="5" P="3" W="1" C="1" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="2" P="3" W="0" C="1" />
          <S F="5" R="7" P="232" W="0" C="0" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="7" R="2" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="4" P="1" W="0" C="0" />
          <S F="7" R="6" P="5" W="1" C="1" />
          <S F="8" R="4" P="1" W="1" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="232" FEN="r1b5/1p2k3/6R1/1PNB1p2/5PpP/p5P1/P2n2K1/8 b - - 4 39" White="false" Move="39" Ply50="4" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="1" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="2" P="3" W="0" C="0" />
          <S F="4" R="5" P="4" W="1" C="1" />
          <S F="5" R="7" P="232" W="0" C="0" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="7" R="2" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="4" P="1" W="0" C="0" />
          <S F="7" R="6" P="5" W="1" C="1" />
          <S F="8" R="4" P="1" W="1" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="233" Ply="78" FromFile="4" FromRank="2" ToFile="5" ToRank="4">
      <FromPos>
        <Pos Seq="234" FEN="r1b5/1p2k3/6R1/1PNB1p2/5PpP/p5P1/P2n2K1/8 b - - 4 39" White="false" Move="39" Ply50="4" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="1" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="2" P="3" W="0" C="0" />
          <S F="4" R="5" P="4" W="1" C="1" />
          <S F="5" R="7" P="232" W="0" C="0" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="7" R="2" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="4" P="1" W="0" C="0" />
          <S F="7" R="6" P="5" W="1" C="1" />
          <S F="8" R="4" P="1" W="1" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="235" FEN="r1b5/1p2k3/6R1/1PNB1p2/4nPpP/p5P1/P5K1/8 w - - 5 40" White="true" Move="40" Ply50="5" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="5" P="4" W="1" C="2" />
          <S F="5" R="4" P="3" W="0" C="2" />
          <S F="5" R="7" P="232" W="0" C="0" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="7" R="2" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="4" P="1" W="0" C="0" />
          <S F="7" R="6" P="5" W="1" C="1" />
          <S F="8" R="4" P="1" W="1" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="236" Ply="79" FromFile="3" FromRank="5" ToFile="5" ToRank="4">
      <FromPos>
        <Pos Seq="237" FEN="r1b5/1p2k3/6R1/1PNB1p2/4nPpP/p5P1/P5K1/8 w - - 5 40" White="true" Move="40" Ply50="5" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="5" P="3" W="1" C="2" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="5" P="4" W="1" C="2" />
          <S F="5" R="4" P="3" W="0" C="2" />
          <S F="5" R="7" P="232" W="0" C="0" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="0" />
          <S F="7" R="2" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="4" P="1" W="0" C="0" />
          <S F="7" R="6" P="5" W="1" C="1" />
          <S F="8" R="4" P="1" W="1" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="238" FEN="r1b5/1p2k3/6R1/1P1B1p2/4NPpP/p5P1/P5K1/8 b - - 0 40" White="false" Move="40" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="5" P="4" W="1" C="1" />
          <S F="5" R="4" P="3" W="1" C="0" />
          <S F="5" R="7" P="232" W="0" C="0" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="1" />
          <S F="7" R="2" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="4" P="1" W="0" C="0" />
          <S F="7" R="6" P="5" W="1" C="1" />
          <S F="8" R="4" P="1" W="1" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="239" Ply="80" FromFile="6" FromRank="5" ToFile="5" ToRank="4">
      <FromPos>
        <Pos Seq="240" FEN="r1b5/1p2k3/6R1/1P1B1p2/4NPpP/p5P1/P5K1/8 b - - 0 40" White="false" Move="40" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="5" P="4" W="1" C="1" />
          <S F="5" R="4" P="3" W="1" C="0" />
          <S F="5" R="7" P="232" W="0" C="0" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="6" R="5" P="1" W="0" C="1" />
          <S F="7" R="2" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="4" P="1" W="0" C="0" />
          <S F="7" R="6" P="5" W="1" C="1" />
          <S F="8" R="4" P="1" W="1" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="241" FEN="r1b5/1p2k3/6R1/1P1B4/4pPpP/p5P1/P5K1/8 w - - 0 41" White="true" Move="41" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="5" P="4" W="1" C="2" />
          <S F="5" R="4" P="1" W="0" C="0" />
          <S F="5" R="7" P="232" W="0" C="0" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="7" R="2" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="4" P="1" W="0" C="0" />
          <S F="7" R="6" P="5" W="1" C="1" />
          <S F="8" R="4" P="1" W="1" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="242" Ply="81" FromFile="7" FromRank="6" ToFile="7" ToRank="8">
      <FromPos>
        <Pos Seq="243" FEN="r1b5/1p2k3/6R1/1P1B4/4pPpP/p5P1/P5K1/8 w - - 0 41" White="true" Move="41" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="5" P="4" W="1" C="2" />
          <S F="5" R="4" P="1" W="0" C="0" />
          <S F="5" R="7" P="232" W="0" C="0" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="7" R="2" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="4" P="1" W="0" C="0" />
          <S F="7" R="6" P="5" W="1" C="1" />
          <S F="8" R="4" P="1" W="1" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="244" FEN="r1b3R1/1p2k3/8/1P1B4/4pPpP/p5P1/P5K1/8 b - - 1 41" White="false" Move="41" Ply50="1" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="5" P="4" W="1" C="2" />
          <S F="5" R="4" P="1" W="0" C="0" />
          <S F="5" R="7" P="232" W="0" C="0" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="7" R="2" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="4" P="1" W="0" C="0" />
          <S F="7" R="8" P="5" W="1" C="2" />
          <S F="8" R="4" P="1" W="1" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="245" Ply="82" FromFile="5" FromRank="7" ToFile="4" ToRank="6">
      <FromPos>
        <Pos Seq="246" FEN="r1b3R1/1p2k3/8/1P1B4/4pPpP/p5P1/P5K1/8 b - - 1 41" White="false" Move="41" Ply50="1" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="5" P="4" W="1" C="2" />
          <S F="5" R="4" P="1" W="0" C="0" />
          <S F="5" R="7" P="232" W="0" C="0" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="7" R="2" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="4" P="1" W="0" C="0" />
          <S F="7" R="8" P="5" W="1" C="2" />
          <S F="8" R="4" P="1" W="1" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="247" FEN="r1b3R1/1p6/3k4/1P1B4/4pPpP/p5P1/P5K1/8 w - - 2 42" White="true" Move="42" Ply50="2" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="5" P="4" W="1" C="2" />
          <S F="4" R="6" P="232" W="0" C="1" />
          <S F="5" R="4" P="1" W="0" C="0" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="7" R="2" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="4" P="1" W="0" C="0" />
          <S F="7" R="8" P="5" W="1" C="2" />
          <S F="8" R="4" P="1" W="1" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="248" Ply="83" FromFile="4" FromRank="5" ToFile="2" ToRank="3">
      <FromPos>
        <Pos Seq="249" FEN="r1b3R1/1p6/3k4/1P1B4/4pPpP/p5P1/P5K1/8 w - - 2 42" White="true" Move="42" Ply50="2" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="5" P="4" W="1" C="2" />
          <S F="4" R="6" P="232" W="0" C="1" />
          <S F="5" R="4" P="1" W="0" C="0" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="7" R="2" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="4" P="1" W="0" C="0" />
          <S F="7" R="8" P="5" W="1" C="2" />
          <S F="8" R="4" P="1" W="1" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="250" FEN="r1b3R1/1p6/3k4/1P6/4pPpP/pB4P1/P5K1/8 b - - 3 42" White="false" Move="42" Ply50="3" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="3" P="4" W="1" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="6" P="232" W="0" C="0" />
          <S F="5" R="4" P="1" W="0" C="0" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="7" R="2" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="4" P="1" W="0" C="0" />
          <S F="7" R="8" P="5" W="1" C="2" />
          <S F="8" R="4" P="1" W="1" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="251" Ply="84" FromFile="5" FromRank="4" ToFile="5" ToRank="3">
      <FromPos>
        <Pos Seq="252" FEN="r1b3R1/1p6/3k4/1P6/4pPpP/pB4P1/P5K1/8 b - - 3 42" White="false" Move="42" Ply50="3" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="3" P="4" W="1" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="6" P="232" W="0" C="0" />
          <S F="5" R="4" P="1" W="0" C="0" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="7" R="2" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="4" P="1" W="0" C="0" />
          <S F="7" R="8" P="5" W="1" C="2" />
          <S F="8" R="4" P="1" W="1" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="253" FEN="r1b3R1/1p6/3k4/1P6/5PpP/pB2p1P1/P5K1/8 w - - 0 43" White="true" Move="43" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="3" P="4" W="1" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="6" P="232" W="0" C="0" />
          <S F="5" R="3" P="1" W="0" C="0" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="7" R="2" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="4" P="1" W="0" C="0" />
          <S F="7" R="8" P="5" W="1" C="2" />
          <S F="8" R="4" P="1" W="1" C="0" />
        </Pos>
      </ToPos>
    </Move>
    <Move Seq="254" Ply="85" FromFile="8" FromRank="4" ToFile="8" ToRank="5">
      <FromPos>
        <Pos Seq="255" FEN="r1b3R1/1p6/3k4/1P6/5PpP/pB2p1P1/P5K1/8 w - - 0 43" White="true" Move="43" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="3" P="4" W="1" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="6" P="232" W="0" C="0" />
          <S F="5" R="3" P="1" W="0" C="0" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="7" R="2" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="4" P="1" W="0" C="0" />
          <S F="7" R="8" P="5" W="1" C="2" />
          <S F="8" R="4" P="1" W="1" C="0" />
        </Pos>
      </FromPos>
      <ToPos>
        <Pos Seq="256" FEN="r1b3R1/1p6/3k4/1P5P/5Pp1/pB2p1P1/P5K1/8 b - - 0 43" White="false" Move="43" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">
          <S F="1" R="2" P="1" W="1" C="0" />
          <S F="1" R="3" P="1" W="0" C="0" />
          <S F="1" R="8" P="5" W="0" C="0" />
          <S F="2" R="3" P="4" W="1" C="0" />
          <S F="2" R="5" P="1" W="1" C="0" />
          <S F="2" R="7" P="1" W="0" C="0" />
          <S F="3" R="8" P="4" W="0" C="0" />
          <S F="4" R="6" P="232" W="0" C="0" />
          <S F="5" R="3" P="1" W="0" C="0" />
          <S F="6" R="4" P="1" W="1" C="0" />
          <S F="7" R="2" P="232" W="1" C="0" />
          <S F="7" R="3" P="1" W="1" C="0" />
          <S F="7" R="4" P="1" W="0" C="0" />
          <S F="7" R="8" P="5" W="1" C="2" />
          <S F="8" R="5" P="1" W="1" C="0" />
        </Pos>
      </ToPos>
    </Move>
  </Game>
</Games>'




declare @game_map table
(
	SEQ INT NOT NULL PRIMARY KEY,
	GameId int NOT NULL
)

declare @pos_map table
(
	FEN VARCHAR(255) NOT NULL PRIMARY KEY,
	PositionId int NOT NULL
)

begin tran


--  <Game  Year="2017" Date="2017-12-24T00:00:00" ECO="A00" PGN="[Event &quot;55. Groningen Open 2017&quot;]&#xD;&#xA;[Site &quot;Groningen NED&quot;]&#xD;&#xA;[Date &quot;2017.12.24&quot;]&#xD;&#xA;[Round &quot;4.5&quot;]&#xD;&#xA;[White &quot;Pel, Bonno&quot;]&#xD;&#xA;[Black &quot;Postny, Evgeny&quot;]&#xD;&#xA;[Result &quot;0-1&quot;]&#xD;&#xA;[WhiteElo &quot;2247&quot;]&#xD;&#xA;[BlackElo &quot;2581&quot;]&#xD;&#xA;[ECO &quot;A00&quot;]&#xD;&#xA;[EventDate &quot;2017.12.22&quot;]&#xD;&#xA;&#xD;&#xA;1.g3 d5 2.Bg2 e5 3.d3 Nf6 4.Nf3 Bd6 5.O-O O-O 6.Nc3 Re8 7.e4 d4 8.Ne2 c5 &#xD;&#xA;9.Nh4 Nc6 10.h3 h6 11.Kh1 Bd7 12.Bd2 Rc8 13.c4 dxc3 14.Nxc3 Bf8 15.Be3 Be6&#xD;&#xA;16.f4 exf4 17.gxf4 Ng4 18.hxg4 Qxh4+ 19.Kg1 Bxg4 20.Qd2 Red8 21.Rae1 c4 &#xD;&#xA;22.Bf2 Qh5 23.Nd5 cxd3 24.Re3 Nd4 25.Rh3 Bxh3 0-1&#xD;&#xA;&#xD;&#xA;" PgnHash="1967911805" GameHash="1219982843">

;with s AS
(
	select
		g.c.value('./@Seq','int') AS [Seq],
		g.c.value('./@Site','nvarchar(255)') AS [Site],
		g.c.value('./@Round','nvarchar(255)') AS  [Round],
		g.c.value('./@WhiteName','nvarchar(255)') AS WhiteName,
		g.c.value('./@BlackName','nvarchar(255)') AS BlackName,
		g.c.value('./@WhiteElo','int') AS WhiteElo,
		g.c.value('./@BlackElo','int') AS BlackElo,
		g.c.value('./@Year','int') AS [Year],
		g.c.value('./@Date','DateTime') AS [Date],
		g.c.value('./@ECO','char(3)') AS ECO,
		g.c.value('./@PGN','nvarchar(max)') AS PGN,
		g.c.value('./@PgnHash','int') AS PgnHash,
		g.c.value('./@GameHash','int') AS GameHash,
		g.c.value('./@Result','tinyint') AS Result,
		g.c.value('./@Reason','tinyint') AS Reason,
		g.c.value('./@MoveCount','int') AS MoveCount
	from 
		@data.nodes('/Games/Game') as g(c)
),
t as
(
	SELECT * FROM Games
)

merge into t using s on (s.PgnHash=t.PgnHash AND s.PGN=t.PGN)

when not matched then insert
	([Site],[Round],WhiteName,BlackName,WhiteElo,BlackElo,[Year],[Date],ECO,PGN,PgnHash,GameHash,Result,ResultReason,MoveCount)
values
	([Site],[Round],WhiteName,BlackName,WhiteElo,BlackElo,[Year],[Date],ECO,PGN,PgnHash,GameHash,Result,Reason,MoveCount)

output s.seq,inserted.GameId into @game_map
;


--        <Pos Seq="256" FEN="r1b3R1/1p6/3k4/1P5P/5Pp1/pB2p1P1/P5K1/8 b - - 0 43" White="false" Move="43" Ply50="0" CastleWK="false" CastleWQ="false" CastleBK="false" CastleBQ="false">

;with s AS
(
	select
		g.c.value('./@FEN','varchar(255)') as FEN,
		g.c.value('./@White','bit') as White,
		g.c.value('./@Move','int') as [Move],
		g.c.value('./@Ply50','int') as [PlyTo50],
		g.c.value('./@EP','int') as [EP],
		g.c.value('./@CastleWQ','bit') as [CastleWQ],
		g.c.value('./@CastleWQ','bit') as [CastleWK],
		g.c.value('./@CastleBQ','bit') as [CastleBQ],
		g.c.value('./@CastleBK','bit') as [CastleBK]
	from 
		@data.nodes('/Games/Game/Move/FromPos/Pos') as g(c)

	union 

	select
		g.c.value('./@FEN','varchar(255)') as FEN,
		g.c.value('./@White','bit') as White,
		g.c.value('./@Move','int') as [Move],
		g.c.value('./@Ply50','int') as [PlyTo50],
		g.c.value('./@EP','int') as [EP],
		g.c.value('./@CastleWQ','bit') as [CastleWQ],
		g.c.value('./@CastleWQ','bit') as [CastleWK],
		g.c.value('./@CastleBQ','bit') as [CastleBQ],
		g.c.value('./@CastleBK','bit') as [CastleBK]
	from 
		@data.nodes('/Games/Game/Move/ToPos/Pos') as g(c)
),

t as 
(
	select * from Positions
)

merge into t using s on (s.FEN=t.FEN)

when not matched by target then insert
	(FEN,MoveNumber,PlysTo50,EnPassantFile,WhiteToMove,CanWhiteCastleKingSide,CanWhiteCastleQueenSide,CanBlackCastleKingSide,CanBlackCastleQueenSide)
values
	(FEN,[Move],PlyTo50,EP,White,[CastleWK],[CastleWQ],[CastleBK],[CastleBQ])

output inserted.FEN,inserted.PositionId 
into @pos_map
;

with sq AS
(
	select
		mp.PositionId,
		s.c.value('./@F','tinyint') as [File],
		s.c.value('./@R','tinyint') as [Rank],
		s.c.value('./@P','tinyint') as [Piece],
		s.c.value('./@C','tinyint') as [Captures],
		s.c.value('./@W','bit') as [White]
	from 
		@data.nodes('/Games/Game/Move/FromPos/Pos') as g(c)
	cross apply
		g.c.nodes('./S') as s(c)
	inner join
		@pos_map mp on mp.FEN = g.c.value('./@FEN','varchar(255)')

	union 

	select
		mp.PositionId,
		s.c.value('./@F','tinyint') as [File],
		s.c.value('./@R','tinyint') as [Rank],
		s.c.value('./@P','tinyint') as [Piece],
		s.c.value('./@C','tinyint') as [Captures],
		s.c.value('./@W','bit') as [White]
	from 
		@data.nodes('/Games/Game/Move/ToPos/Pos') as g(c)
	cross apply
		g.c.nodes('./S') as s(c)
	inner join
		@pos_map mp on mp.FEN = g.c.value('./@FEN','varchar(255)')
)

insert into Squares
	(PositionId,[Rank],[File],Piece,Captures,White)
select 
	PositionId,[Rank],[File],Piece,Captures,White
from
	sq
;


with mv as
(
	select
		mp.GameId,
		pf.PositionId as FromPositionId,
		pt.PositionId as ToPositionId,
		m.c.value('./@Ply','tinyint') as [Ply],
		m.c.value('./@FromFile','tinyint') as [FromFile],
		m.c.value('./@FromRank','tinyint') as [FromRank],
		m.c.value('./@ToFile','tinyint') as [ToFile],
		m.c.value('./@ToRank','tinyint') as [ToRank]
	from 
		@data.nodes('/Games/Game') as g(c)
	inner join
		@game_map mp on g.c.value('./@Seq','int')=mp.SEQ
	cross apply
		g.c.nodes('./Move') as m(c)
	cross apply
		m.c.nodes('./FromPos/Pos') as fp(c)
	cross apply
		m.c.nodes('./ToPos/Pos') as tp(c)
	inner join
		Positions pf on fp.c.value('./@FEN','varchar(255)')=pf.FEN
	inner join
		Positions pt on tp.c.value('./@FEN','varchar(255)')=pt.FEN
)

insert into Moves
	(GameId,PlyNumber,FromPositionId,ToPositionId,FromFile,FromRank,ToFile,ToRank)
select 
	GameId,Ply,FromPositionId,ToPositionId,FromFile,FromRank,ToFile,ToRank
from mv
;



--select * from games
select * from moves
select * from positions order by movenumber,WhiteToMove desc
select * from squares

rollback tran

