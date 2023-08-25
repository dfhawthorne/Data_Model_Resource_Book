ALTER TABLE activity_request
    ADD CONSTRAINT activity_request_communication_event_purpose_fk FOREIGN KEY ( comm_event_purpose_type_id,
                                                                                 communication_event_id )
        REFERENCES communication_event_purpose ( communication_event_purpose_type_comm_event_purpose_type_id,
                                                 communication_event_communication_event_id )
    NOT DEFERRABLE;

ALTER TABLE agent
    ADD CONSTRAINT agent_distribution_channel_fk FOREIGN KEY ( party_role_id,
                                                               role_type_id )
        REFERENCES distribution_channel ( party_role_id,
                                          role_type_id )
    NOT DEFERRABLE;

ALTER TABLE association
    ADD CONSTRAINT association_organisation_role_fk FOREIGN KEY ( party_role_id,
                                                                  role_type_id )
        REFERENCES organisation_role ( party_role_id,
                                       role_type_id )
    NOT DEFERRABLE;

ALTER TABLE bill_to_customer
    ADD CONSTRAINT bill_to_customer_customer_fk FOREIGN KEY ( party_role_id,
                                                              role_type_id )
        REFERENCES customer ( party_role_id,
                              role_type_id )
    NOT DEFERRABLE;

ALTER TABLE urm.citizenship
    ADD CONSTRAINT citzn_country_fk FOREIGN KEY ( country_country_code )
        REFERENCES urm.country ( country_code )
    NOT DEFERRABLE;

ALTER TABLE urm.citizenship
    ADD CONSTRAINT citzn_pers_fk FOREIGN KEY ( pers_pers_id )
        REFERENCES urm.person ( pers_id )
    NOT DEFERRABLE;

ALTER TABLE communication_event
    ADD CONSTRAINT communication_event_communication_event_status_type_fk FOREIGN KEY ( communication_event_status_type_communication_event_status_type_id
    )
        REFERENCES communication_event_status_type ( communication_event_status_type_id )
    NOT DEFERRABLE;

ALTER TABLE communication_event
    ADD CONSTRAINT communication_event_contact_mechanism_type_fk FOREIGN KEY ( contact_mechanism_type_contact_mechanism_type_id )
        REFERENCES contact_mechanism_type ( contact_mechanism_type_id )
    NOT DEFERRABLE;

ALTER TABLE communication_event
    ADD CONSTRAINT communication_event_party_relationship_fk FOREIGN KEY ( party_relationship_from_date,
                                                                           party_relationship_party_role_id,
                                                                           party_relationship_party_id1,
                                                                           party_relationship_party_role_id1,
                                                                           party_relationship_party_id )
        REFERENCES party_relationship ( from_date,
                                        party_role_party_role_id,
                                        party_role_party_party_id,
                                        party_role_party_role_id2,
                                        party_role_party_party_id2 )
    NOT DEFERRABLE;

ALTER TABLE communication_event_purpose
    ADD CONSTRAINT communication_event_purpose_communication_event_fk FOREIGN KEY ( communication_event_communication_event_id )
        REFERENCES communication_event ( communication_event_id )
    NOT DEFERRABLE;

ALTER TABLE communication_event_purpose
    ADD CONSTRAINT communication_event_purpose_communication_event_purpose_type_fk FOREIGN KEY ( communication_event_purpose_type_comm_event_purpose_type_id
    )
        REFERENCES communication_event_purpose_type ( comm_event_purpose_type_id )
    NOT DEFERRABLE;

ALTER TABLE communication_event_role
    ADD CONSTRAINT communication_event_role_communication_event_fk FOREIGN KEY ( communication_event_communication_event_id )
        REFERENCES communication_event ( communication_event_id )
    NOT DEFERRABLE;

ALTER TABLE communication_event_role
    ADD CONSTRAINT communication_event_role_communication_event_role_type_fk FOREIGN KEY ( communication_event_role_type_communication_event_role_type_id
    )
        REFERENCES communication_event_role_type ( communication_event_role_type_id )
    NOT DEFERRABLE;

ALTER TABLE communication_event_role
    ADD CONSTRAINT communication_event_role_party_fk FOREIGN KEY ( party_party_id )
        REFERENCES party ( party_id )
    NOT DEFERRABLE;

