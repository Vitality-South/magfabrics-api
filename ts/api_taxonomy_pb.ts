/* eslint-disable */
// @generated by protobuf-ts 2.8.1 with parameter eslint_disable,add_pb_suffix,long_type_number
// @generated from protobuf file "api_taxonomy.proto" (package "magnoliafabrics", syntax proto3)
// tslint:disable
//
// Copyright (c) 2022 Vitality South, LLC <chris@vitalitysouth.com>
// All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
import type { BinaryWriteOptions } from "@protobuf-ts/runtime";
import type { IBinaryWriter } from "@protobuf-ts/runtime";
import { WireType } from "@protobuf-ts/runtime";
import type { BinaryReadOptions } from "@protobuf-ts/runtime";
import type { IBinaryReader } from "@protobuf-ts/runtime";
import { UnknownFieldHandler } from "@protobuf-ts/runtime";
import type { PartialMessage } from "@protobuf-ts/runtime";
import { reflectionMergePartial } from "@protobuf-ts/runtime";
import { MESSAGE_TYPE } from "@protobuf-ts/runtime";
import { MessageType } from "@protobuf-ts/runtime";
/**
 * @generated from protobuf message magnoliafabrics.Taxonomy
 */
export interface Taxonomy {
    /**
     * @gotags: dynamo:"TaxonomyBrands"
     *
     * @generated from protobuf field: repeated string Brands = 1 [json_name = "Brands"];
     */
    brands: string[];
    /**
     * @gotags: dynamo:"TaxonomyUses"
     *
     * @generated from protobuf field: repeated string Uses = 2 [json_name = "Uses"];
     */
    uses: string[];
    /**
     * @gotags: dynamo:"TaxonomyColors"
     *
     * @generated from protobuf field: repeated string Colors = 3 [json_name = "Colors"];
     */
    colors: string[];
    /**
     * @gotags: dynamo:"TaxonomyDesigns"
     *
     * @generated from protobuf field: repeated string Designs = 4 [json_name = "Designs"];
     */
    designs: string[];
    /**
     * @gotags: dynamo:"TaxonomyCategories"
     *
     * @generated from protobuf field: repeated string Categories = 5 [json_name = "Categories"];
     */
    categories: string[];
}
// @generated message type with reflection information, may provide speed optimized methods
class Taxonomy$Type extends MessageType<Taxonomy> {
    constructor() {
        super("magnoliafabrics.Taxonomy", [
            { no: 1, name: "Brands", kind: "scalar", jsonName: "Brands", repeat: 2 /*RepeatType.UNPACKED*/, T: 9 /*ScalarType.STRING*/ },
            { no: 2, name: "Uses", kind: "scalar", jsonName: "Uses", repeat: 2 /*RepeatType.UNPACKED*/, T: 9 /*ScalarType.STRING*/ },
            { no: 3, name: "Colors", kind: "scalar", jsonName: "Colors", repeat: 2 /*RepeatType.UNPACKED*/, T: 9 /*ScalarType.STRING*/ },
            { no: 4, name: "Designs", kind: "scalar", jsonName: "Designs", repeat: 2 /*RepeatType.UNPACKED*/, T: 9 /*ScalarType.STRING*/ },
            { no: 5, name: "Categories", kind: "scalar", jsonName: "Categories", repeat: 2 /*RepeatType.UNPACKED*/, T: 9 /*ScalarType.STRING*/ }
        ]);
    }
    create(value?: PartialMessage<Taxonomy>): Taxonomy {
        const message = { brands: [], uses: [], colors: [], designs: [], categories: [] };
        globalThis.Object.defineProperty(message, MESSAGE_TYPE, { enumerable: false, value: this });
        if (value !== undefined)
            reflectionMergePartial<Taxonomy>(this, message, value);
        return message;
    }
    internalBinaryRead(reader: IBinaryReader, length: number, options: BinaryReadOptions, target?: Taxonomy): Taxonomy {
        let message = target ?? this.create(), end = reader.pos + length;
        while (reader.pos < end) {
            let [fieldNo, wireType] = reader.tag();
            switch (fieldNo) {
                case /* repeated string Brands = 1 [json_name = "Brands"];*/ 1:
                    message.brands.push(reader.string());
                    break;
                case /* repeated string Uses = 2 [json_name = "Uses"];*/ 2:
                    message.uses.push(reader.string());
                    break;
                case /* repeated string Colors = 3 [json_name = "Colors"];*/ 3:
                    message.colors.push(reader.string());
                    break;
                case /* repeated string Designs = 4 [json_name = "Designs"];*/ 4:
                    message.designs.push(reader.string());
                    break;
                case /* repeated string Categories = 5 [json_name = "Categories"];*/ 5:
                    message.categories.push(reader.string());
                    break;
                default:
                    let u = options.readUnknownField;
                    if (u === "throw")
                        throw new globalThis.Error(`Unknown field ${fieldNo} (wire type ${wireType}) for ${this.typeName}`);
                    let d = reader.skip(wireType);
                    if (u !== false)
                        (u === true ? UnknownFieldHandler.onRead : u)(this.typeName, message, fieldNo, wireType, d);
            }
        }
        return message;
    }
    internalBinaryWrite(message: Taxonomy, writer: IBinaryWriter, options: BinaryWriteOptions): IBinaryWriter {
        /* repeated string Brands = 1 [json_name = "Brands"]; */
        for (let i = 0; i < message.brands.length; i++)
            writer.tag(1, WireType.LengthDelimited).string(message.brands[i]);
        /* repeated string Uses = 2 [json_name = "Uses"]; */
        for (let i = 0; i < message.uses.length; i++)
            writer.tag(2, WireType.LengthDelimited).string(message.uses[i]);
        /* repeated string Colors = 3 [json_name = "Colors"]; */
        for (let i = 0; i < message.colors.length; i++)
            writer.tag(3, WireType.LengthDelimited).string(message.colors[i]);
        /* repeated string Designs = 4 [json_name = "Designs"]; */
        for (let i = 0; i < message.designs.length; i++)
            writer.tag(4, WireType.LengthDelimited).string(message.designs[i]);
        /* repeated string Categories = 5 [json_name = "Categories"]; */
        for (let i = 0; i < message.categories.length; i++)
            writer.tag(5, WireType.LengthDelimited).string(message.categories[i]);
        let u = options.writeUnknownFields;
        if (u !== false)
            (u == true ? UnknownFieldHandler.onWrite : u)(this.typeName, message, writer);
        return writer;
    }
}
/**
 * @generated MessageType for protobuf message magnoliafabrics.Taxonomy
 */
export const Taxonomy = new Taxonomy$Type();