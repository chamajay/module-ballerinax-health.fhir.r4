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

public const string PROFILE_BASE_DEVICEMETRIC = "http://hl7.org/fhir/StructureDefinition/DeviceMetric";
public const RESOURCE_NAME_DEVICEMETRIC = "DeviceMetric";

# FHIR DeviceMetric resource record.
#
# + resourceType - The type of the resource describes
# + operationalStatus - Indicates current operational state of the device. For example: On, Off, Standby, etc.
# + identifier - Unique instance identifiers assigned to a device by the device or gateway software, manufacturers, other organizations or owners. For example: handle ID.
# + parent - Describes the link to the Device that this DeviceMetric belongs to and that provide information about the location of this DeviceMetric in the containment structure of the parent Device. An example would be a Device that represents a Channel. This reference can be used by a client application to distinguish DeviceMetrics that have the same type, but should be interpreted based on their containment location.
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + measurementPeriod - Describes the measurement repetition time. This is not necessarily the same as the update period. The measurement repetition time can range from milliseconds up to hours. An example for a measurement repetition time in the range of milliseconds is the sampling rate of an ECG. An example for a measurement repetition time in the range of hours is a NIBP that is triggered automatically every hour. The update period may be different than the measurement repetition time, if the device does not update the published observed value with the same frequency as it was measured.
# + color - Describes the color representation for the metric. This is often used to aid clinicians to track and identify parameter types by color. In practice, consider a Patient Monitor that has ECG/HR and Pleth for example; the parameters are displayed in different characteristic colors, such as HR-blue, BP-green, and PR and SpO2- magenta.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + language - The base language in which the resource is written.
# + 'source - Describes the link to the Device that this DeviceMetric belongs to and that contains administrative device information such as manufacturer, serial number, etc.
# + 'type - Describes the type of the metric. For example: Heart Rate, PEEP Setting, etc.
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, and nor can they have their own independent transaction scope.
# + unit - Describes the unit that an observed value determined for this metric will have. For example: Percent, Seconds, etc.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
# + category - Indicates the category of the observation generation process. A DeviceMetric can be for example a setting, measurement, or calculation.
# + calibration - Describes the calibrations that have been performed or that are required to be performed.
@r4:ResourceDefinition {
    resourceType: "DeviceMetric",
    baseType: r4:DomainResource,
    profile: "http://hl7.org/fhir/StructureDefinition/DeviceMetric",
    elements: {
        "operationalStatus" : {
            name: "operationalStatus",
            dataType: DeviceMetricOperationalStatus,
            min: 0,
            max: 1,
            isArray: false,
            path: "DeviceMetric.operationalStatus",
            valueSet: "http://hl7.org/fhir/ValueSet/metric-operational-status|4.0.1"
        },
        "identifier" : {
            name: "identifier",
            dataType: r4:Identifier,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "DeviceMetric.identifier"
        },
        "parent" : {
            name: "parent",
            dataType: r4:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "DeviceMetric.parent"
        },
        "extension" : {
            name: "extension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "DeviceMetric.extension"
        },
        "measurementPeriod" : {
            name: "measurementPeriod",
            dataType: r4:Timing,
            min: 0,
            max: 1,
            isArray: false,
            path: "DeviceMetric.measurementPeriod"
        },
        "color" : {
            name: "color",
            dataType: DeviceMetricColor,
            min: 0,
            max: 1,
            isArray: false,
            path: "DeviceMetric.color",
            valueSet: "http://hl7.org/fhir/ValueSet/metric-color|4.0.1"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "DeviceMetric.modifierExtension"
        },
        "language" : {
            name: "language",
            dataType: r4:code,
            min: 0,
            max: 1,
            isArray: false,
            path: "DeviceMetric.language",
            valueSet: "http://hl7.org/fhir/ValueSet/languages"
        },
        "source" : {
            name: "source",
            dataType: r4:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "DeviceMetric.source"
        },
        "type" : {
            name: "type",
            dataType: r4:CodeableConcept,
            min: 1,
            max: 1,
            isArray: false,
            path: "DeviceMetric.type",
            valueSet: "http://hl7.org/fhir/ValueSet/devicemetric-type"
        },
        "contained" : {
            name: "contained",
            dataType: r4:Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "DeviceMetric.contained"
        },
        "unit" : {
            name: "unit",
            dataType: r4:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "DeviceMetric.unit",
            valueSet: "http://hl7.org/fhir/ValueSet/devicemetric-type"
        },
        "meta" : {
            name: "meta",
            dataType: r4:Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "DeviceMetric.meta"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: r4:uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "DeviceMetric.implicitRules"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "DeviceMetric.id"
        },
        "text" : {
            name: "text",
            dataType: r4:Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "DeviceMetric.text"
        },
        "category" : {
            name: "category",
            dataType: DeviceMetricCategory,
            min: 1,
            max: 1,
            isArray: false,
            path: "DeviceMetric.category",
            valueSet: "http://hl7.org/fhir/ValueSet/metric-category|4.0.1"
        },
        "calibration" : {
            name: "calibration",
            dataType: DeviceMetricCalibration,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "DeviceMetric.calibration"
        }
    },
    serializers: {
        'xml: r4:fhirResourceXMLSerializer,
        'json: r4:fhirResourceJsonSerializer
    }
}
public type DeviceMetric record {|
    *r4:DomainResource;

    RESOURCE_NAME_DEVICEMETRIC resourceType = RESOURCE_NAME_DEVICEMETRIC;

    BaseDeviceMetricMeta meta = {
        profile : [PROFILE_BASE_DEVICEMETRIC]
    };
    DeviceMetricOperationalStatus operationalStatus?;
    r4:Identifier[] identifier?;
    r4:Reference parent?;
    r4:Extension[] extension?;
    r4:Timing measurementPeriod?;
    DeviceMetricColor color?;
    r4:Extension[] modifierExtension?;
    r4:code language?;
    r4:Reference 'source?;
    r4:CodeableConcept 'type;
    r4:Resource[] contained?;
    r4:CodeableConcept unit?;
    r4:uri implicitRules?;
    string id?;
    r4:Narrative text?;
    DeviceMetricCategory category;
    DeviceMetricCalibration[] calibration?;
    never...;
|};

