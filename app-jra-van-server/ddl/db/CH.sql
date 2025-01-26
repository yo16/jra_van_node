-- 調教師マスタ
CREATE TABLE IF NOT EXISTS TrainerMaster (
    -- データ区分 
    dataCategory TEXT NULL,
    -- データ作成年月日 
    creationDate TEXT NULL,
    -- 調教師コード 
    trainerCode TEXT NULL,
    -- 調教師抹消区分 
    trainerDeletionCategory TEXT NULL,
    -- 調教師免許交付年月日 
    trainerLicenseIssueDate TEXT NULL,
    -- 調教師免許抹消年月日 
    trainerLicenseCancellationDate TEXT NULL,
    -- 生年月日 
    birthDate TEXT NULL,
    -- 調教師名 
    trainerName TEXT NULL,
    -- 調教師名半角ｶﾅ 
    trainerNameKana TEXT NULL,
    -- 調教師名略称 
    trainerNameAbbreviation TEXT NULL,
    -- 調教師名欧字 
    trainerNameEng TEXT NULL,
    -- 性別区分 
    genderCategory TEXT NULL,
    -- 調教師東西所属コード 
    trainerRegionAffiliationCode TEXT NULL,
    -- 招待地域名 
    invitationRegionName TEXT NULL,
    -- 年月日場回日R 
    RecentGradeRaceVictoryInfo_1_datePlaceDayR TEXT NULL,
    -- 競走名本題 
    RecentGradeRaceVictoryInfo_1_raceName TEXT NULL,
    -- 競走名略称10文字 
    RecentGradeRaceVictoryInfo_1_raceNameAbbr10 TEXT NULL,
    -- 競走名略称6文字 
    RecentGradeRaceVictoryInfo_1_raceNameAbbr6 TEXT NULL,
    -- 競走名略称3文字 
    RecentGradeRaceVictoryInfo_1_raceNameAbbr3 TEXT NULL,
    -- グレードコード 
    RecentGradeRaceVictoryInfo_1_gradeCode TEXT NULL,
    -- 出走頭数 
    RecentGradeRaceVictoryInfo_1_numberOfRunners INTEGER NULL,
    -- 血統登録番号 
    RecentGradeRaceVictoryInfo_1_bloodlineNumber TEXT NULL,
    -- 年月日場回日R 
    RecentGradeRaceVictoryInfo_2_datePlaceDayR TEXT NULL,
    -- 競走名本題 
    RecentGradeRaceVictoryInfo_2_raceName TEXT NULL,
    -- 競走名略称10文字 
    RecentGradeRaceVictoryInfo_2_raceNameAbbr10 TEXT NULL,
    -- 競走名略称6文字 
    RecentGradeRaceVictoryInfo_2_raceNameAbbr6 TEXT NULL,
    -- 競走名略称3文字 
    RecentGradeRaceVictoryInfo_2_raceNameAbbr3 TEXT NULL,
    -- グレードコード 
    RecentGradeRaceVictoryInfo_2_gradeCode TEXT NULL,
    -- 出走頭数 
    RecentGradeRaceVictoryInfo_2_numberOfRunners INTEGER NULL,
    -- 血統登録番号 
    RecentGradeRaceVictoryInfo_2_bloodlineNumber TEXT NULL,
    -- 年月日場回日R 
    RecentGradeRaceVictoryInfo_3_datePlaceDayR TEXT NULL,
    -- 競走名本題 
    RecentGradeRaceVictoryInfo_3_raceName TEXT NULL,
    -- 競走名略称10文字 
    RecentGradeRaceVictoryInfo_3_raceNameAbbr10 TEXT NULL,
    -- 競走名略称6文字 
    RecentGradeRaceVictoryInfo_3_raceNameAbbr6 TEXT NULL,
    -- 競走名略称3文字 
    RecentGradeRaceVictoryInfo_3_raceNameAbbr3 TEXT NULL,
    -- グレードコード 
    RecentGradeRaceVictoryInfo_3_gradeCode TEXT NULL,
    -- 出走頭数 
    RecentGradeRaceVictoryInfo_3_numberOfRunners INTEGER NULL,
    -- 血統登録番号 
    RecentGradeRaceVictoryInfo_3_bloodlineNumber TEXT NULL,
    -- 設定年 
    CurrentAndPreviousYearTotalStats_current_settingYear TEXT NULL,
    -- 平地本賞金合計 
    CurrentAndPreviousYearTotalStats_current_flatMainPrizeMonayTotal INTEGER NULL,
    -- 障害本賞金合計 
    CurrentAndPreviousYearTotalStats_current_obstacleMainPrizeMoneyTotal INTEGER NULL,
    -- 平地付加賞金合計 
    CurrentAndPreviousYearTotalStats_current_flatAdditionalPrizeMoneyTotal INTEGER NULL,
    -- 障害付加賞金合計 
    CurrentAndPreviousYearTotalStats_current_obstacleAdditionalPrizeMoneyTotal INTEGER NULL,
    -- 平地着回数 
    CurrentAndPreviousYearTotalStats_current_flatPlacementCount_1 INTEGER NULL,
    -- 平地着回数 
    CurrentAndPreviousYearTotalStats_current_flatPlacementCount_2 INTEGER NULL,
    -- 平地着回数 
    CurrentAndPreviousYearTotalStats_current_flatPlacementCount_3 INTEGER NULL,
    -- 平地着回数 
    CurrentAndPreviousYearTotalStats_current_flatPlacementCount_4 INTEGER NULL,
    -- 平地着回数 
    CurrentAndPreviousYearTotalStats_current_flatPlacementCount_5 INTEGER NULL,
    -- 平地着回数 
    CurrentAndPreviousYearTotalStats_current_flatPlacementCount_6 INTEGER NULL,
    -- 障害着回数 
    CurrentAndPreviousYearTotalStats_current_obstaclePlacementCount_1 INTEGER NULL,
    -- 障害着回数 
    CurrentAndPreviousYearTotalStats_current_obstaclePlacementCount_2 INTEGER NULL,
    -- 障害着回数 
    CurrentAndPreviousYearTotalStats_current_obstaclePlacementCount_3 INTEGER NULL,
    -- 障害着回数 
    CurrentAndPreviousYearTotalStats_current_obstaclePlacementCount_4 INTEGER NULL,
    -- 障害着回数 
    CurrentAndPreviousYearTotalStats_current_obstaclePlacementCount_5 INTEGER NULL,
    -- 障害着回数 
    CurrentAndPreviousYearTotalStats_current_obstaclePlacementCount_6 INTEGER NULL,
    -- 札幌平地着回数 
    CurrentAndPreviousYearTotalStats_current_sapporoFlatPlacementCounts_1 INTEGER NULL,
    -- 札幌平地着回数 
    CurrentAndPreviousYearTotalStats_current_sapporoFlatPlacementCounts_2 INTEGER NULL,
    -- 札幌平地着回数 
    CurrentAndPreviousYearTotalStats_current_sapporoFlatPlacementCounts_3 INTEGER NULL,
    -- 札幌平地着回数 
    CurrentAndPreviousYearTotalStats_current_sapporoFlatPlacementCounts_4 INTEGER NULL,
    -- 札幌平地着回数 
    CurrentAndPreviousYearTotalStats_current_sapporoFlatPlacementCounts_5 INTEGER NULL,
    -- 札幌平地着回数 
    CurrentAndPreviousYearTotalStats_current_sapporoFlatPlacementCounts_6 INTEGER NULL,
    -- 札幌障害着回数 
    CurrentAndPreviousYearTotalStats_current_sapporoSteeplechasePlacementCounts_1 INTEGER NULL,
    -- 札幌障害着回数 
    CurrentAndPreviousYearTotalStats_current_sapporoSteeplechasePlacementCounts_2 INTEGER NULL,
    -- 札幌障害着回数 
    CurrentAndPreviousYearTotalStats_current_sapporoSteeplechasePlacementCounts_3 INTEGER NULL,
    -- 札幌障害着回数 
    CurrentAndPreviousYearTotalStats_current_sapporoSteeplechasePlacementCounts_4 INTEGER NULL,
    -- 札幌障害着回数 
    CurrentAndPreviousYearTotalStats_current_sapporoSteeplechasePlacementCounts_5 INTEGER NULL,
    -- 札幌障害着回数 
    CurrentAndPreviousYearTotalStats_current_sapporoSteeplechasePlacementCounts_6 INTEGER NULL,
    -- 函館平地着回数 
    CurrentAndPreviousYearTotalStats_current_hakodateFlatPlacementCount_1 INTEGER NULL,
    -- 函館平地着回数 
    CurrentAndPreviousYearTotalStats_current_hakodateFlatPlacementCount_2 INTEGER NULL,
    -- 函館平地着回数 
    CurrentAndPreviousYearTotalStats_current_hakodateFlatPlacementCount_3 INTEGER NULL,
    -- 函館平地着回数 
    CurrentAndPreviousYearTotalStats_current_hakodateFlatPlacementCount_4 INTEGER NULL,
    -- 函館平地着回数 
    CurrentAndPreviousYearTotalStats_current_hakodateFlatPlacementCount_5 INTEGER NULL,
    -- 函館平地着回数 
    CurrentAndPreviousYearTotalStats_current_hakodateFlatPlacementCount_6 INTEGER NULL,
    -- 函館障害着回数 
    CurrentAndPreviousYearTotalStats_current_hakodateSteeplechasePlacementCount_1 INTEGER NULL,
    -- 函館障害着回数 
    CurrentAndPreviousYearTotalStats_current_hakodateSteeplechasePlacementCount_2 INTEGER NULL,
    -- 函館障害着回数 
    CurrentAndPreviousYearTotalStats_current_hakodateSteeplechasePlacementCount_3 INTEGER NULL,
    -- 函館障害着回数 
    CurrentAndPreviousYearTotalStats_current_hakodateSteeplechasePlacementCount_4 INTEGER NULL,
    -- 函館障害着回数 
    CurrentAndPreviousYearTotalStats_current_hakodateSteeplechasePlacementCount_5 INTEGER NULL,
    -- 函館障害着回数 
    CurrentAndPreviousYearTotalStats_current_hakodateSteeplechasePlacementCount_6 INTEGER NULL,
    -- 福島平地着回数 
    CurrentAndPreviousYearTotalStats_current_fukushimaFlatPlacementCounts_1 INTEGER NULL,
    -- 福島平地着回数 
    CurrentAndPreviousYearTotalStats_current_fukushimaFlatPlacementCounts_2 INTEGER NULL,
    -- 福島平地着回数 
    CurrentAndPreviousYearTotalStats_current_fukushimaFlatPlacementCounts_3 INTEGER NULL,
    -- 福島平地着回数 
    CurrentAndPreviousYearTotalStats_current_fukushimaFlatPlacementCounts_4 INTEGER NULL,
    -- 福島平地着回数 
    CurrentAndPreviousYearTotalStats_current_fukushimaFlatPlacementCounts_5 INTEGER NULL,
    -- 福島平地着回数 
    CurrentAndPreviousYearTotalStats_current_fukushimaFlatPlacementCounts_6 INTEGER NULL,
    -- 福島障害着回数 
    CurrentAndPreviousYearTotalStats_current_fukushimaSteeplechasePlacementCounts_1 INTEGER NULL,
    -- 福島障害着回数 
    CurrentAndPreviousYearTotalStats_current_fukushimaSteeplechasePlacementCounts_2 INTEGER NULL,
    -- 福島障害着回数 
    CurrentAndPreviousYearTotalStats_current_fukushimaSteeplechasePlacementCounts_3 INTEGER NULL,
    -- 福島障害着回数 
    CurrentAndPreviousYearTotalStats_current_fukushimaSteeplechasePlacementCounts_4 INTEGER NULL,
    -- 福島障害着回数 
    CurrentAndPreviousYearTotalStats_current_fukushimaSteeplechasePlacementCounts_5 INTEGER NULL,
    -- 福島障害着回数 
    CurrentAndPreviousYearTotalStats_current_fukushimaSteeplechasePlacementCounts_6 INTEGER NULL,
    -- 新潟平地着回数 
    CurrentAndPreviousYearTotalStats_current_niigataFlatPlacementCounts_1 INTEGER NULL,
    -- 新潟平地着回数 
    CurrentAndPreviousYearTotalStats_current_niigataFlatPlacementCounts_2 INTEGER NULL,
    -- 新潟平地着回数 
    CurrentAndPreviousYearTotalStats_current_niigataFlatPlacementCounts_3 INTEGER NULL,
    -- 新潟平地着回数 
    CurrentAndPreviousYearTotalStats_current_niigataFlatPlacementCounts_4 INTEGER NULL,
    -- 新潟平地着回数 
    CurrentAndPreviousYearTotalStats_current_niigataFlatPlacementCounts_5 INTEGER NULL,
    -- 新潟平地着回数 
    CurrentAndPreviousYearTotalStats_current_niigataFlatPlacementCounts_6 INTEGER NULL,
    -- 新潟障害着回数 
    CurrentAndPreviousYearTotalStats_current_niigataSteeplechasePlacementCounts_1 INTEGER NULL,
    -- 新潟障害着回数 
    CurrentAndPreviousYearTotalStats_current_niigataSteeplechasePlacementCounts_2 INTEGER NULL,
    -- 新潟障害着回数 
    CurrentAndPreviousYearTotalStats_current_niigataSteeplechasePlacementCounts_3 INTEGER NULL,
    -- 新潟障害着回数 
    CurrentAndPreviousYearTotalStats_current_niigataSteeplechasePlacementCounts_4 INTEGER NULL,
    -- 新潟障害着回数 
    CurrentAndPreviousYearTotalStats_current_niigataSteeplechasePlacementCounts_5 INTEGER NULL,
    -- 新潟障害着回数 
    CurrentAndPreviousYearTotalStats_current_niigataSteeplechasePlacementCounts_6 INTEGER NULL,
    -- 東京平地着回数 
    CurrentAndPreviousYearTotalStats_current_tokyoFlatPlacementCount_1 INTEGER NULL,
    -- 東京平地着回数 
    CurrentAndPreviousYearTotalStats_current_tokyoFlatPlacementCount_2 INTEGER NULL,
    -- 東京平地着回数 
    CurrentAndPreviousYearTotalStats_current_tokyoFlatPlacementCount_3 INTEGER NULL,
    -- 東京平地着回数 
    CurrentAndPreviousYearTotalStats_current_tokyoFlatPlacementCount_4 INTEGER NULL,
    -- 東京平地着回数 
    CurrentAndPreviousYearTotalStats_current_tokyoFlatPlacementCount_5 INTEGER NULL,
    -- 東京平地着回数 
    CurrentAndPreviousYearTotalStats_current_tokyoFlatPlacementCount_6 INTEGER NULL,
    -- 東京障害着回数 
    CurrentAndPreviousYearTotalStats_current_tokyoSteeplechasePlacementCount_1 INTEGER NULL,
    -- 東京障害着回数 
    CurrentAndPreviousYearTotalStats_current_tokyoSteeplechasePlacementCount_2 INTEGER NULL,
    -- 東京障害着回数 
    CurrentAndPreviousYearTotalStats_current_tokyoSteeplechasePlacementCount_3 INTEGER NULL,
    -- 東京障害着回数 
    CurrentAndPreviousYearTotalStats_current_tokyoSteeplechasePlacementCount_4 INTEGER NULL,
    -- 東京障害着回数 
    CurrentAndPreviousYearTotalStats_current_tokyoSteeplechasePlacementCount_5 INTEGER NULL,
    -- 東京障害着回数 
    CurrentAndPreviousYearTotalStats_current_tokyoSteeplechasePlacementCount_6 INTEGER NULL,
    -- 中山平地着回数 
    CurrentAndPreviousYearTotalStats_current_nakayamaFlatPlacementCount_1 INTEGER NULL,
    -- 中山平地着回数 
    CurrentAndPreviousYearTotalStats_current_nakayamaFlatPlacementCount_2 INTEGER NULL,
    -- 中山平地着回数 
    CurrentAndPreviousYearTotalStats_current_nakayamaFlatPlacementCount_3 INTEGER NULL,
    -- 中山平地着回数 
    CurrentAndPreviousYearTotalStats_current_nakayamaFlatPlacementCount_4 INTEGER NULL,
    -- 中山平地着回数 
    CurrentAndPreviousYearTotalStats_current_nakayamaFlatPlacementCount_5 INTEGER NULL,
    -- 中山平地着回数 
    CurrentAndPreviousYearTotalStats_current_nakayamaFlatPlacementCount_6 INTEGER NULL,
    -- 中山障害着回数 
    CurrentAndPreviousYearTotalStats_current_nakayamaSteeplechasePlacementCount_1 INTEGER NULL,
    -- 中山障害着回数 
    CurrentAndPreviousYearTotalStats_current_nakayamaSteeplechasePlacementCount_2 INTEGER NULL,
    -- 中山障害着回数 
    CurrentAndPreviousYearTotalStats_current_nakayamaSteeplechasePlacementCount_3 INTEGER NULL,
    -- 中山障害着回数 
    CurrentAndPreviousYearTotalStats_current_nakayamaSteeplechasePlacementCount_4 INTEGER NULL,
    -- 中山障害着回数 
    CurrentAndPreviousYearTotalStats_current_nakayamaSteeplechasePlacementCount_5 INTEGER NULL,
    -- 中山障害着回数 
    CurrentAndPreviousYearTotalStats_current_nakayamaSteeplechasePlacementCount_6 INTEGER NULL,
    -- 中京平地着回数 
    CurrentAndPreviousYearTotalStats_current_chukyoFlatPlacementCount_1 INTEGER NULL,
    -- 中京平地着回数 
    CurrentAndPreviousYearTotalStats_current_chukyoFlatPlacementCount_2 INTEGER NULL,
    -- 中京平地着回数 
    CurrentAndPreviousYearTotalStats_current_chukyoFlatPlacementCount_3 INTEGER NULL,
    -- 中京平地着回数 
    CurrentAndPreviousYearTotalStats_current_chukyoFlatPlacementCount_4 INTEGER NULL,
    -- 中京平地着回数 
    CurrentAndPreviousYearTotalStats_current_chukyoFlatPlacementCount_5 INTEGER NULL,
    -- 中京平地着回数 
    CurrentAndPreviousYearTotalStats_current_chukyoFlatPlacementCount_6 INTEGER NULL,
    -- 中京障害着回数 
    CurrentAndPreviousYearTotalStats_current_chukyoSteeplechasePlacementCount_1 INTEGER NULL,
    -- 中京障害着回数 
    CurrentAndPreviousYearTotalStats_current_chukyoSteeplechasePlacementCount_2 INTEGER NULL,
    -- 中京障害着回数 
    CurrentAndPreviousYearTotalStats_current_chukyoSteeplechasePlacementCount_3 INTEGER NULL,
    -- 中京障害着回数 
    CurrentAndPreviousYearTotalStats_current_chukyoSteeplechasePlacementCount_4 INTEGER NULL,
    -- 中京障害着回数 
    CurrentAndPreviousYearTotalStats_current_chukyoSteeplechasePlacementCount_5 INTEGER NULL,
    -- 中京障害着回数 
    CurrentAndPreviousYearTotalStats_current_chukyoSteeplechasePlacementCount_6 INTEGER NULL,
    -- 京都平地着回数 
    CurrentAndPreviousYearTotalStats_current_kyotoFlatPlacementCounts_1 INTEGER NULL,
    -- 京都平地着回数 
    CurrentAndPreviousYearTotalStats_current_kyotoFlatPlacementCounts_2 INTEGER NULL,
    -- 京都平地着回数 
    CurrentAndPreviousYearTotalStats_current_kyotoFlatPlacementCounts_3 INTEGER NULL,
    -- 京都平地着回数 
    CurrentAndPreviousYearTotalStats_current_kyotoFlatPlacementCounts_4 INTEGER NULL,
    -- 京都平地着回数 
    CurrentAndPreviousYearTotalStats_current_kyotoFlatPlacementCounts_5 INTEGER NULL,
    -- 京都平地着回数 
    CurrentAndPreviousYearTotalStats_current_kyotoFlatPlacementCounts_6 INTEGER NULL,
    -- 京都障害着回数 
    CurrentAndPreviousYearTotalStats_current_kyotoObstaclePlacementCounts_1 INTEGER NULL,
    -- 京都障害着回数 
    CurrentAndPreviousYearTotalStats_current_kyotoObstaclePlacementCounts_2 INTEGER NULL,
    -- 京都障害着回数 
    CurrentAndPreviousYearTotalStats_current_kyotoObstaclePlacementCounts_3 INTEGER NULL,
    -- 京都障害着回数 
    CurrentAndPreviousYearTotalStats_current_kyotoObstaclePlacementCounts_4 INTEGER NULL,
    -- 京都障害着回数 
    CurrentAndPreviousYearTotalStats_current_kyotoObstaclePlacementCounts_5 INTEGER NULL,
    -- 京都障害着回数 
    CurrentAndPreviousYearTotalStats_current_kyotoObstaclePlacementCounts_6 INTEGER NULL,
    -- 阪神平地着回数 
    CurrentAndPreviousYearTotalStats_current_hanshinFlatPlacementCounts_1 INTEGER NULL,
    -- 阪神平地着回数 
    CurrentAndPreviousYearTotalStats_current_hanshinFlatPlacementCounts_2 INTEGER NULL,
    -- 阪神平地着回数 
    CurrentAndPreviousYearTotalStats_current_hanshinFlatPlacementCounts_3 INTEGER NULL,
    -- 阪神平地着回数 
    CurrentAndPreviousYearTotalStats_current_hanshinFlatPlacementCounts_4 INTEGER NULL,
    -- 阪神平地着回数 
    CurrentAndPreviousYearTotalStats_current_hanshinFlatPlacementCounts_5 INTEGER NULL,
    -- 阪神平地着回数 
    CurrentAndPreviousYearTotalStats_current_hanshinFlatPlacementCounts_6 INTEGER NULL,
    -- 阪神障害着回数 
    CurrentAndPreviousYearTotalStats_current_hanshinSteeplechasePlacementCounts_1 INTEGER NULL,
    -- 阪神障害着回数 
    CurrentAndPreviousYearTotalStats_current_hanshinSteeplechasePlacementCounts_2 INTEGER NULL,
    -- 阪神障害着回数 
    CurrentAndPreviousYearTotalStats_current_hanshinSteeplechasePlacementCounts_3 INTEGER NULL,
    -- 阪神障害着回数 
    CurrentAndPreviousYearTotalStats_current_hanshinSteeplechasePlacementCounts_4 INTEGER NULL,
    -- 阪神障害着回数 
    CurrentAndPreviousYearTotalStats_current_hanshinSteeplechasePlacementCounts_5 INTEGER NULL,
    -- 阪神障害着回数 
    CurrentAndPreviousYearTotalStats_current_hanshinSteeplechasePlacementCounts_6 INTEGER NULL,
    -- 小倉平地着回数 
    CurrentAndPreviousYearTotalStats_current_kokuraFlatPlacementCount_1 INTEGER NULL,
    -- 小倉平地着回数 
    CurrentAndPreviousYearTotalStats_current_kokuraFlatPlacementCount_2 INTEGER NULL,
    -- 小倉平地着回数 
    CurrentAndPreviousYearTotalStats_current_kokuraFlatPlacementCount_3 INTEGER NULL,
    -- 小倉平地着回数 
    CurrentAndPreviousYearTotalStats_current_kokuraFlatPlacementCount_4 INTEGER NULL,
    -- 小倉平地着回数 
    CurrentAndPreviousYearTotalStats_current_kokuraFlatPlacementCount_5 INTEGER NULL,
    -- 小倉平地着回数 
    CurrentAndPreviousYearTotalStats_current_kokuraFlatPlacementCount_6 INTEGER NULL,
    -- 小倉障害着回数 
    CurrentAndPreviousYearTotalStats_current_kokuraSteeplechasePlacementCount_1 INTEGER NULL,
    -- 小倉障害着回数 
    CurrentAndPreviousYearTotalStats_current_kokuraSteeplechasePlacementCount_2 INTEGER NULL,
    -- 小倉障害着回数 
    CurrentAndPreviousYearTotalStats_current_kokuraSteeplechasePlacementCount_3 INTEGER NULL,
    -- 小倉障害着回数 
    CurrentAndPreviousYearTotalStats_current_kokuraSteeplechasePlacementCount_4 INTEGER NULL,
    -- 小倉障害着回数 
    CurrentAndPreviousYearTotalStats_current_kokuraSteeplechasePlacementCount_5 INTEGER NULL,
    -- 小倉障害着回数 
    CurrentAndPreviousYearTotalStats_current_kokuraSteeplechasePlacementCount_6 INTEGER NULL,
    -- 芝16下・着回数 
    CurrentAndPreviousYearTotalStats_current_turfUnder16PlacementCount_1 INTEGER NULL,
    -- 芝16下・着回数 
    CurrentAndPreviousYearTotalStats_current_turfUnder16PlacementCount_2 INTEGER NULL,
    -- 芝16下・着回数 
    CurrentAndPreviousYearTotalStats_current_turfUnder16PlacementCount_3 INTEGER NULL,
    -- 芝16下・着回数 
    CurrentAndPreviousYearTotalStats_current_turfUnder16PlacementCount_4 INTEGER NULL,
    -- 芝16下・着回数 
    CurrentAndPreviousYearTotalStats_current_turfUnder16PlacementCount_5 INTEGER NULL,
    -- 芝16下・着回数 
    CurrentAndPreviousYearTotalStats_current_turfUnder16PlacementCount_6 INTEGER NULL,
    -- 芝22下・着回数 
    CurrentAndPreviousYearTotalStats_current_turfUnder22PlacementCount_1 INTEGER NULL,
    -- 芝22下・着回数 
    CurrentAndPreviousYearTotalStats_current_turfUnder22PlacementCount_2 INTEGER NULL,
    -- 芝22下・着回数 
    CurrentAndPreviousYearTotalStats_current_turfUnder22PlacementCount_3 INTEGER NULL,
    -- 芝22下・着回数 
    CurrentAndPreviousYearTotalStats_current_turfUnder22PlacementCount_4 INTEGER NULL,
    -- 芝22下・着回数 
    CurrentAndPreviousYearTotalStats_current_turfUnder22PlacementCount_5 INTEGER NULL,
    -- 芝22下・着回数 
    CurrentAndPreviousYearTotalStats_current_turfUnder22PlacementCount_6 INTEGER NULL,
    -- 芝22超・着回数 
    CurrentAndPreviousYearTotalStats_current_turfOver22PlacementCount_1 INTEGER NULL,
    -- 芝22超・着回数 
    CurrentAndPreviousYearTotalStats_current_turfOver22PlacementCount_2 INTEGER NULL,
    -- 芝22超・着回数 
    CurrentAndPreviousYearTotalStats_current_turfOver22PlacementCount_3 INTEGER NULL,
    -- 芝22超・着回数 
    CurrentAndPreviousYearTotalStats_current_turfOver22PlacementCount_4 INTEGER NULL,
    -- 芝22超・着回数 
    CurrentAndPreviousYearTotalStats_current_turfOver22PlacementCount_5 INTEGER NULL,
    -- 芝22超・着回数 
    CurrentAndPreviousYearTotalStats_current_turfOver22PlacementCount_6 INTEGER NULL,
    -- ダ16下・着回数 
    CurrentAndPreviousYearTotalStats_current_dirtUnder16PlacementCount_1 INTEGER NULL,
    -- ダ16下・着回数 
    CurrentAndPreviousYearTotalStats_current_dirtUnder16PlacementCount_2 INTEGER NULL,
    -- ダ16下・着回数 
    CurrentAndPreviousYearTotalStats_current_dirtUnder16PlacementCount_3 INTEGER NULL,
    -- ダ16下・着回数 
    CurrentAndPreviousYearTotalStats_current_dirtUnder16PlacementCount_4 INTEGER NULL,
    -- ダ16下・着回数 
    CurrentAndPreviousYearTotalStats_current_dirtUnder16PlacementCount_5 INTEGER NULL,
    -- ダ16下・着回数 
    CurrentAndPreviousYearTotalStats_current_dirtUnder16PlacementCount_6 INTEGER NULL,
    -- ダ22下・着回数 
    CurrentAndPreviousYearTotalStats_current_dirtUnder22PlacementCount_1 INTEGER NULL,
    -- ダ22下・着回数 
    CurrentAndPreviousYearTotalStats_current_dirtUnder22PlacementCount_2 INTEGER NULL,
    -- ダ22下・着回数 
    CurrentAndPreviousYearTotalStats_current_dirtUnder22PlacementCount_3 INTEGER NULL,
    -- ダ22下・着回数 
    CurrentAndPreviousYearTotalStats_current_dirtUnder22PlacementCount_4 INTEGER NULL,
    -- ダ22下・着回数 
    CurrentAndPreviousYearTotalStats_current_dirtUnder22PlacementCount_5 INTEGER NULL,
    -- ダ22下・着回数 
    CurrentAndPreviousYearTotalStats_current_dirtUnder22PlacementCount_6 INTEGER NULL,
    -- ダ22超・着回数 
    CurrentAndPreviousYearTotalStats_current_dirtOver22PlacementCount_1 INTEGER NULL,
    -- ダ22超・着回数 
    CurrentAndPreviousYearTotalStats_current_dirtOver22PlacementCount_2 INTEGER NULL,
    -- ダ22超・着回数 
    CurrentAndPreviousYearTotalStats_current_dirtOver22PlacementCount_3 INTEGER NULL,
    -- ダ22超・着回数 
    CurrentAndPreviousYearTotalStats_current_dirtOver22PlacementCount_4 INTEGER NULL,
    -- ダ22超・着回数 
    CurrentAndPreviousYearTotalStats_current_dirtOver22PlacementCount_5 INTEGER NULL,
    -- ダ22超・着回数 
    CurrentAndPreviousYearTotalStats_current_dirtOver22PlacementCount_6 INTEGER NULL,
    -- 設定年 
    CurrentAndPreviousYearTotalStats_previous_settingYear TEXT NULL,
    -- 平地本賞金合計 
    CurrentAndPreviousYearTotalStats_previous_flatMainPrizeMonayTotal INTEGER NULL,
    -- 障害本賞金合計 
    CurrentAndPreviousYearTotalStats_previous_obstacleMainPrizeMoneyTotal INTEGER NULL,
    -- 平地付加賞金合計 
    CurrentAndPreviousYearTotalStats_previous_flatAdditionalPrizeMoneyTotal INTEGER NULL,
    -- 障害付加賞金合計 
    CurrentAndPreviousYearTotalStats_previous_obstacleAdditionalPrizeMoneyTotal INTEGER NULL,
    -- 平地着回数 
    CurrentAndPreviousYearTotalStats_previous_flatPlacementCount_1 INTEGER NULL,
    -- 平地着回数 
    CurrentAndPreviousYearTotalStats_previous_flatPlacementCount_2 INTEGER NULL,
    -- 平地着回数 
    CurrentAndPreviousYearTotalStats_previous_flatPlacementCount_3 INTEGER NULL,
    -- 平地着回数 
    CurrentAndPreviousYearTotalStats_previous_flatPlacementCount_4 INTEGER NULL,
    -- 平地着回数 
    CurrentAndPreviousYearTotalStats_previous_flatPlacementCount_5 INTEGER NULL,
    -- 平地着回数 
    CurrentAndPreviousYearTotalStats_previous_flatPlacementCount_6 INTEGER NULL,
    -- 障害着回数 
    CurrentAndPreviousYearTotalStats_previous_obstaclePlacementCount_1 INTEGER NULL,
    -- 障害着回数 
    CurrentAndPreviousYearTotalStats_previous_obstaclePlacementCount_2 INTEGER NULL,
    -- 障害着回数 
    CurrentAndPreviousYearTotalStats_previous_obstaclePlacementCount_3 INTEGER NULL,
    -- 障害着回数 
    CurrentAndPreviousYearTotalStats_previous_obstaclePlacementCount_4 INTEGER NULL,
    -- 障害着回数 
    CurrentAndPreviousYearTotalStats_previous_obstaclePlacementCount_5 INTEGER NULL,
    -- 障害着回数 
    CurrentAndPreviousYearTotalStats_previous_obstaclePlacementCount_6 INTEGER NULL,
    -- 札幌平地着回数 
    CurrentAndPreviousYearTotalStats_previous_sapporoFlatPlacementCounts_1 INTEGER NULL,
    -- 札幌平地着回数 
    CurrentAndPreviousYearTotalStats_previous_sapporoFlatPlacementCounts_2 INTEGER NULL,
    -- 札幌平地着回数 
    CurrentAndPreviousYearTotalStats_previous_sapporoFlatPlacementCounts_3 INTEGER NULL,
    -- 札幌平地着回数 
    CurrentAndPreviousYearTotalStats_previous_sapporoFlatPlacementCounts_4 INTEGER NULL,
    -- 札幌平地着回数 
    CurrentAndPreviousYearTotalStats_previous_sapporoFlatPlacementCounts_5 INTEGER NULL,
    -- 札幌平地着回数 
    CurrentAndPreviousYearTotalStats_previous_sapporoFlatPlacementCounts_6 INTEGER NULL,
    -- 札幌障害着回数 
    CurrentAndPreviousYearTotalStats_previous_sapporoSteeplechasePlacementCounts_1 INTEGER NULL,
    -- 札幌障害着回数 
    CurrentAndPreviousYearTotalStats_previous_sapporoSteeplechasePlacementCounts_2 INTEGER NULL,
    -- 札幌障害着回数 
    CurrentAndPreviousYearTotalStats_previous_sapporoSteeplechasePlacementCounts_3 INTEGER NULL,
    -- 札幌障害着回数 
    CurrentAndPreviousYearTotalStats_previous_sapporoSteeplechasePlacementCounts_4 INTEGER NULL,
    -- 札幌障害着回数 
    CurrentAndPreviousYearTotalStats_previous_sapporoSteeplechasePlacementCounts_5 INTEGER NULL,
    -- 札幌障害着回数 
    CurrentAndPreviousYearTotalStats_previous_sapporoSteeplechasePlacementCounts_6 INTEGER NULL,
    -- 函館平地着回数 
    CurrentAndPreviousYearTotalStats_previous_hakodateFlatPlacementCount_1 INTEGER NULL,
    -- 函館平地着回数 
    CurrentAndPreviousYearTotalStats_previous_hakodateFlatPlacementCount_2 INTEGER NULL,
    -- 函館平地着回数 
    CurrentAndPreviousYearTotalStats_previous_hakodateFlatPlacementCount_3 INTEGER NULL,
    -- 函館平地着回数 
    CurrentAndPreviousYearTotalStats_previous_hakodateFlatPlacementCount_4 INTEGER NULL,
    -- 函館平地着回数 
    CurrentAndPreviousYearTotalStats_previous_hakodateFlatPlacementCount_5 INTEGER NULL,
    -- 函館平地着回数 
    CurrentAndPreviousYearTotalStats_previous_hakodateFlatPlacementCount_6 INTEGER NULL,
    -- 函館障害着回数 
    CurrentAndPreviousYearTotalStats_previous_hakodateSteeplechasePlacementCount_1 INTEGER NULL,
    -- 函館障害着回数 
    CurrentAndPreviousYearTotalStats_previous_hakodateSteeplechasePlacementCount_2 INTEGER NULL,
    -- 函館障害着回数 
    CurrentAndPreviousYearTotalStats_previous_hakodateSteeplechasePlacementCount_3 INTEGER NULL,
    -- 函館障害着回数 
    CurrentAndPreviousYearTotalStats_previous_hakodateSteeplechasePlacementCount_4 INTEGER NULL,
    -- 函館障害着回数 
    CurrentAndPreviousYearTotalStats_previous_hakodateSteeplechasePlacementCount_5 INTEGER NULL,
    -- 函館障害着回数 
    CurrentAndPreviousYearTotalStats_previous_hakodateSteeplechasePlacementCount_6 INTEGER NULL,
    -- 福島平地着回数 
    CurrentAndPreviousYearTotalStats_previous_fukushimaFlatPlacementCounts_1 INTEGER NULL,
    -- 福島平地着回数 
    CurrentAndPreviousYearTotalStats_previous_fukushimaFlatPlacementCounts_2 INTEGER NULL,
    -- 福島平地着回数 
    CurrentAndPreviousYearTotalStats_previous_fukushimaFlatPlacementCounts_3 INTEGER NULL,
    -- 福島平地着回数 
    CurrentAndPreviousYearTotalStats_previous_fukushimaFlatPlacementCounts_4 INTEGER NULL,
    -- 福島平地着回数 
    CurrentAndPreviousYearTotalStats_previous_fukushimaFlatPlacementCounts_5 INTEGER NULL,
    -- 福島平地着回数 
    CurrentAndPreviousYearTotalStats_previous_fukushimaFlatPlacementCounts_6 INTEGER NULL,
    -- 福島障害着回数 
    CurrentAndPreviousYearTotalStats_previous_fukushimaSteeplechasePlacementCounts_1 INTEGER NULL,
    -- 福島障害着回数 
    CurrentAndPreviousYearTotalStats_previous_fukushimaSteeplechasePlacementCounts_2 INTEGER NULL,
    -- 福島障害着回数 
    CurrentAndPreviousYearTotalStats_previous_fukushimaSteeplechasePlacementCounts_3 INTEGER NULL,
    -- 福島障害着回数 
    CurrentAndPreviousYearTotalStats_previous_fukushimaSteeplechasePlacementCounts_4 INTEGER NULL,
    -- 福島障害着回数 
    CurrentAndPreviousYearTotalStats_previous_fukushimaSteeplechasePlacementCounts_5 INTEGER NULL,
    -- 福島障害着回数 
    CurrentAndPreviousYearTotalStats_previous_fukushimaSteeplechasePlacementCounts_6 INTEGER NULL,
    -- 新潟平地着回数 
    CurrentAndPreviousYearTotalStats_previous_niigataFlatPlacementCounts_1 INTEGER NULL,
    -- 新潟平地着回数 
    CurrentAndPreviousYearTotalStats_previous_niigataFlatPlacementCounts_2 INTEGER NULL,
    -- 新潟平地着回数 
    CurrentAndPreviousYearTotalStats_previous_niigataFlatPlacementCounts_3 INTEGER NULL,
    -- 新潟平地着回数 
    CurrentAndPreviousYearTotalStats_previous_niigataFlatPlacementCounts_4 INTEGER NULL,
    -- 新潟平地着回数 
    CurrentAndPreviousYearTotalStats_previous_niigataFlatPlacementCounts_5 INTEGER NULL,
    -- 新潟平地着回数 
    CurrentAndPreviousYearTotalStats_previous_niigataFlatPlacementCounts_6 INTEGER NULL,
    -- 新潟障害着回数 
    CurrentAndPreviousYearTotalStats_previous_niigataSteeplechasePlacementCounts_1 INTEGER NULL,
    -- 新潟障害着回数 
    CurrentAndPreviousYearTotalStats_previous_niigataSteeplechasePlacementCounts_2 INTEGER NULL,
    -- 新潟障害着回数 
    CurrentAndPreviousYearTotalStats_previous_niigataSteeplechasePlacementCounts_3 INTEGER NULL,
    -- 新潟障害着回数 
    CurrentAndPreviousYearTotalStats_previous_niigataSteeplechasePlacementCounts_4 INTEGER NULL,
    -- 新潟障害着回数 
    CurrentAndPreviousYearTotalStats_previous_niigataSteeplechasePlacementCounts_5 INTEGER NULL,
    -- 新潟障害着回数 
    CurrentAndPreviousYearTotalStats_previous_niigataSteeplechasePlacementCounts_6 INTEGER NULL,
    -- 東京平地着回数 
    CurrentAndPreviousYearTotalStats_previous_tokyoFlatPlacementCount_1 INTEGER NULL,
    -- 東京平地着回数 
    CurrentAndPreviousYearTotalStats_previous_tokyoFlatPlacementCount_2 INTEGER NULL,
    -- 東京平地着回数 
    CurrentAndPreviousYearTotalStats_previous_tokyoFlatPlacementCount_3 INTEGER NULL,
    -- 東京平地着回数 
    CurrentAndPreviousYearTotalStats_previous_tokyoFlatPlacementCount_4 INTEGER NULL,
    -- 東京平地着回数 
    CurrentAndPreviousYearTotalStats_previous_tokyoFlatPlacementCount_5 INTEGER NULL,
    -- 東京平地着回数 
    CurrentAndPreviousYearTotalStats_previous_tokyoFlatPlacementCount_6 INTEGER NULL,
    -- 東京障害着回数 
    CurrentAndPreviousYearTotalStats_previous_tokyoSteeplechasePlacementCount_1 INTEGER NULL,
    -- 東京障害着回数 
    CurrentAndPreviousYearTotalStats_previous_tokyoSteeplechasePlacementCount_2 INTEGER NULL,
    -- 東京障害着回数 
    CurrentAndPreviousYearTotalStats_previous_tokyoSteeplechasePlacementCount_3 INTEGER NULL,
    -- 東京障害着回数 
    CurrentAndPreviousYearTotalStats_previous_tokyoSteeplechasePlacementCount_4 INTEGER NULL,
    -- 東京障害着回数 
    CurrentAndPreviousYearTotalStats_previous_tokyoSteeplechasePlacementCount_5 INTEGER NULL,
    -- 東京障害着回数 
    CurrentAndPreviousYearTotalStats_previous_tokyoSteeplechasePlacementCount_6 INTEGER NULL,
    -- 中山平地着回数 
    CurrentAndPreviousYearTotalStats_previous_nakayamaFlatPlacementCount_1 INTEGER NULL,
    -- 中山平地着回数 
    CurrentAndPreviousYearTotalStats_previous_nakayamaFlatPlacementCount_2 INTEGER NULL,
    -- 中山平地着回数 
    CurrentAndPreviousYearTotalStats_previous_nakayamaFlatPlacementCount_3 INTEGER NULL,
    -- 中山平地着回数 
    CurrentAndPreviousYearTotalStats_previous_nakayamaFlatPlacementCount_4 INTEGER NULL,
    -- 中山平地着回数 
    CurrentAndPreviousYearTotalStats_previous_nakayamaFlatPlacementCount_5 INTEGER NULL,
    -- 中山平地着回数 
    CurrentAndPreviousYearTotalStats_previous_nakayamaFlatPlacementCount_6 INTEGER NULL,
    -- 中山障害着回数 
    CurrentAndPreviousYearTotalStats_previous_nakayamaSteeplechasePlacementCount_1 INTEGER NULL,
    -- 中山障害着回数 
    CurrentAndPreviousYearTotalStats_previous_nakayamaSteeplechasePlacementCount_2 INTEGER NULL,
    -- 中山障害着回数 
    CurrentAndPreviousYearTotalStats_previous_nakayamaSteeplechasePlacementCount_3 INTEGER NULL,
    -- 中山障害着回数 
    CurrentAndPreviousYearTotalStats_previous_nakayamaSteeplechasePlacementCount_4 INTEGER NULL,
    -- 中山障害着回数 
    CurrentAndPreviousYearTotalStats_previous_nakayamaSteeplechasePlacementCount_5 INTEGER NULL,
    -- 中山障害着回数 
    CurrentAndPreviousYearTotalStats_previous_nakayamaSteeplechasePlacementCount_6 INTEGER NULL,
    -- 中京平地着回数 
    CurrentAndPreviousYearTotalStats_previous_chukyoFlatPlacementCount_1 INTEGER NULL,
    -- 中京平地着回数 
    CurrentAndPreviousYearTotalStats_previous_chukyoFlatPlacementCount_2 INTEGER NULL,
    -- 中京平地着回数 
    CurrentAndPreviousYearTotalStats_previous_chukyoFlatPlacementCount_3 INTEGER NULL,
    -- 中京平地着回数 
    CurrentAndPreviousYearTotalStats_previous_chukyoFlatPlacementCount_4 INTEGER NULL,
    -- 中京平地着回数 
    CurrentAndPreviousYearTotalStats_previous_chukyoFlatPlacementCount_5 INTEGER NULL,
    -- 中京平地着回数 
    CurrentAndPreviousYearTotalStats_previous_chukyoFlatPlacementCount_6 INTEGER NULL,
    -- 中京障害着回数 
    CurrentAndPreviousYearTotalStats_previous_chukyoSteeplechasePlacementCount_1 INTEGER NULL,
    -- 中京障害着回数 
    CurrentAndPreviousYearTotalStats_previous_chukyoSteeplechasePlacementCount_2 INTEGER NULL,
    -- 中京障害着回数 
    CurrentAndPreviousYearTotalStats_previous_chukyoSteeplechasePlacementCount_3 INTEGER NULL,
    -- 中京障害着回数 
    CurrentAndPreviousYearTotalStats_previous_chukyoSteeplechasePlacementCount_4 INTEGER NULL,
    -- 中京障害着回数 
    CurrentAndPreviousYearTotalStats_previous_chukyoSteeplechasePlacementCount_5 INTEGER NULL,
    -- 中京障害着回数 
    CurrentAndPreviousYearTotalStats_previous_chukyoSteeplechasePlacementCount_6 INTEGER NULL,
    -- 京都平地着回数 
    CurrentAndPreviousYearTotalStats_previous_kyotoFlatPlacementCounts_1 INTEGER NULL,
    -- 京都平地着回数 
    CurrentAndPreviousYearTotalStats_previous_kyotoFlatPlacementCounts_2 INTEGER NULL,
    -- 京都平地着回数 
    CurrentAndPreviousYearTotalStats_previous_kyotoFlatPlacementCounts_3 INTEGER NULL,
    -- 京都平地着回数 
    CurrentAndPreviousYearTotalStats_previous_kyotoFlatPlacementCounts_4 INTEGER NULL,
    -- 京都平地着回数 
    CurrentAndPreviousYearTotalStats_previous_kyotoFlatPlacementCounts_5 INTEGER NULL,
    -- 京都平地着回数 
    CurrentAndPreviousYearTotalStats_previous_kyotoFlatPlacementCounts_6 INTEGER NULL,
    -- 京都障害着回数 
    CurrentAndPreviousYearTotalStats_previous_kyotoObstaclePlacementCounts_1 INTEGER NULL,
    -- 京都障害着回数 
    CurrentAndPreviousYearTotalStats_previous_kyotoObstaclePlacementCounts_2 INTEGER NULL,
    -- 京都障害着回数 
    CurrentAndPreviousYearTotalStats_previous_kyotoObstaclePlacementCounts_3 INTEGER NULL,
    -- 京都障害着回数 
    CurrentAndPreviousYearTotalStats_previous_kyotoObstaclePlacementCounts_4 INTEGER NULL,
    -- 京都障害着回数 
    CurrentAndPreviousYearTotalStats_previous_kyotoObstaclePlacementCounts_5 INTEGER NULL,
    -- 京都障害着回数 
    CurrentAndPreviousYearTotalStats_previous_kyotoObstaclePlacementCounts_6 INTEGER NULL,
    -- 阪神平地着回数 
    CurrentAndPreviousYearTotalStats_previous_hanshinFlatPlacementCounts_1 INTEGER NULL,
    -- 阪神平地着回数 
    CurrentAndPreviousYearTotalStats_previous_hanshinFlatPlacementCounts_2 INTEGER NULL,
    -- 阪神平地着回数 
    CurrentAndPreviousYearTotalStats_previous_hanshinFlatPlacementCounts_3 INTEGER NULL,
    -- 阪神平地着回数 
    CurrentAndPreviousYearTotalStats_previous_hanshinFlatPlacementCounts_4 INTEGER NULL,
    -- 阪神平地着回数 
    CurrentAndPreviousYearTotalStats_previous_hanshinFlatPlacementCounts_5 INTEGER NULL,
    -- 阪神平地着回数 
    CurrentAndPreviousYearTotalStats_previous_hanshinFlatPlacementCounts_6 INTEGER NULL,
    -- 阪神障害着回数 
    CurrentAndPreviousYearTotalStats_previous_hanshinSteeplechasePlacementCounts_1 INTEGER NULL,
    -- 阪神障害着回数 
    CurrentAndPreviousYearTotalStats_previous_hanshinSteeplechasePlacementCounts_2 INTEGER NULL,
    -- 阪神障害着回数 
    CurrentAndPreviousYearTotalStats_previous_hanshinSteeplechasePlacementCounts_3 INTEGER NULL,
    -- 阪神障害着回数 
    CurrentAndPreviousYearTotalStats_previous_hanshinSteeplechasePlacementCounts_4 INTEGER NULL,
    -- 阪神障害着回数 
    CurrentAndPreviousYearTotalStats_previous_hanshinSteeplechasePlacementCounts_5 INTEGER NULL,
    -- 阪神障害着回数 
    CurrentAndPreviousYearTotalStats_previous_hanshinSteeplechasePlacementCounts_6 INTEGER NULL,
    -- 小倉平地着回数 
    CurrentAndPreviousYearTotalStats_previous_kokuraFlatPlacementCount_1 INTEGER NULL,
    -- 小倉平地着回数 
    CurrentAndPreviousYearTotalStats_previous_kokuraFlatPlacementCount_2 INTEGER NULL,
    -- 小倉平地着回数 
    CurrentAndPreviousYearTotalStats_previous_kokuraFlatPlacementCount_3 INTEGER NULL,
    -- 小倉平地着回数 
    CurrentAndPreviousYearTotalStats_previous_kokuraFlatPlacementCount_4 INTEGER NULL,
    -- 小倉平地着回数 
    CurrentAndPreviousYearTotalStats_previous_kokuraFlatPlacementCount_5 INTEGER NULL,
    -- 小倉平地着回数 
    CurrentAndPreviousYearTotalStats_previous_kokuraFlatPlacementCount_6 INTEGER NULL,
    -- 小倉障害着回数 
    CurrentAndPreviousYearTotalStats_previous_kokuraSteeplechasePlacementCount_1 INTEGER NULL,
    -- 小倉障害着回数 
    CurrentAndPreviousYearTotalStats_previous_kokuraSteeplechasePlacementCount_2 INTEGER NULL,
    -- 小倉障害着回数 
    CurrentAndPreviousYearTotalStats_previous_kokuraSteeplechasePlacementCount_3 INTEGER NULL,
    -- 小倉障害着回数 
    CurrentAndPreviousYearTotalStats_previous_kokuraSteeplechasePlacementCount_4 INTEGER NULL,
    -- 小倉障害着回数 
    CurrentAndPreviousYearTotalStats_previous_kokuraSteeplechasePlacementCount_5 INTEGER NULL,
    -- 小倉障害着回数 
    CurrentAndPreviousYearTotalStats_previous_kokuraSteeplechasePlacementCount_6 INTEGER NULL,
    -- 芝16下・着回数 
    CurrentAndPreviousYearTotalStats_previous_turfUnder16PlacementCount_1 INTEGER NULL,
    -- 芝16下・着回数 
    CurrentAndPreviousYearTotalStats_previous_turfUnder16PlacementCount_2 INTEGER NULL,
    -- 芝16下・着回数 
    CurrentAndPreviousYearTotalStats_previous_turfUnder16PlacementCount_3 INTEGER NULL,
    -- 芝16下・着回数 
    CurrentAndPreviousYearTotalStats_previous_turfUnder16PlacementCount_4 INTEGER NULL,
    -- 芝16下・着回数 
    CurrentAndPreviousYearTotalStats_previous_turfUnder16PlacementCount_5 INTEGER NULL,
    -- 芝16下・着回数 
    CurrentAndPreviousYearTotalStats_previous_turfUnder16PlacementCount_6 INTEGER NULL,
    -- 芝22下・着回数 
    CurrentAndPreviousYearTotalStats_previous_turfUnder22PlacementCount_1 INTEGER NULL,
    -- 芝22下・着回数 
    CurrentAndPreviousYearTotalStats_previous_turfUnder22PlacementCount_2 INTEGER NULL,
    -- 芝22下・着回数 
    CurrentAndPreviousYearTotalStats_previous_turfUnder22PlacementCount_3 INTEGER NULL,
    -- 芝22下・着回数 
    CurrentAndPreviousYearTotalStats_previous_turfUnder22PlacementCount_4 INTEGER NULL,
    -- 芝22下・着回数 
    CurrentAndPreviousYearTotalStats_previous_turfUnder22PlacementCount_5 INTEGER NULL,
    -- 芝22下・着回数 
    CurrentAndPreviousYearTotalStats_previous_turfUnder22PlacementCount_6 INTEGER NULL,
    -- 芝22超・着回数 
    CurrentAndPreviousYearTotalStats_previous_turfOver22PlacementCount_1 INTEGER NULL,
    -- 芝22超・着回数 
    CurrentAndPreviousYearTotalStats_previous_turfOver22PlacementCount_2 INTEGER NULL,
    -- 芝22超・着回数 
    CurrentAndPreviousYearTotalStats_previous_turfOver22PlacementCount_3 INTEGER NULL,
    -- 芝22超・着回数 
    CurrentAndPreviousYearTotalStats_previous_turfOver22PlacementCount_4 INTEGER NULL,
    -- 芝22超・着回数 
    CurrentAndPreviousYearTotalStats_previous_turfOver22PlacementCount_5 INTEGER NULL,
    -- 芝22超・着回数 
    CurrentAndPreviousYearTotalStats_previous_turfOver22PlacementCount_6 INTEGER NULL,
    -- ダ16下・着回数 
    CurrentAndPreviousYearTotalStats_previous_dirtUnder16PlacementCount_1 INTEGER NULL,
    -- ダ16下・着回数 
    CurrentAndPreviousYearTotalStats_previous_dirtUnder16PlacementCount_2 INTEGER NULL,
    -- ダ16下・着回数 
    CurrentAndPreviousYearTotalStats_previous_dirtUnder16PlacementCount_3 INTEGER NULL,
    -- ダ16下・着回数 
    CurrentAndPreviousYearTotalStats_previous_dirtUnder16PlacementCount_4 INTEGER NULL,
    -- ダ16下・着回数 
    CurrentAndPreviousYearTotalStats_previous_dirtUnder16PlacementCount_5 INTEGER NULL,
    -- ダ16下・着回数 
    CurrentAndPreviousYearTotalStats_previous_dirtUnder16PlacementCount_6 INTEGER NULL,
    -- ダ22下・着回数 
    CurrentAndPreviousYearTotalStats_previous_dirtUnder22PlacementCount_1 INTEGER NULL,
    -- ダ22下・着回数 
    CurrentAndPreviousYearTotalStats_previous_dirtUnder22PlacementCount_2 INTEGER NULL,
    -- ダ22下・着回数 
    CurrentAndPreviousYearTotalStats_previous_dirtUnder22PlacementCount_3 INTEGER NULL,
    -- ダ22下・着回数 
    CurrentAndPreviousYearTotalStats_previous_dirtUnder22PlacementCount_4 INTEGER NULL,
    -- ダ22下・着回数 
    CurrentAndPreviousYearTotalStats_previous_dirtUnder22PlacementCount_5 INTEGER NULL,
    -- ダ22下・着回数 
    CurrentAndPreviousYearTotalStats_previous_dirtUnder22PlacementCount_6 INTEGER NULL,
    -- ダ22超・着回数 
    CurrentAndPreviousYearTotalStats_previous_dirtOver22PlacementCount_1 INTEGER NULL,
    -- ダ22超・着回数 
    CurrentAndPreviousYearTotalStats_previous_dirtOver22PlacementCount_2 INTEGER NULL,
    -- ダ22超・着回数 
    CurrentAndPreviousYearTotalStats_previous_dirtOver22PlacementCount_3 INTEGER NULL,
    -- ダ22超・着回数 
    CurrentAndPreviousYearTotalStats_previous_dirtOver22PlacementCount_4 INTEGER NULL,
    -- ダ22超・着回数 
    CurrentAndPreviousYearTotalStats_previous_dirtOver22PlacementCount_5 INTEGER NULL,
    -- ダ22超・着回数 
    CurrentAndPreviousYearTotalStats_previous_dirtOver22PlacementCount_6 INTEGER NULL,
    -- 設定年 
    CurrentAndPreviousYearTotalStats_cumulative_settingYear TEXT NULL,
    -- 平地本賞金合計 
    CurrentAndPreviousYearTotalStats_cumulative_flatMainPrizeMonayTotal INTEGER NULL,
    -- 障害本賞金合計 
    CurrentAndPreviousYearTotalStats_cumulative_obstacleMainPrizeMoneyTotal INTEGER NULL,
    -- 平地付加賞金合計 
    CurrentAndPreviousYearTotalStats_cumulative_flatAdditionalPrizeMoneyTotal INTEGER NULL,
    -- 障害付加賞金合計 
    CurrentAndPreviousYearTotalStats_cumulative_obstacleAdditionalPrizeMoneyTotal INTEGER NULL,
    -- 平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_flatPlacementCount_1 INTEGER NULL,
    -- 平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_flatPlacementCount_2 INTEGER NULL,
    -- 平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_flatPlacementCount_3 INTEGER NULL,
    -- 平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_flatPlacementCount_4 INTEGER NULL,
    -- 平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_flatPlacementCount_5 INTEGER NULL,
    -- 平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_flatPlacementCount_6 INTEGER NULL,
    -- 障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_obstaclePlacementCount_1 INTEGER NULL,
    -- 障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_obstaclePlacementCount_2 INTEGER NULL,
    -- 障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_obstaclePlacementCount_3 INTEGER NULL,
    -- 障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_obstaclePlacementCount_4 INTEGER NULL,
    -- 障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_obstaclePlacementCount_5 INTEGER NULL,
    -- 障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_obstaclePlacementCount_6 INTEGER NULL,
    -- 札幌平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_sapporoFlatPlacementCounts_1 INTEGER NULL,
    -- 札幌平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_sapporoFlatPlacementCounts_2 INTEGER NULL,
    -- 札幌平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_sapporoFlatPlacementCounts_3 INTEGER NULL,
    -- 札幌平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_sapporoFlatPlacementCounts_4 INTEGER NULL,
    -- 札幌平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_sapporoFlatPlacementCounts_5 INTEGER NULL,
    -- 札幌平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_sapporoFlatPlacementCounts_6 INTEGER NULL,
    -- 札幌障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_sapporoSteeplechasePlacementCounts_1 INTEGER NULL,
    -- 札幌障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_sapporoSteeplechasePlacementCounts_2 INTEGER NULL,
    -- 札幌障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_sapporoSteeplechasePlacementCounts_3 INTEGER NULL,
    -- 札幌障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_sapporoSteeplechasePlacementCounts_4 INTEGER NULL,
    -- 札幌障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_sapporoSteeplechasePlacementCounts_5 INTEGER NULL,
    -- 札幌障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_sapporoSteeplechasePlacementCounts_6 INTEGER NULL,
    -- 函館平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_hakodateFlatPlacementCount_1 INTEGER NULL,
    -- 函館平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_hakodateFlatPlacementCount_2 INTEGER NULL,
    -- 函館平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_hakodateFlatPlacementCount_3 INTEGER NULL,
    -- 函館平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_hakodateFlatPlacementCount_4 INTEGER NULL,
    -- 函館平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_hakodateFlatPlacementCount_5 INTEGER NULL,
    -- 函館平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_hakodateFlatPlacementCount_6 INTEGER NULL,
    -- 函館障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_hakodateSteeplechasePlacementCount_1 INTEGER NULL,
    -- 函館障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_hakodateSteeplechasePlacementCount_2 INTEGER NULL,
    -- 函館障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_hakodateSteeplechasePlacementCount_3 INTEGER NULL,
    -- 函館障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_hakodateSteeplechasePlacementCount_4 INTEGER NULL,
    -- 函館障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_hakodateSteeplechasePlacementCount_5 INTEGER NULL,
    -- 函館障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_hakodateSteeplechasePlacementCount_6 INTEGER NULL,
    -- 福島平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_fukushimaFlatPlacementCounts_1 INTEGER NULL,
    -- 福島平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_fukushimaFlatPlacementCounts_2 INTEGER NULL,
    -- 福島平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_fukushimaFlatPlacementCounts_3 INTEGER NULL,
    -- 福島平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_fukushimaFlatPlacementCounts_4 INTEGER NULL,
    -- 福島平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_fukushimaFlatPlacementCounts_5 INTEGER NULL,
    -- 福島平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_fukushimaFlatPlacementCounts_6 INTEGER NULL,
    -- 福島障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_fukushimaSteeplechasePlacementCounts_1 INTEGER NULL,
    -- 福島障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_fukushimaSteeplechasePlacementCounts_2 INTEGER NULL,
    -- 福島障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_fukushimaSteeplechasePlacementCounts_3 INTEGER NULL,
    -- 福島障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_fukushimaSteeplechasePlacementCounts_4 INTEGER NULL,
    -- 福島障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_fukushimaSteeplechasePlacementCounts_5 INTEGER NULL,
    -- 福島障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_fukushimaSteeplechasePlacementCounts_6 INTEGER NULL,
    -- 新潟平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_niigataFlatPlacementCounts_1 INTEGER NULL,
    -- 新潟平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_niigataFlatPlacementCounts_2 INTEGER NULL,
    -- 新潟平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_niigataFlatPlacementCounts_3 INTEGER NULL,
    -- 新潟平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_niigataFlatPlacementCounts_4 INTEGER NULL,
    -- 新潟平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_niigataFlatPlacementCounts_5 INTEGER NULL,
    -- 新潟平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_niigataFlatPlacementCounts_6 INTEGER NULL,
    -- 新潟障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_niigataSteeplechasePlacementCounts_1 INTEGER NULL,
    -- 新潟障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_niigataSteeplechasePlacementCounts_2 INTEGER NULL,
    -- 新潟障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_niigataSteeplechasePlacementCounts_3 INTEGER NULL,
    -- 新潟障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_niigataSteeplechasePlacementCounts_4 INTEGER NULL,
    -- 新潟障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_niigataSteeplechasePlacementCounts_5 INTEGER NULL,
    -- 新潟障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_niigataSteeplechasePlacementCounts_6 INTEGER NULL,
    -- 東京平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_tokyoFlatPlacementCount_1 INTEGER NULL,
    -- 東京平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_tokyoFlatPlacementCount_2 INTEGER NULL,
    -- 東京平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_tokyoFlatPlacementCount_3 INTEGER NULL,
    -- 東京平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_tokyoFlatPlacementCount_4 INTEGER NULL,
    -- 東京平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_tokyoFlatPlacementCount_5 INTEGER NULL,
    -- 東京平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_tokyoFlatPlacementCount_6 INTEGER NULL,
    -- 東京障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_tokyoSteeplechasePlacementCount_1 INTEGER NULL,
    -- 東京障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_tokyoSteeplechasePlacementCount_2 INTEGER NULL,
    -- 東京障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_tokyoSteeplechasePlacementCount_3 INTEGER NULL,
    -- 東京障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_tokyoSteeplechasePlacementCount_4 INTEGER NULL,
    -- 東京障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_tokyoSteeplechasePlacementCount_5 INTEGER NULL,
    -- 東京障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_tokyoSteeplechasePlacementCount_6 INTEGER NULL,
    -- 中山平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_nakayamaFlatPlacementCount_1 INTEGER NULL,
    -- 中山平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_nakayamaFlatPlacementCount_2 INTEGER NULL,
    -- 中山平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_nakayamaFlatPlacementCount_3 INTEGER NULL,
    -- 中山平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_nakayamaFlatPlacementCount_4 INTEGER NULL,
    -- 中山平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_nakayamaFlatPlacementCount_5 INTEGER NULL,
    -- 中山平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_nakayamaFlatPlacementCount_6 INTEGER NULL,
    -- 中山障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_nakayamaSteeplechasePlacementCount_1 INTEGER NULL,
    -- 中山障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_nakayamaSteeplechasePlacementCount_2 INTEGER NULL,
    -- 中山障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_nakayamaSteeplechasePlacementCount_3 INTEGER NULL,
    -- 中山障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_nakayamaSteeplechasePlacementCount_4 INTEGER NULL,
    -- 中山障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_nakayamaSteeplechasePlacementCount_5 INTEGER NULL,
    -- 中山障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_nakayamaSteeplechasePlacementCount_6 INTEGER NULL,
    -- 中京平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_chukyoFlatPlacementCount_1 INTEGER NULL,
    -- 中京平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_chukyoFlatPlacementCount_2 INTEGER NULL,
    -- 中京平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_chukyoFlatPlacementCount_3 INTEGER NULL,
    -- 中京平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_chukyoFlatPlacementCount_4 INTEGER NULL,
    -- 中京平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_chukyoFlatPlacementCount_5 INTEGER NULL,
    -- 中京平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_chukyoFlatPlacementCount_6 INTEGER NULL,
    -- 中京障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_chukyoSteeplechasePlacementCount_1 INTEGER NULL,
    -- 中京障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_chukyoSteeplechasePlacementCount_2 INTEGER NULL,
    -- 中京障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_chukyoSteeplechasePlacementCount_3 INTEGER NULL,
    -- 中京障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_chukyoSteeplechasePlacementCount_4 INTEGER NULL,
    -- 中京障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_chukyoSteeplechasePlacementCount_5 INTEGER NULL,
    -- 中京障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_chukyoSteeplechasePlacementCount_6 INTEGER NULL,
    -- 京都平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_kyotoFlatPlacementCounts_1 INTEGER NULL,
    -- 京都平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_kyotoFlatPlacementCounts_2 INTEGER NULL,
    -- 京都平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_kyotoFlatPlacementCounts_3 INTEGER NULL,
    -- 京都平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_kyotoFlatPlacementCounts_4 INTEGER NULL,
    -- 京都平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_kyotoFlatPlacementCounts_5 INTEGER NULL,
    -- 京都平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_kyotoFlatPlacementCounts_6 INTEGER NULL,
    -- 京都障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_kyotoObstaclePlacementCounts_1 INTEGER NULL,
    -- 京都障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_kyotoObstaclePlacementCounts_2 INTEGER NULL,
    -- 京都障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_kyotoObstaclePlacementCounts_3 INTEGER NULL,
    -- 京都障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_kyotoObstaclePlacementCounts_4 INTEGER NULL,
    -- 京都障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_kyotoObstaclePlacementCounts_5 INTEGER NULL,
    -- 京都障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_kyotoObstaclePlacementCounts_6 INTEGER NULL,
    -- 阪神平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_hanshinFlatPlacementCounts_1 INTEGER NULL,
    -- 阪神平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_hanshinFlatPlacementCounts_2 INTEGER NULL,
    -- 阪神平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_hanshinFlatPlacementCounts_3 INTEGER NULL,
    -- 阪神平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_hanshinFlatPlacementCounts_4 INTEGER NULL,
    -- 阪神平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_hanshinFlatPlacementCounts_5 INTEGER NULL,
    -- 阪神平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_hanshinFlatPlacementCounts_6 INTEGER NULL,
    -- 阪神障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_hanshinSteeplechasePlacementCounts_1 INTEGER NULL,
    -- 阪神障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_hanshinSteeplechasePlacementCounts_2 INTEGER NULL,
    -- 阪神障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_hanshinSteeplechasePlacementCounts_3 INTEGER NULL,
    -- 阪神障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_hanshinSteeplechasePlacementCounts_4 INTEGER NULL,
    -- 阪神障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_hanshinSteeplechasePlacementCounts_5 INTEGER NULL,
    -- 阪神障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_hanshinSteeplechasePlacementCounts_6 INTEGER NULL,
    -- 小倉平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_kokuraFlatPlacementCount_1 INTEGER NULL,
    -- 小倉平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_kokuraFlatPlacementCount_2 INTEGER NULL,
    -- 小倉平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_kokuraFlatPlacementCount_3 INTEGER NULL,
    -- 小倉平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_kokuraFlatPlacementCount_4 INTEGER NULL,
    -- 小倉平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_kokuraFlatPlacementCount_5 INTEGER NULL,
    -- 小倉平地着回数 
    CurrentAndPreviousYearTotalStats_cumulative_kokuraFlatPlacementCount_6 INTEGER NULL,
    -- 小倉障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_kokuraSteeplechasePlacementCount_1 INTEGER NULL,
    -- 小倉障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_kokuraSteeplechasePlacementCount_2 INTEGER NULL,
    -- 小倉障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_kokuraSteeplechasePlacementCount_3 INTEGER NULL,
    -- 小倉障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_kokuraSteeplechasePlacementCount_4 INTEGER NULL,
    -- 小倉障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_kokuraSteeplechasePlacementCount_5 INTEGER NULL,
    -- 小倉障害着回数 
    CurrentAndPreviousYearTotalStats_cumulative_kokuraSteeplechasePlacementCount_6 INTEGER NULL,
    -- 芝16下・着回数 
    CurrentAndPreviousYearTotalStats_cumulative_turfUnder16PlacementCount_1 INTEGER NULL,
    -- 芝16下・着回数 
    CurrentAndPreviousYearTotalStats_cumulative_turfUnder16PlacementCount_2 INTEGER NULL,
    -- 芝16下・着回数 
    CurrentAndPreviousYearTotalStats_cumulative_turfUnder16PlacementCount_3 INTEGER NULL,
    -- 芝16下・着回数 
    CurrentAndPreviousYearTotalStats_cumulative_turfUnder16PlacementCount_4 INTEGER NULL,
    -- 芝16下・着回数 
    CurrentAndPreviousYearTotalStats_cumulative_turfUnder16PlacementCount_5 INTEGER NULL,
    -- 芝16下・着回数 
    CurrentAndPreviousYearTotalStats_cumulative_turfUnder16PlacementCount_6 INTEGER NULL,
    -- 芝22下・着回数 
    CurrentAndPreviousYearTotalStats_cumulative_turfUnder22PlacementCount_1 INTEGER NULL,
    -- 芝22下・着回数 
    CurrentAndPreviousYearTotalStats_cumulative_turfUnder22PlacementCount_2 INTEGER NULL,
    -- 芝22下・着回数 
    CurrentAndPreviousYearTotalStats_cumulative_turfUnder22PlacementCount_3 INTEGER NULL,
    -- 芝22下・着回数 
    CurrentAndPreviousYearTotalStats_cumulative_turfUnder22PlacementCount_4 INTEGER NULL,
    -- 芝22下・着回数 
    CurrentAndPreviousYearTotalStats_cumulative_turfUnder22PlacementCount_5 INTEGER NULL,
    -- 芝22下・着回数 
    CurrentAndPreviousYearTotalStats_cumulative_turfUnder22PlacementCount_6 INTEGER NULL,
    -- 芝22超・着回数 
    CurrentAndPreviousYearTotalStats_cumulative_turfOver22PlacementCount_1 INTEGER NULL,
    -- 芝22超・着回数 
    CurrentAndPreviousYearTotalStats_cumulative_turfOver22PlacementCount_2 INTEGER NULL,
    -- 芝22超・着回数 
    CurrentAndPreviousYearTotalStats_cumulative_turfOver22PlacementCount_3 INTEGER NULL,
    -- 芝22超・着回数 
    CurrentAndPreviousYearTotalStats_cumulative_turfOver22PlacementCount_4 INTEGER NULL,
    -- 芝22超・着回数 
    CurrentAndPreviousYearTotalStats_cumulative_turfOver22PlacementCount_5 INTEGER NULL,
    -- 芝22超・着回数 
    CurrentAndPreviousYearTotalStats_cumulative_turfOver22PlacementCount_6 INTEGER NULL,
    -- ダ16下・着回数 
    CurrentAndPreviousYearTotalStats_cumulative_dirtUnder16PlacementCount_1 INTEGER NULL,
    -- ダ16下・着回数 
    CurrentAndPreviousYearTotalStats_cumulative_dirtUnder16PlacementCount_2 INTEGER NULL,
    -- ダ16下・着回数 
    CurrentAndPreviousYearTotalStats_cumulative_dirtUnder16PlacementCount_3 INTEGER NULL,
    -- ダ16下・着回数 
    CurrentAndPreviousYearTotalStats_cumulative_dirtUnder16PlacementCount_4 INTEGER NULL,
    -- ダ16下・着回数 
    CurrentAndPreviousYearTotalStats_cumulative_dirtUnder16PlacementCount_5 INTEGER NULL,
    -- ダ16下・着回数 
    CurrentAndPreviousYearTotalStats_cumulative_dirtUnder16PlacementCount_6 INTEGER NULL,
    -- ダ22下・着回数 
    CurrentAndPreviousYearTotalStats_cumulative_dirtUnder22PlacementCount_1 INTEGER NULL,
    -- ダ22下・着回数 
    CurrentAndPreviousYearTotalStats_cumulative_dirtUnder22PlacementCount_2 INTEGER NULL,
    -- ダ22下・着回数 
    CurrentAndPreviousYearTotalStats_cumulative_dirtUnder22PlacementCount_3 INTEGER NULL,
    -- ダ22下・着回数 
    CurrentAndPreviousYearTotalStats_cumulative_dirtUnder22PlacementCount_4 INTEGER NULL,
    -- ダ22下・着回数 
    CurrentAndPreviousYearTotalStats_cumulative_dirtUnder22PlacementCount_5 INTEGER NULL,
    -- ダ22下・着回数 
    CurrentAndPreviousYearTotalStats_cumulative_dirtUnder22PlacementCount_6 INTEGER NULL,
    -- ダ22超・着回数 
    CurrentAndPreviousYearTotalStats_cumulative_dirtOver22PlacementCount_1 INTEGER NULL,
    -- ダ22超・着回数 
    CurrentAndPreviousYearTotalStats_cumulative_dirtOver22PlacementCount_2 INTEGER NULL,
    -- ダ22超・着回数 
    CurrentAndPreviousYearTotalStats_cumulative_dirtOver22PlacementCount_3 INTEGER NULL,
    -- ダ22超・着回数 
    CurrentAndPreviousYearTotalStats_cumulative_dirtOver22PlacementCount_4 INTEGER NULL,
    -- ダ22超・着回数 
    CurrentAndPreviousYearTotalStats_cumulative_dirtOver22PlacementCount_5 INTEGER NULL,
    -- ダ22超・着回数 
    CurrentAndPreviousYearTotalStats_cumulative_dirtOver22PlacementCount_6 INTEGER NULL
);
