# Term backlog — migrating the remaining legacy terms

The rewrite currently covers a subset of the identifiers that the previous
`aopo-edit.owl` on this branch had migrated from the legacy `aopkb.org` ontology.
Replacing that file kept 8 identifiers and left the rest unrepresented.

**These identifiers are taken. Do not reuse any of them for a different meaning.**
Each one either gets re-modelled into core or the AOP-Wiki module, or gets explicitly
deprecated with `owl:deprecated true` — silently dropping them is the one option that
breaks anything already referencing them.

Remaining: 213 identifiers.

Status: `pending` → `migrate` (re-model it) / `deprecate` (retire it) → `done`.

| ID | Legacy label | AOPKB xref | Layer | Decision | Status |
|---|---|---|---|---|---|
| AOPO_0000001 | AopEntity | AOPKB:AopEntity | | | pending |
| AOPO_0000002 | PubChemAID | AOPKB:PubChemAID | | | pending |
| AOPO_0000003 | PubChemCID | AOPKB:PubChemCID | | | pending |
| AOPO_0000004 | UniProtID | AOPKB:UniProtID | | | pending |
| AOPO_0000005 | has activated bioassay | AOPKB:has_activated_bioassay | | | pending |
| AOPO_0000006 | has activated key event | AOPKB:has_activated_key_event | | | pending |
| AOPO_0000007 | has activation relationship | AOPKB:has_activation_relationship | | | pending |
| AOPO_0000008 | has adverse outcome | AOPKB:has_adverse_outcome | | | pending |
| AOPO_0000009 | has adverse outcome pathway | AOPKB:has_adverse_outcome_pathway | | | pending |
| AOPO_0000010 | has algorithm | AOPKB:has_algorithm | | | pending |
| AOPO_0000011 | has antatomical location | AOPKB:has_antatomical_location | | | pending |
| AOPO_0000012 | has aop context | AOPKB:has_aop_context | | | pending |
| AOPO_0000013 | has aop entity | AOPKB:has_aop_entity | | | pending |
| AOPO_0000014 | has aop entity modulation | AOPKB:has_aop_entity_modulation | | | pending |
| AOPO_0000015 | has aop relationship | AOPKB:has_aop_relationship | | | pending |
| AOPO_0000016 | has assay | AOPKB:has_assay | | | pending |
| AOPO_0000017 | has base uri | AOPKB:has_base_uri | | | pending |
| AOPO_0000018 | has bioassay | AOPKB:has_bioassay | | | pending |
| AOPO_0000019 | has bioassay call algorithm | AOPKB:has_bioassay_call_algorithm | | | pending |
| AOPO_0000020 | has bioassay modulation | AOPKB:has_bioassay_modulation | | | pending |
| AOPO_0000021 | has chem bio assay call | AOPKB:has_chem_bio_assay_call | | | pending |
| AOPO_0000022 | has chemical entity | AOPKB:has_chemical_entity | | | pending |
| AOPO_0000023 | has chemical mie relationship | AOPKB:has_chemical_mie_relationship | | | pending |
| AOPO_0000024 | has confidence | AOPKB:has_confidence | | | pending |
| AOPO_0000025 | has deactivation relationship | AOPKB:has_deactivation_relationship | | | pending |
| AOPO_0000027 | has downstream key event modulation | AOPKB:has_downstream_key_event_modulation | | | pending |
| AOPO_0000028 | has evidence | AOPKB:has_evidence | | | pending |
| AOPO_0000029 | has human phenotype | AOPKB:has_human_phenotype | | | pending |
| AOPO_0000030 | has inactivated key event | AOPKB:has_inactivated_key_event | | | pending |
| AOPO_0000031 | has intermediate event | AOPKB:has_intermediate_event | | | pending |
| AOPO_0000032 | has key event | AOPKB:has_key_event | | | pending |
| AOPO_0000033 | has key event relationship | AOPKB:has_key_event_relationship | | | pending |
| AOPO_0000034 | has key event type | AOPKB:has_key_event_type | | | pending |
| AOPO_0000035 | has mie modulation | AOPKB:has_mie_modulation | | | pending |
| AOPO_0000036 | has modulation | AOPKB:has_modulation | | | pending |
| AOPO_0000037 | has molecular initiating event | AOPKB:has_molecular_initiating_event | | | pending |
| AOPO_0000038 | has pathological entity | AOPKB:has_pathological_entity | | | pending |
| AOPO_0000039 | has point of departure | AOPKB:has_point_of_departure | | | pending |
| AOPO_0000040 | has pubchem assay | AOPKB:has_pubchem_assay | | | pending |
| AOPO_0000041 | has pubchem compound | AOPKB:has_pubchem_compound | | | pending |
| AOPO_0000042 | has pubchem entity | AOPKB:has_pubchem_entity | | | pending |
| AOPO_0000043 | has pubchem substance | AOPKB:has_pubchem_substance | | | pending |
| AOPO_0000044 | has quantitative measure | AOPKB:has_quantitative_measure | | | pending |
| AOPO_0000045 | has risk specific dose | AOPKB:has_risk_specific_dose | | | pending |
| AOPO_0000046 | has species | AOPKB:has_species | | | pending |
| AOPO_0000047 | has threshold response value | AOPKB:has_threshold_response_value | | | pending |
| AOPO_0000049 | has upstream key event modulation | AOPKB:has_upstream_key_event_modulation | | | pending |
| AOPO_0000050 | is adverse outcome | AOPKB:is_adverse_outcome | | | pending |
| AOPO_0000051 | is associated with key event | AOPKB:is_associated_with_key_event | | | pending |
| AOPO_0000052 | is biological macromolecule | AOPKB:is_biological_macromolecule | | | pending |
| AOPO_0000053 | is causal for | AOPKB:is_causal_for | | | pending |
| AOPO_0000054 | is key event component of | AOPKB:is_key_event_component_of | | | pending |
| AOPO_0000055 | is molecular initiating event | AOPKB:is_molecular_initiating_event | | | pending |
| AOPO_0000056 | is pathological entity | AOPKB:is_pathological_entity | | | pending |
| AOPO_0000057 | ActivatedAssayCall | AOPKB:ActivatedAssayCall | | | pending |
| AOPO_0000058 | Activation | AOPKB:Activation | | | pending |
| AOPO_0000059 | ActivityActivation | AOPKB:ActivityActivation | | | pending |
| AOPO_0000060 | ActivityDeactivation | AOPKB:ActivityDeactivation | | | pending |
| AOPO_0000063 | Akt2 | AOPKB:Akt2 | | | pending |
| AOPO_0000064 | AO DecreasedFecundity | AOPKB:AO-DecreasedFecundity | | | pending |
| AOPO_0000065 | AO NeuralTubeDefect | AOPKB:AO-NeuralTubeDefect | | | pending |
| AOPO_0000066 | AO Steatosis | AOPKB:AO-Steatosis | | | pending |
| AOPO_0000067 | AopContext | AOPKB:AopContext | | | pending |
| AOPO_0000068 | AopRelationship | AOPKB:AopRelationship | | | pending |
| AOPO_0000069 | Aromatase | AOPKB:Aromatase | | | pending |
| AOPO_0000070 | BioAssayAOPRelationship | AOPKB:BioAssayAOPRelationship | | | pending |
| AOPO_0000071 | BioAssayCallAlgorithm | AOPKB:BioAssayCallAlgorithm | | | pending |
| AOPO_0000072 | CellTypeContext | AOPKB:CellTypeContext | | | pending |
| AOPO_0000073 | CellularOrganelleContext | AOPKB:CellularOrganelleContext | | | pending |
| AOPO_0000074 | ChemBioAssayResults | AOPKB:ChemBioAssayResults | | | pending |
| AOPO_0000075 | ChemicalMIERelationship | AOPKB:ChemicalMIERelationship | | | pending |
| AOPO_0000076 | Confidence | AOPKB:Confidence | | | pending |
| AOPO_0000077 | ConfidenceLevels | AOPKB:ConfidenceLevels | | | pending |
| AOPO_0000078 | Deactivation | AOPKB:Deactivation | | | pending |
| AOPO_0000079 | Decrease | AOPKB:Decrease | | | pending |
| AOPO_0000080 | DecreasedAssayCall | AOPKB:DecreasedAssayCall | | | pending |
| AOPO_0000081 | Decreased Fecundity | AOPKB:DecreasedFecundity | | | pending |
| AOPO_0000082 | DevelopmentalAdverseOutcome | AOPKB:DevelopmentalAdverseOutcome | | | pending |
| AOPO_0000083 | DevelopmentalToxicologyAOP | AOPKB:DevelopmentalToxicologyAOP | | | pending |
| AOPO_0000084 | DiabetesMellitusType2 | AOPKB:DiabetesMellitusType2 | | | pending |
| AOPO_0000085 | DiseaseAdverseOutcome | AOPKB:DiseaseAdverseOutcome | | | pending |
| AOPO_0000086 | DiseaseAOP | AOPKB:DiseaseAOP | | | pending |
| AOPO_0000087 | Estradiol | AOPKB:Estradiol | | | pending |
| AOPO_0000088 | Estrogen receptor alpha | AOPKB:Estrogen_receptor_alpha | | | pending |
| AOPO_0000090 | ExpressionActivation | AOPKB:ExpressionActivation | | | pending |
| AOPO_0000091 | ExpressionDeactivation | AOPKB:ExpressionDeactivation | | | pending |
| AOPO_0000092 | Fecundity | AOPKB:Fecundity | | | pending |
| AOPO_0000093 | FXR | AOPKB:FXR | | | pending |
| AOPO_0000094 | GSK3 | AOPKB:GSK3 | | | pending |
| AOPO_0000095 | High Confidence | AOPKB:High_Confidence | | | pending |
| AOPO_0000096 | HighConfidence | AOPKB:HighConfidence | | | pending |
| AOPO_0000097 | Hoxb1 | AOPKB:Hoxb1 | | | pending |
| AOPO_0000098 | Hoxb1 gene | AOPKB:Hoxb1_gene | | | pending |
| AOPO_0000099 | HSD17B4 | AOPKB:HSD17B4 | | | pending |
| AOPO_0000100 | InactivatedAssayCall | AOPKB:InactivatedAssayCall | | | pending |
| AOPO_0000101 | Increase | AOPKB:Increase | | | pending |
| AOPO_0000102 | IncreasedAssayCall | AOPKB:IncreasedAssayCall | | | pending |
| AOPO_0000103 | IntermediateEvent | AOPKB:IntermediateEvent | | | pending |
| AOPO_0000104 | IRS1 | AOPKB:IRS1 | | | pending |
| AOPO_0000108 | KeyEventType | AOPKB:KeyEventType | | | pending |
| AOPO_0000109 | LeadsTo | AOPKB:LeadsTo | | | pending |
| AOPO_0000110 | LifeStageContext | AOPKB:LifeStageContext | | | pending |
| AOPO_0000111 | LiverAdverseOutcome | AOPKB:LiverAdverseOutcome | | | pending |
| AOPO_0000112 | LiverToxicityAOP | AOPKB:LiverToxicityAOP | | | pending |
| AOPO_0000113 | Low Confidence | AOPKB:Low_Confidence | | | pending |
| AOPO_0000114 | LowConfidence | AOPKB:LowConfidence | | | pending |
| AOPO_0000115 | Medium Confidence | AOPKB:Medium_Confidence | | | pending |
| AOPO_0000116 | MediumConfidence | AOPKB:MediumConfidence | | | pending |
| AOPO_0000117 | Modulation | AOPKB:Modulation | | | pending |
| AOPO_0000118 | Molecular Initiating Event | AOPKB:MolecularInitatingEvent | | | pending |
| AOPO_0000120 | mTORC1 | AOPKB:mTORC1 | | | pending |
| AOPO_0000121 | NeuralTubeDefect | AOPKB:NeuralTubeDefect | | | pending |
| AOPO_0000122 | NoChangeAssayCall | AOPKB:NoChangeAssayCall | | | pending |
| AOPO_0000123 | OrganContext | AOPKB:OrganContext | | | pending |
| AOPO_0000124 | PointOfDeparture | AOPKB:PointOfDeparture | | | pending |
| AOPO_0000125 | PPAR alpha | AOPKB:PPAR-alpha | | | pending |
| AOPO_0000126 | PPAR gamma | AOPKB:PPAR-gamma | | | pending |
| AOPO_0000127 | ProteinTranslation | AOPKB:ProteinTranslation | | | pending |
| AOPO_0000128 | QualitativeMeasures | AOPKB:QualitativeMeasures | | | pending |
| AOPO_0000130 | RAR | AOPKB:RAR | | | pending |
| AOPO_0000131 | RAR RXR heterodimer | AOPKB:RAR_RXR_heterodimer | | | pending |
| AOPO_0000132 | ReproductiveAdverseOutcome | AOPKB:ReproductiveAdverseOutcome | | | pending |
| AOPO_0000133 | ReproductiveToxicologyAOP | AOPKB:ReproductiveToxicologyAOP | | | pending |
| AOPO_0000134 | Rheb1 | AOPKB:Rheb1 | | | pending |
| AOPO_0000135 | RiskSpecificDose | AOPKB:RiskSpecificDose | | | pending |
| AOPO_0000136 | RiskSpecificDose1in1000 | AOPKB:RiskSpecificDose1in1000 | | | pending |
| AOPO_0000137 | RiskSpecificDose1in10000 | AOPKB:RiskSpecificDose1in10000 | | | pending |
| AOPO_0000138 | RXR | AOPKB:RXR | | | pending |
| AOPO_0000139 | SREBP1 | AOPKB:SREBP1 | | | pending |
| AOPO_0000140 | Steatosis | AOPKB:Steatosis | | | pending |
| AOPO_0000141 | SufficientKeyEvent | AOPKB:SufficientKeyEvent | | | pending |
| AOPO_0000142 | TissueContext | AOPKB:TissueContext | | | pending |
| AOPO_0000143 | Tsc1 | AOPKB:Tsc1 | | | pending |
| AOPO_0000144 | Unknown | AOPKB:Unknown | | | pending |
| AOPO_0000145 | UterineWeightIncreased | AOPKB:UterineWeightIncreased | | | pending |
| AOPO_0000146 | Very High Confidence | AOPKB:Very_High_Confidence | | | pending |
| AOPO_0000147 | Very Low Confidence | AOPKB:Very_Low_Confidence | | | pending |
| AOPO_0000148 | Vitellogenin | AOPKB:Vitellogenin | | | pending |
| AOPO_0000149 | activity activation | AOPKB:activity_activation | | | pending |
| AOPO_0000150 | activity deactivation | AOPKB:activity_deactivation | | | pending |
| AOPO_0000151 | antagonism HSD17B4 unknown mechanism | AOPKB:antagonism_HSD17B4_unknown_mechanism | | | pending |
| AOPO_0000152 | ao test | AOPKB:ao-test | | | pending |
| AOPO_0000153 | AOP Decreased Fecundity via Aromatase Inhibition | AOPKB:AOP_Decreased_Fecundity_via_Aromatase_Inhibition | | | pending |
| AOPO_0000154 | AOP Decreased Fecundity via Estrogen Receptor-alpha Antagonism | AOPKB:AOP_Decreased_Fecundity_via_Estrogen_Receptor-alpha_Inhibition | | | pending |
| AOPO_0000155 | AOP Decreased Fecundity via PPAR-gamma Activation | AOPKB:AOP_Decreased_Fecundity_via_PPAR-gamma_Activation | | | pending |
| AOPO_0000156 | AOP Neural Tube Defect via Hoxb1 | AOPKB:aop_neural_tube_defect_hoxb1 | | | pending |
| AOPO_0000157 | AOP Steatosis Via DHB4 | AOPKB:AOP_Steatosis_Via_DHB4 | | | pending |
| AOPO_0000158 | AOP Steatosis Via FXR and HSD17B4 | AOPKB:AOP_Steatosis_Via_FXR_and_HSD17B4 | | | pending |
| AOPO_0000159 | AOP Steatosis Via Insulin AKT TSC1 and Lipogenesis | AOPKB:AOP_Steatosis_Via_Insulin_AKT_TSC1_and_Lipogenesis | | | pending |
| AOPO_0000160 | AOP Steatosis Via IRS1, AKT, GSK3 and Lipogenesis | AOPKB:AOP_Steatosis_Via_IRS1_AKT_GSK3_and_Lipogenesis | | | pending |
| AOPO_0000161 | AOP Steatosis Via IRS1, AKT2, TSC1 or TSC2 and Lipogenesis | AOPKB:AOP_Steatosis_Via_IRS1_AKT_TSC1_and_Lipogenesis | | | pending |
| AOPO_0000162 | AOP Steatosis Via NRF2 and DHB4 | AOPKB:AOP_Steatosis_Via_NRF2_and_DHB4 | | | pending |
| AOPO_0000163 | BayesNSMR | AOPKB:BayesNSMR | | | pending |
| AOPO_0000164 | BkF | AOPKB:BkF | | | pending |
| AOPO_0000165 | BkF15umBayesNSMRCall | AOPKB:BkF15umBayesNSMRCall | | | pending |
| AOPO_0000166 | BkF15umBioAssayResults | AOPKB:BkF15umBioAssayResults | | | pending |
| AOPO_0000167 | bkf 15um | AOPKB:bkf_15um | | | pending |
| AOPO_0000168 | CMIERelationship Aromatase Inhibition | AOPKB:CMIERelationship_Aromatase_Inhibition | | | pending |
| AOPO_0000169 | CMIERelationship Estrogen Receptor alpha Inhibition | AOPKB:CMIERelationship_Estrogen_Receptor-alpha_Inhibition | | | pending |
| AOPO_0000170 | CMIERelationship FXR Activation | AOPKB:CMIERelationship_FXR_Activation | | | pending |
| AOPO_0000171 | CMIERelationship IRS1 Activation | AOPKB:CMIERelationship_IRS1_Activation | | | pending |
| AOPO_0000172 | CMIERelationship PPAR gamma Activation | AOPKB:CMIERelationship_PPAR-gamma_Activation | | | pending |
| AOPO_0000173 | CMIERelationship unknown dhb4 | AOPKB:CMIERelationship_unknown_dhb4 | | | pending |
| AOPO_0000174 | enzyme target | AOPKB:enzyme_target | | | pending |
| AOPO_0000175 | expression activation | AOPKB:expression_activation | | | pending |
| AOPO_0000176 | expression deactivation | AOPKB:expression_deactivation | | | pending |
| AOPO_0000177 | hoxb1 gene | AOPKB:hoxb1_gene | | | pending |
| AOPO_0000178 | hsd17b4 bioassay | AOPKB:hsd17b4_bioassay | | | pending |
| AOPO_0000179 | hsd17b4 percent activity | AOPKB:hsd17b4_percent_activity | | | pending |
| AOPO_0000180 | ind high confidence | AOPKB:ind_high_confidence | | | pending |
| AOPO_0000181 | ind low confidence | AOPKB:ind_low_confidence | | | pending |
| AOPO_0000182 | ind medium confidence | AOPKB:ind_medium_confidence | | | pending |
| AOPO_0000183 | ind very high confidence | AOPKB:ind_very_high_confidence | | | pending |
| AOPO_0000184 | ind very low confidence | AOPKB:ind_very_low_confidence | | | pending |
| AOPO_0000185 | leads to | AOPKB:leads_to | | | pending |
| AOPO_0000186 | measure group bkf 15um | AOPKB:measure_group_bkf_15um | | | pending |
| AOPO_0000187 | micromolar | AOPKB:micromolar | | | pending |
| AOPO_0000188 | MIE Aromatase Inhibition | AOPKB:MIE_Aromatase_Inhibition | | | pending |
| AOPO_0000189 | MIE Estrogen receptor alpha antagonism | AOPKB:MIE_Estrogen_receptor_alpha_antagonism | | | pending |
| AOPO_0000190 | MIE FXR Activation | AOPKB:MIE_FXR_Activation | | | pending |
| AOPO_0000191 | MIE HSD17B4 inactivity | AOPKB:MIE_HSD17B4_inactivity | | | pending |
| AOPO_0000192 | MIE IRS1 Activation | AOPKB:MIE_IRS1_Activation | | | pending |
| AOPO_0000193 | MIE PPAR gamma activation | AOPKB:MIE_PPAR-gamma_activation | | | pending |
| AOPO_0000194 | Neural Tube Defect | AOPKB:neural_tube_defect | | | pending |
| AOPO_0000195 | percent activiation normalization | AOPKB:percent_activiation_normalization | | | pending |
| AOPO_0000196 | protein translation | AOPKB:protein_translation | | | pending |
| AOPO_0000197 | rar | AOPKB:rar | | | pending |
| AOPO_0000198 | RAR ligand mediated activation | AOPKB:RAR_ligand_mediated_activation | | | pending |
| AOPO_0000199 | rar rxr heterodimer | AOPKB:rar_rxr_heterodimer | | | pending |
| AOPO_0000200 | relationship akt2 gsk3 | AOPKB:relationship_akt2_gsk3 | | | pending |
| AOPO_0000201 | relationship akt2 tsc1 | AOPKB:relationship_akt2_tsc1 | | | pending |
| AOPO_0000202 | relationship aromatase estrogen | AOPKB:relationship_aromatase_estrogen | | | pending |
| AOPO_0000203 | relationship estradiol fecundity | AOPKB:relationship_estradiol_fecundity | | | pending |
| AOPO_0000204 | relationship estradiol vitellogenin | AOPKB:relationship_estradiol_vitellogenin | | | pending |
| AOPO_0000205 | relationship estrogen receptor alpha vitellogenin | AOPKB:relationship_estrogen_receptor-alpha_vitellogenin | | | pending |
| AOPO_0000206 | relationship fxr ppar activation | AOPKB:relationship_fxr_ppar_activation | | | pending |
| AOPO_0000207 | relationship gsk3 srebp1 | AOPKB:relationship_gsk3_srebp1 | | | pending |
| AOPO_0000208 | relationship hoxb1 gene expression hoxb1 protein translation | AOPKB:relationship_hoxb1_gene_expression_hoxb1_protein_translation | | | pending |
| AOPO_0000209 | relationship hoxb1 neural tube defect | AOPKB:relationship_hoxb1_neural_tube_defect | | | pending |
| AOPO_0000210 | relationship hsd17b4 steatosis | AOPKB:relationship_hsd17b4_steatosis | | | pending |
| AOPO_0000211 | relationship irs1 akt2 | AOPKB:relationship_irs1_akt2 | | | pending |
| AOPO_0000212 | relationship mie rar rxr heterodimer | AOPKB:relationship_mie_rar_rxr_heterodimer | | | pending |
| AOPO_0000213 | relationship mtorc1 srebp1 | AOPKB:relationship_mtorc1_srebp1 | | | pending |
| AOPO_0000214 | relationship ppar gamma aromatase | AOPKB:relationship_ppar-gamma_aromatase | | | pending |
| AOPO_0000215 | relationship ppar hsd17b4 | AOPKB:relationship_ppar_hsd17b4 | | | pending |
| AOPO_0000216 | relationship rar mie | AOPKB:relationship_rar_mie | | | pending |
| AOPO_0000217 | relationship rar rxr heterodimer hoxb1 gene expression | AOPKB:relationship_rar_rxr_heterodimer_hoxb1_gene_expression | | | pending |
| AOPO_0000218 | relationship rheb1 mtorc1 | AOPKB:relationship_rheb1_mtorc1 | | | pending |
| AOPO_0000219 | relationship srebp1 steatosis | AOPKB:relationship_srebp1_steatosis | | | pending |
| AOPO_0000220 | relationship tsc1 rheb1 | AOPKB:relationship_tsc1_rheb1 | | | pending |
| AOPO_0000221 | relationship vitellogenin fecundity | AOPKB:relationship_vitellogenin_fecundity | | | pending |
| AOPO_0000222 | rxr | AOPKB:rxr | | | pending |
| AOPO_0000223 | Steatosis | AOPKB:steatosis | | | pending |

## Terms already carried across

| ID | Legacy label | Label in the rewrite |
|---|---|---|
| AOPO_0000026 | has downstream key event | has_downstream_key_event |
| AOPO_0000048 | has upstream key event | has_upstream_key_event |
| AOPO_0000062 | Adverse Outcome Pathway | adverse_outcome_pathway |
| AOPO_0000089 | Evidence | weight_of_evidence |
| AOPO_0000105 | Key Event | key_event |
| AOPO_0000106 | KeyEventComponent | key_event_component |
| AOPO_0000107 | KeyEventRelationship | key_event_relationship |
| AOPO_0000129 | QuantitativeMeasures | quantitative_understanding |

Note the label style changed from Title Case to snake_case, and AOPO_0000089 and
AOPO_0000129 were also renamed in substance (`Evidence` → `weight_of_evidence`,
`QuantitativeMeasures` → `quantitative_understanding`). Add the old strings as
`oboInOwl:hasExactSynonym` so anything indexed on them still resolves.

When migrating the rest, the same style applies — the legacy labels in the table above
are Title Case and will fail `aopo-label-style-violation.sparql` if pasted verbatim.