ALTER TABLE competitor
    ADD CONSTRAINT competitor_organisation_role_fk FOREIGN KEY ( party_role_id,
                                                                 role_type_id )
        REFERENCES organisation_role ( party_role_id,
                                       role_type_id )
    NOT DEFERRABLE;

ALTER TABLE conference
    ADD CONSTRAINT conference_communication_event_purpose_fk FOREIGN KEY ( comm_event_purpose_type_id,
                                                                           communication_event_id )
        REFERENCES communication_event_purpose ( communication_event_purpose_type_comm_event_purpose_type_id,
                                                 communication_event_communication_event_id )
    NOT DEFERRABLE;

ALTER TABLE contact
    ADD CONSTRAINT contact_person_role_fk FOREIGN KEY ( party_role_id,
                                                        role_type_id )
        REFERENCES person_role ( party_role_id,
                                 role_type_id )
    NOT DEFERRABLE;

ALTER TABLE contractor
    ADD CONSTRAINT contractor_person_role_fk FOREIGN KEY ( party_role_id,
                                                           role_type_id )
        REFERENCES person_role ( party_role_id,
                                 role_type_id )
    NOT DEFERRABLE;

ALTER TABLE corporation
    ADD CONSTRAINT corporation_legal_organisation_fk FOREIGN KEY ( legal_organisation_organisation_organisation_id )
        REFERENCES legal_organisation ( organisation_organisation_id )
    NOT DEFERRABLE;

ALTER TABLE customer
    ADD CONSTRAINT customer_party_role_fk FOREIGN KEY ( party_role_id,
                                                        role_type_id )
        REFERENCES party_role ( party_role_id,
                                party_party_id )
    NOT DEFERRABLE;

ALTER TABLE customer_relationship
    ADD CONSTRAINT customer_relationship_customer_fk FOREIGN KEY ( customer_party_role_id,
                                                                   customer_role_type_id )
        REFERENCES customer ( party_role_id,
                              role_type_id )
    NOT DEFERRABLE;

ALTER TABLE customer_relationship
    ADD CONSTRAINT customer_relationship_internal_organisation_fk FOREIGN KEY ( internal_organisation_party_role_id,
                                                                                internal_organisation_role_type_id )
        REFERENCES internal_organisation ( party_role_id,
                                           role_type_id )
    NOT DEFERRABLE;

ALTER TABLE customer_relationship
    ADD CONSTRAINT customer_relationship_party_relationship_fk FOREIGN KEY ( from_date )
        REFERENCES party_relationship ( from_date,
                                        party_role_party_role_id,
                                        party_role_party_party_id,
                                        party_role_party_role_id2,
                                        party_role_party_party_id2 )
    NOT DEFERRABLE;

ALTER TABLE customer_service_call
    ADD CONSTRAINT customer_service_call_communication_event_purpose_fk FOREIGN KEY ( comm_event_purpose_type_id,
                                                                                      communication_event_id )
        REFERENCES communication_event_purpose ( communication_event_purpose_type_comm_event_purpose_type_id,
                                                 communication_event_communication_event_id )
    NOT DEFERRABLE;

ALTER TABLE department
    ADD CONSTRAINT department_organisation_unit_fk FOREIGN KEY ( party_role_id,
                                                                 role_type_id )
        REFERENCES organisation_unit ( party_role_id,
                                       role_type_id )
    NOT DEFERRABLE;

ALTER TABLE distribution_channel
    ADD CONSTRAINT distribution_channel_organisation_role_fk FOREIGN KEY ( party_role_id,
                                                                           role_type_id )
        REFERENCES organisation_role ( party_role_id,
                                       role_type_id )
    NOT DEFERRABLE;

ALTER TABLE distribution_channel_relationship
    ADD CONSTRAINT distribution_channel_relationship_party_relationship_fk FOREIGN KEY ( from_date )
        REFERENCES party_relationship ( from_date,
                                        party_role_party_role_id,
                                        party_role_party_party_id,
                                        party_role_party_role_id2,
                                        party_role_party_party_id2 )
    NOT DEFERRABLE;

ALTER TABLE distributor
    ADD CONSTRAINT distributor_distribution_channel_fk FOREIGN KEY ( party_role_id,
                                                                     role_type_id )
        REFERENCES distribution_channel ( party_role_id,
                                          role_type_id )
    NOT DEFERRABLE;