@r4:DataTypeDefinition {
    name: "BaseDeviceMetricMeta",
    baseType: r4:Meta,
    elements: {},
    serializers: {
        'xml: r4:complexDataTypeXMLSerializer,
        'json: r4:complexDataTypeJsonSerializer
    }
}
public type BaseDeviceMetricMeta record {|
    *r4:Meta;

    //Inherited child element from "Element" (Redefining to maintain order when serialize) (START)
    string id?;
    r4:Extension[] extension?;
    //Inherited child element from "Element" (Redefining to maintain order when serialize) (END)

    r4:id versionId?;
    r4:instant lastUpdated?;
    r4:uri 'source?;
    r4:canonical[] profile = ["http://hl7.org/fhir/StructureDefinition/DeviceMetric"];
    r4:Coding[] security?;
    r4:Coding[] tag?;
|};

# DeviceMetricCalibrationType enum
public enum DeviceMetricCalibrationType {
   CODE_TYPE_OFFSET = "offset",
   CODE_TYPE_UNSPECIFIED = "unspecified",
   CODE_TYPE_TWO_POINT = "two-point",
   CODE_TYPE_GAIN = "gain"
}

# DeviceMetricColor enum
public enum DeviceMetricColor {
   CODE_COLOR_RED = "red",
   CODE_COLOR_MAGENTA = "magenta",
   CODE_COLOR_GREEN = "green",
   CODE_COLOR_BLUE = "blue",
   CODE_COLOR_WHITE = "white",
   CODE_COLOR_BLACK = "black",
   CODE_COLOR_YELLOW = "yellow",
   CODE_COLOR_CYAN = "cyan"
}

# DeviceMetricCalibrationState enum
public enum DeviceMetricCalibrationState {
   CODE_STATE_UNSPECIFIED = "unspecified",
   CODE_STATE_NOT_CALIBRATED = "not-calibrated",
   CODE_STATE_CALIBRATION_REQUIRED = "calibration-required",
   CODE_STATE_CALIBRATED = "calibrated"
}

# FHIR DeviceMetricCalibration datatype record.
#
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + state - Describes the state of the calibration.
# + time - Describes the time last calibration has been performed.
# + 'type - Describes the type of the calibration method.
@r4:DataTypeDefinition {
    name: "DeviceMetricCalibration",
    baseType: (),
    elements: {
        "extension": {
            name: "extension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "DeviceMetric.calibration.extension"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "DeviceMetric.calibration.modifierExtension"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "DeviceMetric.calibration.id"
        },
        "state": {
            name: "state",
            dataType: DeviceMetricCalibrationState,
            min: 0,
            max: 1,
            isArray: false,
            description: "Describes the state of the calibration.",
            path: "DeviceMetric.calibration.state"
        },
        "time": {
            name: "time",
            dataType: r4:instant,
            min: 0,
            max: 1,
            isArray: false,
            description: "Describes the time last calibration has been performed.",
            path: "DeviceMetric.calibration.time"
        },
        "type": {
            name: "type",
            dataType: DeviceMetricCalibrationType,
            min: 0,
            max: 1,
            isArray: false,
            description: "Describes the type of the calibration method.",
            path: "DeviceMetric.calibration.type"
        }
    },
    serializers: {
        'xml: r4:complexDataTypeXMLSerializer,
        'json: r4:complexDataTypeJsonSerializer
    }
}
public type DeviceMetricCalibration record {|
    r4:Extension[] extension?;
    r4:Extension[] modifierExtension?;
    string id?;
    DeviceMetricCalibrationState state?;
    r4:instant time?;
    DeviceMetricCalibrationType 'type?;
|};

# DeviceMetricOperationalStatus enum
public enum DeviceMetricOperationalStatus {
   CODE_OPERATIONALSTATUS_STANDBY = "standby",
   CODE_OPERATIONALSTATUS_ENTERED_IN_ERROR = "entered-in-error",
   CODE_OPERATIONALSTATUS_OFF = "off",
   CODE_OPERATIONALSTATUS_ON = "on"
}

# DeviceMetricCategory enum
public enum DeviceMetricCategory {
   CODE_CATEGORY_CALCULATION = "calculation",
   CODE_CATEGORY_UNSPECIFIED = "unspecified",
   CODE_CATEGORY_MEASUREMENT = "measurement",
   CODE_CATEGORY_SETTING = "setting"
}
