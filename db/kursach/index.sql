CREATE INDEX idx_policeman_fk_person ON policeman(fk_person);
CREATE INDEX idx_policeman_fk_precinct ON policeman(fk_precinct);
CREATE INDEX idx_precinct_district_fk_precinct ON precinct_district(fk_precinct);
CREATE INDEX idx_precinct_district_fk_district ON precinct_district(fk_district);
CREATE INDEX idx_crime_fk_district ON crime(fk_district);
CREATE INDEX idx_crime_fk_type ON crime(fk_type);
CREATE INDEX idx_crime_case_fk_policeman_major ON crime_case(fk_policeman_major);
CREATE INDEX idx_crime_case_fk_crime ON crime_case(fk_crime);
CREATE INDEX idx_person_relevant_to_case_fk_policeman ON person_relevant_to_case(fk_policeman);
CREATE INDEX idx_person_relevant_to_case_fk_person ON person_relevant_to_case(fk_person);
CREATE INDEX idx_person_relevant_to_case_fk_crime ON person_relevant_to_case(fk_crime);
CREATE INDEX idx_policeman_case_fk_policeman_major ON policeman_case(fk_policeman_major);
CREATE INDEX idx_policeman_case_fk_policeman_minor ON policeman_case(fk_policeman_minor);
CREATE INDEX idx_policeman_case_fk_crime ON policeman_case(fk_crime);
CREATE INDEX idx_note_fk_policeman ON note(fk_policeman);
CREATE INDEX idx_note_fk_crime ON note(fk_crime);
CREATE INDEX idx_auth_fk_policeman ON auth(fk_policeman);

CREATE INDEX idx_policeman_series ON policeman USING HASH (series);
CREATE INDEX idx_policeman_case_status ON policeman_case USING HASH (status) WHERE status = 'ASSIGNED';
CREATE INDEX idx_crime_case ON crime_case USING HASH (state) WHERE state = 'ON_WORK';