.class public Lcom/adobe/xmp/impl/Utils;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Lcom/adobe/xmp/XMPConst;


# static fields
.field public static final UUID_LENGTH:I = 0x24

.field public static final UUID_SEGMENT_COUNT:I = 0x4

.field private static xmlNameChars:[Z

.field private static xmlNameStartChars:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 34
    invoke-static {}, Lcom/adobe/xmp/impl/Utils;->initCharTables()V

    .line 35
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method static checkUUIDFormat(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 278
    if-eqz p0, :cond_0

    move v5, v2

    move v0, v2

    move v4, v1

    .line 283
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v5, v3, :cond_5

    .line 285
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x2d

    if-eq v3, v6, :cond_1

    move v3, v4

    .line 283
    :goto_1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v3

    goto :goto_0

    .line 280
    :cond_0
    return v2

    .line 287
    :cond_1
    add-int/lit8 v3, v0, 0x1

    .line 288
    if-nez v4, :cond_2

    :goto_2
    move v0, v2

    :goto_3
    move v7, v3

    move v3, v0

    move v0, v7

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    .line 289
    if-ne v5, v0, :cond_4

    :cond_3
    move v0, v1

    .line 288
    goto :goto_3

    :cond_4
    const/16 v0, 0xd

    .line 289
    if-eq v5, v0, :cond_3

    const/16 v0, 0x12

    if-eq v5, v0, :cond_3

    const/16 v0, 0x17

    if-eq v5, v0, :cond_3

    goto :goto_2

    .line 293
    :cond_5
    if-nez v4, :cond_7

    :cond_6
    return v2

    :cond_7
    const/4 v3, 0x4

    if-ne v3, v0, :cond_6

    const/16 v0, 0x24

    if-ne v0, v5, :cond_6

    return v1
.end method

.method public static escapeXML(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0xa

    const/16 v4, 0x9

    const/4 v1, 0x0

    move v0, v1

    .line 374
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_c

    .line 376
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3c

    .line 378
    if-ne v2, v3, :cond_2

    .line 382
    :cond_0
    :goto_1
    const/4 v0, 0x1

    .line 387
    :goto_2
    if-eqz v0, :cond_6

    .line 395
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 396
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_b

    .line 398
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 399
    if-nez p2, :cond_7

    .line 401
    :cond_1
    sparse-switch v0, :sswitch_data_0

    .line 409
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 396
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    const/16 v3, 0x3e

    .line 378
    if-eq v2, v3, :cond_0

    const/16 v3, 0x26

    if-eq v2, v3, :cond_0

    .line 379
    if-nez p2, :cond_4

    .line 380
    :cond_3
    if-nez p1, :cond_5

    .line 374
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    :cond_4
    if-eq v2, v4, :cond_0

    if-eq v2, v5, :cond_0

    if-ne v2, v6, :cond_3

    goto :goto_1

    :cond_5
    const/16 v3, 0x22

    .line 380
    if-eq v2, v3, :cond_0

    goto :goto_5

    .line 390
    :cond_6
    return-object p0

    .line 399
    :cond_7
    if-ne v0, v4, :cond_9

    :cond_8
    :goto_6
    const-string/jumbo v3, "&#x"

    .line 416
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    const/16 v0, 0x3b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 399
    :cond_9
    if-eq v0, v5, :cond_8

    if-ne v0, v6, :cond_1

    goto :goto_6

    :sswitch_0
    const-string/jumbo v0, "&lt;"

    .line 405
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :sswitch_1
    const-string/jumbo v0, "&gt;"

    .line 406
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :sswitch_2
    const-string/jumbo v0, "&amp;"

    .line 407
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 408
    :sswitch_3
    if-nez p1, :cond_a

    const-string/jumbo v0, "\""

    :goto_7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_a
    const-string/jumbo v0, "&quot;"

    goto :goto_7

    .line 421
    :cond_b
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c
    move v0, v1

    goto/16 :goto_2

    .line 401
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_2
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method private static initCharTables()V
    .locals 8

    .prologue
    const/16 v7, 0x5a

    const/16 v6, 0x41

    const/16 v5, 0x3a

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x100

    .line 485
    new-array v0, v0, [Z

    sput-object v0, Lcom/adobe/xmp/impl/Utils;->xmlNameChars:[Z

    const/16 v0, 0x100

    .line 486
    new-array v0, v0, [Z

    sput-object v0, Lcom/adobe/xmp/impl/Utils;->xmlNameStartChars:[Z

    move v3, v2

    .line 488
    :goto_0
    sget-object v0, Lcom/adobe/xmp/impl/Utils;->xmlNameChars:[Z

    array-length v0, v0

    if-ge v3, v0, :cond_16

    .line 490
    sget-object v4, Lcom/adobe/xmp/impl/Utils;->xmlNameStartChars:[Z

    const/16 v0, 0x61

    .line 491
    if-le v0, v3, :cond_7

    .line 492
    :cond_0
    if-le v6, v3, :cond_8

    .line 493
    :cond_1
    if-ne v3, v5, :cond_9

    :cond_2
    :goto_1
    move v0, v1

    .line 490
    :goto_2
    aput-boolean v0, v4, v3

    .line 498
    sget-object v4, Lcom/adobe/xmp/impl/Utils;->xmlNameChars:[Z

    const/16 v0, 0x61

    .line 499
    if-le v0, v3, :cond_e

    .line 500
    :cond_3
    if-le v6, v3, :cond_f

    :cond_4
    const/16 v0, 0x30

    .line 501
    if-le v0, v3, :cond_10

    .line 502
    :cond_5
    if-ne v3, v5, :cond_11

    :cond_6
    :goto_3
    move v0, v1

    .line 498
    :goto_4
    aput-boolean v0, v4, v3

    .line 488
    add-int/lit8 v0, v3, 0x1

    int-to-char v0, v0

    move v3, v0

    goto :goto_0

    :cond_7
    const/16 v0, 0x7a

    .line 491
    if-gt v3, v0, :cond_0

    goto :goto_1

    .line 492
    :cond_8
    if-gt v3, v7, :cond_1

    goto :goto_1

    :cond_9
    const/16 v0, 0x5f

    .line 494
    if-eq v3, v0, :cond_2

    const/16 v0, 0xc0

    .line 495
    if-le v0, v3, :cond_c

    :cond_a
    const/16 v0, 0xd8

    .line 496
    if-le v0, v3, :cond_d

    :cond_b
    move v0, v2

    .line 490
    goto :goto_2

    :cond_c
    const/16 v0, 0xd6

    .line 495
    if-gt v3, v0, :cond_a

    goto :goto_1

    :cond_d
    const/16 v0, 0xf6

    .line 490
    if-gt v3, v0, :cond_b

    goto :goto_1

    :cond_e
    const/16 v0, 0x7a

    .line 499
    if-gt v3, v0, :cond_3

    goto :goto_3

    .line 500
    :cond_f
    if-gt v3, v7, :cond_4

    goto :goto_3

    :cond_10
    const/16 v0, 0x39

    .line 501
    if-gt v3, v0, :cond_5

    goto :goto_3

    :cond_11
    const/16 v0, 0x5f

    .line 503
    if-eq v3, v0, :cond_6

    const/16 v0, 0x2d

    .line 504
    if-eq v3, v0, :cond_6

    const/16 v0, 0x2e

    .line 505
    if-eq v3, v0, :cond_6

    const/16 v0, 0xb7

    .line 506
    if-eq v3, v0, :cond_6

    const/16 v0, 0xc0

    .line 507
    if-le v0, v3, :cond_14

    :cond_12
    const/16 v0, 0xd8

    .line 508
    if-le v0, v3, :cond_15

    :cond_13
    move v0, v2

    .line 498
    goto :goto_4

    :cond_14
    const/16 v0, 0xd6

    .line 507
    if-gt v3, v0, :cond_12

    goto :goto_3

    :cond_15
    const/16 v0, 0xf6

    .line 498
    if-gt v3, v0, :cond_13

    goto :goto_3

    .line 510
    :cond_16
    return-void
.end method

.method static isControlChar(C)Z
    .locals 1

    .prologue
    const/16 v0, 0x1f

    .line 353
    if-gt p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x9

    .line 354
    if-ne p0, v0, :cond_3

    .line 353
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_2
    const/16 v0, 0x7f

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_3
    const/16 v0, 0xa

    .line 354
    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    .line 353
    const/4 v0, 0x1

    return v0
.end method

.method static isInternalProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string/jumbo v2, "http://purl.org/dc/elements/1.1/"

    .line 165
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "http://ns.adobe.com/xap/1.0/"

    .line 172
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "http://ns.adobe.com/pdf/1.3/"

    .line 181
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "http://ns.adobe.com/tiff/1.0/"

    .line 190
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string/jumbo v2, "http://ns.adobe.com/exif/1.0/"

    .line 199
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "http://ns.adobe.com/exif/1.0/aux/"

    .line 207
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string/jumbo v2, "http://ns.adobe.com/photoshop/1.0/"

    .line 211
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string/jumbo v2, "http://ns.adobe.com/camera-raw-settings/1.0/"

    .line 218
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string/jumbo v2, "http://ns.adobe.com/StockPhoto/1.0/"

    .line 226
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string/jumbo v2, "http://ns.adobe.com/xap/1.0/mm/"

    .line 230
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string/jumbo v2, "http://ns.adobe.com/xap/1.0/t/"

    .line 234
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string/jumbo v2, "http://ns.adobe.com/xap/1.0/t/pg/"

    .line 238
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string/jumbo v2, "http://ns.adobe.com/xap/1.0/g/"

    .line 242
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string/jumbo v2, "http://ns.adobe.com/xap/1.0/g/img/"

    .line 246
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string/jumbo v2, "http://ns.adobe.com/xap/1.0/sType/Font#"

    .line 250
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 255
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v2, "dc:format"

    .line 167
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    .line 171
    goto :goto_0

    :cond_3
    const-string/jumbo v2, "dc:language"

    .line 167
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "xmp:BaseURL"

    .line 174
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move v0, v1

    .line 180
    goto :goto_0

    :cond_6
    const-string/jumbo v2, "xmp:CreatorTool"

    .line 174
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "xmp:Format"

    .line 175
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "xmp:Locale"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "xmp:MetadataDate"

    .line 176
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "xmp:ModifyDate"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_7
    const-string/jumbo v2, "pdf:BaseURL"

    .line 183
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    move v0, v1

    .line 189
    goto :goto_0

    :cond_9
    const-string/jumbo v2, "pdf:Creator"

    .line 183
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "pdf:ModDate"

    .line 184
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "pdf:PDFVersion"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "pdf:Producer"

    .line 185
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_a
    const-string/jumbo v2, "tiff:ImageDescription"

    .line 193
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "tiff:Artist"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "tiff:Copyright"

    .line 194
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v2, "exif:UserComment"

    .line 202
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_c
    move v0, v1

    .line 210
    goto/16 :goto_0

    :cond_d
    const-string/jumbo v2, "photoshop:ICCProfile"

    .line 213
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 217
    goto/16 :goto_0

    :cond_e
    const-string/jumbo v2, "crs:Version"

    .line 220
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_f
    move v0, v1

    .line 225
    goto/16 :goto_0

    :cond_10
    const-string/jumbo v2, "crs:RawFileName"

    .line 220
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string/jumbo v2, "crs:ToneCurveName"

    .line 221
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_0

    :cond_11
    move v0, v1

    .line 229
    goto/16 :goto_0

    :cond_12
    move v0, v1

    .line 233
    goto/16 :goto_0

    :cond_13
    move v0, v1

    .line 237
    goto/16 :goto_0

    :cond_14
    move v0, v1

    .line 241
    goto/16 :goto_0

    :cond_15
    move v0, v1

    .line 245
    goto/16 :goto_0

    :cond_16
    move v0, v1

    .line 249
    goto/16 :goto_0

    :cond_17
    move v0, v1

    .line 252
    goto/16 :goto_0
.end method

.method private static isNameChar(C)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0xff

    .line 476
    if-le p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    sget-object v0, Lcom/adobe/xmp/impl/Utils;->xmlNameChars:[Z

    aget-boolean v0, v0, p0

    if-nez v0, :cond_0

    return v1
.end method

.method private static isNameStartChar(C)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0xff

    .line 459
    if-le p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    sget-object v0, Lcom/adobe/xmp/impl/Utils;->xmlNameStartChars:[Z

    aget-boolean v0, v0, p0

    if-nez v0, :cond_0

    return v1
.end method

.method public static isXMLName(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 308
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move v0, v1

    .line 312
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 314
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/adobe/xmp/impl/Utils;->isNameChar(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/adobe/xmp/impl/Utils;->isNameStartChar(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    return v3

    .line 316
    :cond_2
    return v3

    .line 319
    :cond_3
    return v1
.end method

.method public static isXMLNameNS(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/16 v4, 0x3a

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 332
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :goto_0
    move v0, v1

    .line 336
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 338
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/adobe/xmp/impl/Utils;->isNameChar(C)Z

    move-result v2

    if-nez v2, :cond_4

    .line 340
    :cond_0
    return v3

    .line 332
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/adobe/xmp/impl/Utils;->isNameStartChar(C)Z

    move-result v0

    if-nez v0, :cond_3

    .line 334
    :cond_2
    return v3

    .line 332
    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v4, :cond_2

    goto :goto_0

    .line 338
    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_0

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 343
    :cond_5
    return v1
.end method

.method public static normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const-string/jumbo v1, "x-default"

    .line 65
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 71
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move v4, v0

    move v0, v1

    move v1, v4

    .line 73
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 75
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    const/4 v3, 0x2

    .line 88
    if-ne v0, v3, :cond_1

    .line 94
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 73
    :goto_1
    :sswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_0
    return-object p0

    .line 80
    :sswitch_1
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 99
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 75
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x2d -> :sswitch_1
        0x5f -> :sswitch_1
    .end sparse-switch
.end method

.method static removeControlChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 435
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 436
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 438
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/adobe/xmp/impl/Utils;->isControlChar(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 436
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 440
    :cond_0
    const/16 v2, 0x20

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_1

    .line 443
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static splitNameAndValue(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/16 v0, 0x3d

    .line 124
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 126
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x3f

    if-eq v0, v4, :cond_1

    move v0, v1

    .line 130
    :goto_0
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 133
    add-int/lit8 v0, v3, 0x1

    .line 134
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 135
    add-int/lit8 v0, v0, 0x1

    .line 136
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    .line 137
    new-instance v7, Ljava/lang/StringBuffer;

    sub-int v3, v6, v3

    invoke-direct {v7, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 138
    :cond_0
    :goto_1
    if-ge v0, v6, :cond_2

    .line 140
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 141
    add-int/lit8 v0, v0, 0x1

    .line 142
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_0

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 128
    goto :goto_0

    .line 148
    :cond_2
    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v4, v0, v2

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method