ALTER TABLE division
    ADD CONSTRAINT division_organisation_unit_fk FOREIGN KEY ( party_role_id,
                                                               role_type_id )
        REFERENCES organisation_unit ( party_role_id,
                                       role_type_id )
    NOT DEFERRABLE;

ALTER TABLE eeoc_classification
    ADD CONSTRAINT eeoc_classification_person_classification_fk FOREIGN KEY ( from_date )
        REFERENCES person_classification ( from_date )
    NOT DEFERRABLE;

ALTER TABLE email_communication
    ADD CONSTRAINT email_communication_communication_event_fk FOREIGN KEY ( communication_event_id )
        REFERENCES communication_event ( communication_event_id )
    NOT DEFERRABLE;

ALTER TABLE employee
    ADD CONSTRAINT employee_person_role_fk FOREIGN KEY ( party_role_id,
                                                         role_type_id )
        REFERENCES person_role ( party_role_id,
                                 role_type_id )
    NOT DEFERRABLE;

ALTER TABLE employment
    ADD CONSTRAINT employment_employee_fk FOREIGN KEY ( employee_party_role_id,
                                                        employee_role_type_id )
        REFERENCES employee ( party_role_id,
                              role_type_id )
    NOT DEFERRABLE;

ALTER TABLE employment
    ADD CONSTRAINT employment_internal_organisation_fk FOREIGN KEY ( internal_organisation_party_role_id,
                                                                     internal_organisation_role_type_id )
        REFERENCES internal_organisation ( party_role_id,
                                           role_type_id )
    NOT DEFERRABLE;

ALTER TABLE employment
    ADD CONSTRAINT employment_party_relationship_fk FOREIGN KEY ( from_date )
        REFERENCES party_relationship ( from_date,
                                        party_role_party_role_id,
                                        party_role_party_party_id,
                                        party_role_party_role_id2,
                                        party_role_party_party_id2 )
    NOT DEFERRABLE;

ALTER TABLE end_user_customer
    ADD CONSTRAINT end_user_customer_customer_fk FOREIGN KEY ( party_role_id,
                                                               role_type_id )
        REFERENCES customer ( party_role_id,
                              role_type_id )
    NOT DEFERRABLE;

ALTER TABLE "Face-to-Face_Communication"
    ADD CONSTRAINT "Face-to-Face_Communication_Communication_Event_FK" FOREIGN KEY ( communication_event_id )
        REFERENCES communication_event ( communication_event_id )
    NOT DEFERRABLE;

ALTER TABLE family
    ADD CONSTRAINT family_informal_organisation_fk FOREIGN KEY ( informal_organisation_organisation_organisation_id )
        REFERENCES informal_organisation ( organisation_organisation_id )
    NOT DEFERRABLE;

ALTER TABLE family_member
    ADD CONSTRAINT family_member_person_role_fk FOREIGN KEY ( party_role_id,
                                                              role_type_id )
        REFERENCES person_role ( party_role_id,
                                 role_type_id )
    NOT DEFERRABLE;

ALTER TABLE fax_communication
    ADD CONSTRAINT fax_communication_communication_event_fk FOREIGN KEY ( communication_event_id )
        REFERENCES communication_event ( communication_event_id )
    NOT DEFERRABLE;

ALTER TABLE government_agency
    ADD CONSTRAINT government_agency_legal_organisation_fk FOREIGN KEY ( legal_organisation_organisation_organisation_id )
        REFERENCES legal_organisation ( organisation_organisation_id )
    NOT DEFERRABLE;

ALTER TABLE household
    ADD CONSTRAINT household_organisation_role_fk FOREIGN KEY ( party_role_id,
                                                                role_type_id )
        REFERENCES organisation_role ( party_role_id,
                                       role_type_id )
    NOT DEFERRABLE;

ALTER TABLE income_classification
    ADD CONSTRAINT income_classification_person_classification_fk FOREIGN KEY ( from_date )
        REFERENCES person_classification ( from_date )
    NOT DEFERRABLE;

ALTER TABLE industry_classification
    ADD CONSTRAINT industry_classification_organization_classification_fk FOREIGN KEY ( from_date )
        REFERENCES organization_classification ( from_date )
    NOT DEFERRABLE;

