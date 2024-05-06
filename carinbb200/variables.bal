// Copyright (c) 2023, WSO2 LLC. (http://www.wso2.com).

// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at

// http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

// AUTO-GENERATED FILE.
// This file is auto-generated by Ballerina.

import ballerinax/health.fhir.r4;

# Terminology processor instance
public final r4:TerminologyProcessor terminologyProcessor = r4:terminologyProcessor;

# FHIR registry instance
public final r4:FHIRRegistry fhirRegistry = r4:fhirRegistry;

//Number of search params in CARINCONSUMERDIRECTEDPAYERDATAEXCHANGE_IG_SEARCH_PARAMS_1  = 11
final readonly & map<r4:FHIRSearchParameterDefinition[]> CARINCONSUMERDIRECTEDPAYERDATAEXCHANGE_IG_SEARCH_PARAMS_1 = {
    "ExplanationOfBenefit_Identifier": [
        {
            name: "ExplanationOfBenefit_Identifier",
            'type: r4:TOKEN,
            base: ["ExplanationOfBenefit"],
            expression: "ExplanationOfBenefit.identifier"
        }
    ],
    "ExplanationOfBenefit_Insurer": [
        {
            name: "ExplanationOfBenefit_Insurer",
            'type: r4:REFERENCE,
            base: ["ExplanationOfBenefit"],
            expression: "ExplanationOfBenefit.insurer"
        }
    ],
    "ExplanationOfBenefit_ServiceStartDate": [
        {
            name: "ExplanationOfBenefit_ServiceStartDate",
            'type: r4:DATE,
            base: ["ExplanationOfBenefit"],
            expression: "ExplanationOfBenefit.billablePeriod.start | ExplanationOfBenefit.item.servicedDate | ExplanationOfBenefit.item.servicedPeriod.start"
        }
    ],
    "ExplanationOfBenefit_Patient": [
        {
            name: "ExplanationOfBenefit_Patient",
            'type: r4:REFERENCE,
            base: ["ExplanationOfBenefit"],
            expression: "ExplanationOfBenefit.patient"
        }
    ],
    "ExplanationOfBenefit_Coverage": [
        {
            name: "ExplanationOfBenefit_Coverage",
            'type: r4:REFERENCE,
            base: ["ExplanationOfBenefit"],
            expression: "ExplanationOfBenefit.insurance.coverage"
        }
    ],
    "ExplanationOfBenefit_ServiceDate": [
        {
            name: "ExplanationOfBenefit_ServiceDate",
            'type: r4:DATE,
            base: ["ExplanationOfBenefit"],
            expression: "ExplanationOfBenefit.billablePeriod | ExplanationOfBenefit.item.serviced"
        }
    ],
    "ExplanationOfBenefit_Provider": [
        {
            name: "ExplanationOfBenefit_Provider",
            'type: r4:REFERENCE,
            base: ["ExplanationOfBenefit"],
            expression: "ExplanationOfBenefit.provider"
        }
    ],
    "ExplanationOfBenefit_Careteam": [
        {
            name: "ExplanationOfBenefit_Careteam",
            'type: r4:REFERENCE,
            base: ["ExplanationOfBenefit"],
            expression: "ExplanationOfBenefit.careTeam.provider"
        }
    ],
    "ExplanationOfBenefit_BillablePeriodStart": [
        {
            name: "ExplanationOfBenefit_BillablePeriodStart",
            'type: r4:DATE,
            base: ["ExplanationOfBenefit"],
            expression: "ExplanationOfBenefit.billablePeriod.start"
        }
    ],
    "ExplanationOfBenefit_Type": [
        {
            name: "ExplanationOfBenefit_Type",
            'type: r4:TOKEN,
            base: ["ExplanationOfBenefit"],
            expression: "ExplanationOfBenefit.type"
        }
    ],
    "Coverage_Payor": [
        {
            name: "Coverage_Payor",
            'type: r4:REFERENCE,
            base: ["Coverage"],
            expression: "Coverage.payor"
        }
    ]    
};

public json[] FHIR_VALUE_SETS = [];
public json[] FHIR_CODE_SYSTEMS = [];
