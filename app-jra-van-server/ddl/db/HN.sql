-- 繁殖馬マスタ
CREATE TABLE BreedingHorseMaster (
    dataCategory TEXT NOT NULL,
    creationDate TEXT NOT NULL,
    breedingRegistrationNumber TEXT NOT NULL,
    bloodlineNumber TEXT NOT NULL,
    horseName TEXT NOT NULL,
    horseNameKana TEXT NOT NULL,
    horseNameEng TEXT NOT NULL,
    birthYear TEXT NOT NULL,
    genderCode TEXT NOT NULL,
    breedCode TEXT NOT NULL,
    coatColorCode TEXT NOT NULL,
    breedingHorseImportDivision TEXT NOT NULL,
    importYear TEXT NOT NULL,
    placeOfBirth TEXT NOT NULL,
    fatherHorseBreedingRegNumber TEXT NOT NULL,
    motherHorseBreedingRegNumber TEXT NOT NULL
);