ALTER TABLE informal_organisation
    ADD CONSTRAINT informal_organisation_organisation_fk FOREIGN KEY ( organisation_organisation_id )
        REFERENCES organisation ( party_id )
    NOT DEFERRABLE;

ALTER TABLE informal_organization
    ADD CONSTRAINT informal_organization_organization_fk FOREIGN KEY ( party_id )
        REFERENCES organization ( party_id )
    NOT DEFERRABLE;

ALTER TABLE inquiry
    ADD CONSTRAINT inquiry_communication_event_purpose_fk FOREIGN KEY ( comm_event_purpose_type_id,
                                                                        communication_event_id )
        REFERENCES communication_event_purpose ( communication_event_purpose_type_comm_event_purpose_type_id,
                                                 communication_event_communication_event_id )
    NOT DEFERRABLE;

ALTER TABLE internal_organisation
    ADD CONSTRAINT internal_organisation_organisation_role_fk FOREIGN KEY ( party_role_id,
                                                                            role_type_id )
        REFERENCES organisation_role ( party_role_id,
                                       role_type_id )
    NOT DEFERRABLE;

ALTER TABLE legal_organisation
    ADD CONSTRAINT legal_organisation_organisation_fk FOREIGN KEY ( organisation_organisation_id )
        REFERENCES organisation ( party_id )
    NOT DEFERRABLE;

ALTER TABLE legal_organization
    ADD CONSTRAINT legal_organization_organization_fk FOREIGN KEY ( party_id )
        REFERENCES organization ( party_id )
    NOT DEFERRABLE;

ALTER TABLE letter_communication
    ADD CONSTRAINT letter_communication_communication_event_fk FOREIGN KEY ( communication_event_id )
        REFERENCES communication_event ( communication_event_id )
    NOT DEFERRABLE;

ALTER TABLE urm.marital_status
    ADD CONSTRAINT martl_stat_martl_stat_typ_fk FOREIGN KEY ( martl_stat_typ_id )
        REFERENCES urm.marital_status_type ( marital_status_type_id )
    NOT DEFERRABLE;

ALTER TABLE urm.marital_status
    ADD CONSTRAINT martl_stat_pers_fk FOREIGN KEY ( pers_pers_id )
        REFERENCES urm.person ( pers_id )
    NOT DEFERRABLE;

ALTER TABLE meeting
    ADD CONSTRAINT meeting_communication_event_purpose_fk FOREIGN KEY ( comm_event_purpose_type_id,
                                                                        communication_event_id )
        REFERENCES communication_event_purpose ( communication_event_purpose_type_comm_event_purpose_type_id,
                                                 communication_event_communication_event_id )
    NOT DEFERRABLE;

ALTER TABLE minority_classification
    ADD CONSTRAINT minority_classification_organization_classification_fk FOREIGN KEY ( from_date )
        REFERENCES organization_classification ( from_date )
    NOT DEFERRABLE;

ALTER TABLE organisation
    ADD CONSTRAINT organisation_party_fk FOREIGN KEY ( party_id )
        REFERENCES party ( party_id )
    NOT DEFERRABLE;

ALTER TABLE organisation_role
    ADD CONSTRAINT organisation_role_party_role_fk FOREIGN KEY ( party_role_id,
                                                                 role_type_id )
        REFERENCES party_role ( party_role_id,
                                party_party_id )
    NOT DEFERRABLE;

ALTER TABLE organisation_rollup
    ADD CONSTRAINT organisation_rollup_organisation_unit_fk FOREIGN KEY ( organisation_unit_party_role_id,
                                                                          organisation_unit_role_type_id )
        REFERENCES organisation_unit ( party_role_id,
                                       role_type_id )
    NOT DEFERRABLE;

ALTER TABLE organisation_rollup
    ADD CONSTRAINT organisation_rollup_organisation_unit_fkv2 FOREIGN KEY ( organisation_unit_party_role_id2,
                                                                            organisation_unit_role_type_id2 )
        REFERENCES organisation_unit ( party_role_id,
                                       role_type_id )
    NOT DEFERRABLE;

