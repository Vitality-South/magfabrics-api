/* eslint-disable */
// @generated by protobuf-ts 2.8.2 with parameter eslint_disable,add_pb_suffix,long_type_number
// @generated from protobuf file "api_discontinued_fabric.proto" (package "magnoliafabrics", syntax proto3)
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
 * @generated from protobuf message magnoliafabrics.DiscontinuedFabric
 */
export interface DiscontinuedFabric {
    /**
     * @gotags: dynamo:"DiscontinuedFabricSKU"
     *
     * @generated from protobuf field: string sku = 1;
     */
    sku: string;
    /**
     * @gotags: dynamo:"DiscontinuedFabricProductCode"
     *
     * @generated from protobuf field: string product_code = 2;
     */
    productCode: string;
}
// @generated message type with reflection information, may provide speed optimized methods
class DiscontinuedFabric$Type extends MessageType<DiscontinuedFabric> {
    constructor() {
        super("magnoliafabrics.DiscontinuedFabric", [
            { no: 1, name: "sku", kind: "scalar", T: 9 /*ScalarType.STRING*/ },
            { no: 2, name: "product_code", kind: "scalar", T: 9 /*ScalarType.STRING*/ }
        ]);
    }
    create(value?: PartialMessage<DiscontinuedFabric>): DiscontinuedFabric {
        const message = { sku: "", productCode: "" };
        globalThis.Object.defineProperty(message, MESSAGE_TYPE, { enumerable: false, value: this });
        if (value !== undefined)
            reflectionMergePartial<DiscontinuedFabric>(this, message, value);
        return message;
    }
    internalBinaryRead(reader: IBinaryReader, length: number, options: BinaryReadOptions, target?: DiscontinuedFabric): DiscontinuedFabric {
        let message = target ?? this.create(), end = reader.pos + length;
        while (reader.pos < end) {
            let [fieldNo, wireType] = reader.tag();
            switch (fieldNo) {
                case /* string sku */ 1:
                    message.sku = reader.string();
                    break;
                case /* string product_code */ 2:
                    message.productCode = reader.string();
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
    internalBinaryWrite(message: DiscontinuedFabric, writer: IBinaryWriter, options: BinaryWriteOptions): IBinaryWriter {
        /* string sku = 1; */
        if (message.sku !== "")
            writer.tag(1, WireType.LengthDelimited).string(message.sku);
        /* string product_code = 2; */
        if (message.productCode !== "")
            writer.tag(2, WireType.LengthDelimited).string(message.productCode);
        let u = options.writeUnknownFields;
        if (u !== false)
            (u == true ? UnknownFieldHandler.onWrite : u)(this.typeName, message, writer);
        return writer;
    }
}
/**
 * @generated MessageType for protobuf message magnoliafabrics.DiscontinuedFabric
 */
export const DiscontinuedFabric = new DiscontinuedFabric$Type();
