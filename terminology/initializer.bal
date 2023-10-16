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
// This file is auto-generated by WSO2 Healthcare.

import ballerina/log;
import ballerinax/health.fhir.r4;

public final TerminologyProcessor terminologyProcessor = new ();

# Initializer for the module
# + return - returns error if error occurred
function init() returns r4:FHIRError? {
    json codeSystemsJsonArray = [];
    json valueSetsJsonArray = [];
    do {
        // We should create terminology as json string constants
        // We can't pack those static files with r4 modules to Ballerina central.
        // https://github.com/ballerina-platform/ballerina-spec/issues/1100

        codeSystemsJsonArray = check DEFAULT_FHIR_CODE_SYSTEMS.fromJsonString();
        valueSetsJsonArray = check DEFAULT_FHIR_VALUE_SETS.fromJsonString();
    } on fail var e {
        r4:FHIRError fHIRError = r4:createFHIRError(
                                    "Error occurred while type casting json string Terminologies json objects",
                                    r4:ERROR,
                                    r4:PROCESSING,
                                    diagnostic = e.message(),
                                    cause = e
                                );
        log:printError(fHIRError.toBalString());
    }

    map<r4:CodeSystem> codeSystemMap = {};
    foreach json jCodeSystem in <json[]>codeSystemsJsonArray {
        r4:CodeSystem|error c = jCodeSystem.cloneWithType();
        if c is error {
            r4:FHIRError fHIRError = r4:createFHIRError(
                                        "Error occurred while type casting json code system to CodeSystem type", r4:ERROR,
                                        r4:PROCESSING,
                                        diagnostic = c.message(),
                                        cause = c
                                    );
            log:printError(fHIRError.toBalString());
        } else {
            string key = string `${<string>c.url}|${<string>c.version}`;
            codeSystemMap[key] = c;
        }
    }

    map<r4:ValueSet> valueSetMap = {};
    foreach json jValueSet in <json[]>valueSetsJsonArray {
        r4:ValueSet|error v = jValueSet.cloneWithType();
        if v is error {
            r4:FHIRError fHIRError = r4:createFHIRError(
                                        "Error occurred while type casting json value set to ValueSet type", r4:ERROR,
                                        r4:PROCESSING,
                                        diagnostic = v.message(),
                                        cause = v
                                    );
            log:printError(fHIRError.toBalString());
        } else {
            string key = string `${<string>v.url}|${<string>v.version}`;
            valueSetMap[key] = v;
        }
    }

    // Initialiase terminology processor
    terminologyProcessor.initTerminology(codeSystemMap, valueSetMap);
    log:printDebug("FHIR R4 Terminology Module initialized.");
}