ALTER TABLE organisation_rollup
    ADD CONSTRAINT organisation_rollup_party_relationship_fk FOREIGN KEY ( from_date )
        REFERENCES party_relationship ( from_date,
                                        party_role_party_role_id,
                                        party_role_party_party_id,
                                        party_role_party_role_id2,
                                        party_role_party_party_id2 )
    NOT DEFERRABLE;

ALTER TABLE organisation_unit
    ADD CONSTRAINT organisation_unit_organisation_role_fk FOREIGN KEY ( party_role_id,
                                                                        role_type_id )
        REFERENCES organisation_role ( party_role_id,
                                       role_type_id )
    NOT DEFERRABLE;

ALTER TABLE organization_classification
    ADD CONSTRAINT organization_classification_party_classification_fk FOREIGN KEY ( from_date )
        REFERENCES party_classification ( from_date )
    NOT DEFERRABLE;

ALTER TABLE organization_contact_relationship
    ADD CONSTRAINT organization_contact_relationship_party_relationship_fk FOREIGN KEY ( from_date )
        REFERENCES party_relationship ( from_date,
                                        party_role_party_role_id,
                                        party_role_party_party_id,
                                        party_role_party_role_id2,
                                        party_role_party_party_id2 )
    NOT DEFERRABLE;

ALTER TABLE organization
    ADD CONSTRAINT organization_party_fk FOREIGN KEY ( party_id )
        REFERENCES party ( party_id )
    NOT DEFERRABLE;

ALTER TABLE organization_rollup
    ADD CONSTRAINT organization_rollup_party_relationship_fk FOREIGN KEY ( from_date )
        REFERENCES party_relationship ( from_date,
                                        party_role_party_role_id,
                                        party_role_party_party_id,
                                        party_role_party_role_id2,
                                        party_role_party_party_id2 )
    NOT DEFERRABLE;

ALTER TABLE other_informal_organisation
    ADD CONSTRAINT other_informal_organisation_informal_organisation_fk FOREIGN KEY ( informal_organisation_organisation_organisation_id
    )
        REFERENCES informal_organisation ( organisation_organisation_id )
    NOT DEFERRABLE;

ALTER TABLE other_organisation_unit
    ADD CONSTRAINT other_organisation_unit_organisation_unit_fk FOREIGN KEY ( party_role_id,
                                                                              role_type_id )
        REFERENCES organisation_unit ( party_role_id,
                                       role_type_id )
    NOT DEFERRABLE;

ALTER TABLE parent_organisation
    ADD CONSTRAINT parent_organisation_organisation_unit_fk FOREIGN KEY ( party_role_id,
                                                                          role_type_id )
        REFERENCES organisation_unit ( party_role_id,
                                       role_type_id )
    NOT DEFERRABLE;

ALTER TABLE partner
    ADD CONSTRAINT partner_organisation_role_fk FOREIGN KEY ( party_role_id,
                                                              role_type_id )
        REFERENCES organisation_role ( party_role_id,
                                       role_type_id )
    NOT DEFERRABLE;

ALTER TABLE partnership
    ADD CONSTRAINT partnership_party_relationship_fk FOREIGN KEY ( from_date )
        REFERENCES party_relationship ( from_date,
                                        party_role_party_role_id,
                                        party_role_party_party_id,
                                        party_role_party_role_id2,
                                        party_role_party_party_id2 )
    NOT DEFERRABLE;

-- Error - Foreign Key Party_Classification_Party_FK has no columns

ALTER TABLE party_classification
    ADD CONSTRAINT party_classification_party_type_fk FOREIGN KEY ( party_type_party_type_id )
        REFERENCES party_type ( party_type_id )
    NOT DEFERRABLE;

ALTER TABLE party_relationship
    ADD CONSTRAINT party_relationship_party_relationship_type_fk FOREIGN KEY ( party_role_party_party_id2 )
        REFERENCES party_relationship_type ( party_relationship_type_id )
    NOT DEFERRABLE;

ALTER TABLE party_relationship
    ADD CONSTRAINT party_relationship_party_role_fk FOREIGN KEY ( party_role_party_role_id,
                                                                  party_role_party_party_id )
        REFERENCES party_role ( party_role_id,
                                party_party_id )
    NOT DEFERRABLE;

ALTER TABLE party_relationship
    ADD CONSTRAINT party_relationship_party_role_fkv2 FOREIGN KEY ( party_role_party_role_id2,
                                                                    party_role_party_party_id2 )
        REFERENCES party_role ( party_role_id,
                                party_party_id )
    NOT DEFERRABLE;

ALTER TABLE party_relationship
    ADD CONSTRAINT party_relationship_priority_type_fk FOREIGN KEY ( party_role_party_party_id )
        REFERENCES priority_type ( priority_type_id )
    NOT DEFERRABLE;

ALTER TABLE party_relationship
    ADD CONSTRAINT party_relationship_status_type_fk FOREIGN KEY ( status_type_status_type_id )
        REFERENCES status_type ( status_type_id )
    NOT DEFERRABLE;

ALTER TABLE party_relationship_status_type
    ADD CONSTRAINT party_relationship_status_type_status_type_fk FOREIGN KEY ( status_type_id )
        REFERENCES status_type ( status_type_id )
    NOT DEFERRABLE;

ALTER TABLE party_role
    ADD CONSTRAINT party_role_party_fk FOREIGN KEY ( party_party_id )
        REFERENCES party ( party_id )
    NOT DEFERRABLE;

ALTER TABLE party_role
    ADD CONSTRAINT party_role_party_role_type_fk FOREIGN KEY ( party_role_type_role_type_id )
        REFERENCES party_role_type ( role_type_id )
    NOT DEFERRABLE;

ALTER TABLE party_role_type
    ADD CONSTRAINT party_role_type_role_type_fk FOREIGN KEY ( role_type_id )
        REFERENCES role_type ( role_type_id )
    NOT DEFERRABLE;

ALTER TABLE urm.passport
    ADD CONSTRAINT passport_citzn_fk FOREIGN KEY ( citzn_from_date )
        REFERENCES urm.citizenship ( from_date )
    NOT DEFERRABLE;

ALTER TABLE urm.person
    ADD CONSTRAINT pers_gender_typ_fk FOREIGN KEY ( gender_typ_gender_typ_id )
        REFERENCES urm.gender_type ( gender_type_id )
    NOT DEFERRABLE;

ALTER TABLE urm.person_name
    ADD CONSTRAINT pers_name_pers_fk FOREIGN KEY ( pers_pers_id )
        REFERENCES urm.person ( pers_id )
    NOT DEFERRABLE;

ALTER TABLE urm.person_name
    ADD CONSTRAINT pers_name_pers_name_typ_fk FOREIGN KEY ( pers_name_typ_pers_typ_id )
        REFERENCES urm.person_name_type ( person_type_id )
    NOT DEFERRABLE;

ALTER TABLE person_classification
    ADD CONSTRAINT person_classification_party_classification_fk FOREIGN KEY ( from_date )
        REFERENCES party_classification ( from_date )
    NOT DEFERRABLE;

ALTER TABLE person
    ADD CONSTRAINT person_party_fk FOREIGN KEY ( party_id )
        REFERENCES party ( party_id )
    NOT DEFERRABLE;

ALTER TABLE person_role
    ADD CONSTRAINT person_role_party_role_fk FOREIGN KEY ( party_role_id,
                                                           role_type_id )
        REFERENCES party_role ( party_role_id,
                                party_party_id )
    NOT DEFERRABLE;

ALTER TABLE phone_communication
    ADD CONSTRAINT phone_communication_communication_event_fk FOREIGN KEY ( communication_event_id )
        REFERENCES communication_event ( communication_event_id )
    NOT DEFERRABLE;

ALTER TABLE urm.physical_characteristic
    ADD CONSTRAINT phys_char_pers_fk FOREIGN KEY ( pers_pers_id )
        REFERENCES urm.person ( pers_id )
    NOT DEFERRABLE;

ALTER TABLE urm.physical_characteristic
    ADD CONSTRAINT phys_char_phys_char_typ_fk FOREIGN KEY ( phys_char_typ_char_typ_id )
        REFERENCES urm.physical_characteristic_type ( characteristic_type_id )
    NOT DEFERRABLE;

ALTER TABLE prospect
    ADD CONSTRAINT prospect_party_role_fk FOREIGN KEY ( party_role_id,
                                                        role_type_id )
        REFERENCES party_role ( party_role_id,
                                party_party_id )
    NOT DEFERRABLE;

ALTER TABLE regulation_authority
    ADD CONSTRAINT regulation_authority_organisation_role_fk FOREIGN KEY ( party_role_id,
                                                                           role_type_id )
        REFERENCES organisation_role ( party_role_id,
                                       role_type_id )
    NOT DEFERRABLE;

ALTER TABLE sales_follow_up
    ADD CONSTRAINT sales_follow_up_communication_event_purpose_fk FOREIGN KEY ( comm_event_purpose_type_id,
                                                                                communication_event_id )
        REFERENCES communication_event_purpose ( communication_event_purpose_type_comm_event_purpose_type_id,
                                                 communication_event_communication_event_id )
    NOT DEFERRABLE;

ALTER TABLE seminar
    ADD CONSTRAINT seminar_communication_event_purpose_fk FOREIGN KEY ( comm_event_purpose_type_id,
                                                                        communication_event_id )
        REFERENCES communication_event_purpose ( communication_event_purpose_type_comm_event_purpose_type_id,
                                                 communication_event_communication_event_id )
    NOT DEFERRABLE;

ALTER TABLE shareholder
    ADD CONSTRAINT shareholder_party_role_fk FOREIGN KEY ( party_role_id,
                                                           role_type_id )
        REFERENCES party_role ( party_role_id,
                                party_party_id )
    NOT DEFERRABLE;

ALTER TABLE ship_to_customer
    ADD CONSTRAINT ship_to_customer_customer_fk FOREIGN KEY ( party_role_id,
                                                              role_type_id )
        REFERENCES customer ( party_role_id,
                              role_type_id )
    NOT DEFERRABLE;

ALTER TABLE size_classification
    ADD CONSTRAINT size_classification_organization_classification_fk FOREIGN KEY ( from_date )
        REFERENCES organization_classification ( from_date )
    NOT DEFERRABLE;

ALTER TABLE subsidary
    ADD CONSTRAINT subsidary_organisation_unit_fk FOREIGN KEY ( party_role_id,
                                                                role_type_id )
        REFERENCES organisation_unit ( party_role_id,
                                       role_type_id )
    NOT DEFERRABLE;

ALTER TABLE supplier
    ADD CONSTRAINT supplier_organisation_role_fk FOREIGN KEY ( party_role_id,
                                                               role_type_id )
        REFERENCES organisation_role ( party_role_id,
                                       role_type_id )
    NOT DEFERRABLE;

ALTER TABLE supplier_relationship
    ADD CONSTRAINT supplier_relationship_party_relationship_fk FOREIGN KEY ( from_date )
        REFERENCES party_relationship ( from_date,
                                        party_role_party_role_id,
                                        party_role_party_party_id,
                                        party_role_party_role_id2,
                                        party_role_party_party_id2 )
    NOT DEFERRABLE;

ALTER TABLE support_call
    ADD CONSTRAINT support_call_communication_event_purpose_fk FOREIGN KEY ( comm_event_purpose_type_id,
                                                                             communication_event_id )
        REFERENCES communication_event_purpose ( communication_event_purpose_type_comm_event_purpose_type_id,
                                                 communication_event_communication_event_id )
    NOT DEFERRABLE;

ALTER TABLE team
    ADD CONSTRAINT team_informal_organisation_fk FOREIGN KEY ( informal_organisation_organisation_organisation_id )
        REFERENCES informal_organisation ( organisation_organisation_id )
    NOT DEFERRABLE;

ALTER TABLE valid_contact_mechanism_role
    ADD CONSTRAINT valid_contact_mechanism_role_communication_event_role_type_fk FOREIGN KEY ( communication_event_role_type_communication_event_role_type_id
    )
        REFERENCES communication_event_role_type ( communication_event_role_type_id )
    NOT DEFERRABLE;

ALTER TABLE valid_contact_mechanism_role
    ADD CONSTRAINT valid_contact_mechanism_role_contact_mechanism_type_fk FOREIGN KEY ( contact_mechanism_type_contact_mechanism_type_id
    )
        REFERENCES contact_mechanism_type ( contact_mechanism_type_id )
    NOT DEFERRABLE;

ALTER TABLE web_site_communication
    ADD CONSTRAINT web_site_communication_communication_event_fk FOREIGN KEY ( communication_event_id )
        REFERENCES communication_event ( communication_event_id )
    NOT DEFERRABLE;
