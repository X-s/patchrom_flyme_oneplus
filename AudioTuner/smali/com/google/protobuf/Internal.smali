.class public Lcom/google/protobuf/Internal;
.super Ljava/lang/Object;
.source "Internal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Internal$EnumLiteMap;,
        Lcom/google/protobuf/Internal$EnumLite;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    return-void
.end method

.method public static bytesDefaultValue(Ljava/lang/String;)Lcom/google/protobuf/ByteString;
    .locals 3
    .param p0, "bytes"    # Ljava/lang/String;

    .prologue
    .line 93
    :try_start_0
    const-string v1, "ISO-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 94
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Java VM does not support a standard character set."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static isValidUtf8(Lcom/google/protobuf/ByteString;)Z
    .locals 12
    .param p0, "byteString"    # Lcom/google/protobuf/ByteString;

    .prologue
    const/16 v11, 0xf4

    const/16 v10, 0xbf

    const/16 v9, 0x80

    const/4 v7, 0x0

    .line 114
    const/4 v4, 0x0

    .line 115
    .local v4, "index":I
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v6

    .local v6, "size":I
    move v5, v4

    .line 120
    .end local v4    # "index":I
    .local v5, "index":I
    :cond_0
    :goto_0
    if-ge v5, v6, :cond_e

    .line 121
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    invoke-virtual {p0, v5}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v8

    and-int/lit16 v0, v8, 0xff

    .line 122
    .local v0, "byte1":I
    if-ge v0, v9, :cond_1

    move v5, v4

    .line 124
    .end local v4    # "index":I
    .restart local v5    # "index":I
    goto :goto_0

    .line 127
    .end local v5    # "index":I
    .restart local v4    # "index":I
    :cond_1
    const/16 v8, 0xc2

    if-lt v0, v8, :cond_2

    if-le v0, v11, :cond_3

    .line 184
    .end local v0    # "byte1":I
    :cond_2
    :goto_1
    return v7

    .line 131
    .restart local v0    # "byte1":I
    :cond_3
    if-ge v4, v6, :cond_2

    .line 135
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .restart local v5    # "index":I
    invoke-virtual {p0, v4}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v8

    and-int/lit16 v1, v8, 0xff

    .line 136
    .local v1, "byte2":I
    if-lt v1, v9, :cond_4

    if-le v1, v10, :cond_5

    :cond_4
    move v4, v5

    .line 138
    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_1

    .line 140
    .end local v4    # "index":I
    .restart local v5    # "index":I
    :cond_5
    const/16 v8, 0xdf

    if-le v0, v8, :cond_0

    .line 146
    if-lt v5, v6, :cond_6

    move v4, v5

    .line 148
    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_1

    .line 150
    .end local v4    # "index":I
    .restart local v5    # "index":I
    :cond_6
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    invoke-virtual {p0, v5}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v8

    and-int/lit16 v2, v8, 0xff

    .line 151
    .local v2, "byte3":I
    if-lt v2, v9, :cond_2

    if-gt v2, v10, :cond_2

    .line 155
    const/16 v8, 0xef

    if-gt v0, v8, :cond_9

    .line 158
    const/16 v8, 0xe0

    if-ne v0, v8, :cond_7

    const/16 v8, 0xa0

    if-lt v1, v8, :cond_2

    :cond_7
    const/16 v8, 0xed

    if-ne v0, v8, :cond_8

    const/16 v8, 0x9f

    if-gt v1, v8, :cond_2

    :cond_8
    :goto_2
    move v5, v4

    .line 183
    .end local v4    # "index":I
    .restart local v5    # "index":I
    goto :goto_0

    .line 167
    .end local v5    # "index":I
    .restart local v4    # "index":I
    :cond_9
    if-ge v4, v6, :cond_2

    .line 171
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .restart local v5    # "index":I
    invoke-virtual {p0, v4}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v8

    and-int/lit16 v3, v8, 0xff

    .line 172
    .local v3, "byte4":I
    if-lt v3, v9, :cond_a

    if-le v3, v10, :cond_b

    :cond_a
    move v4, v5

    .line 174
    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_1

    .line 177
    .end local v4    # "index":I
    .restart local v5    # "index":I
    :cond_b
    const/16 v8, 0xf0

    if-ne v0, v8, :cond_c

    const/16 v8, 0x90

    if-lt v1, v8, :cond_d

    :cond_c
    if-ne v0, v11, :cond_f

    const/16 v8, 0x8f

    if-le v1, v8, :cond_f

    :cond_d
    move v4, v5

    .line 180
    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_1

    .line 184
    .end local v0    # "byte1":I
    .end local v1    # "byte2":I
    .end local v2    # "byte3":I
    .end local v3    # "byte4":I
    .end local v4    # "index":I
    .restart local v5    # "index":I
    :cond_e
    const/4 v7, 0x1

    move v4, v5

    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_1

    .end local v4    # "index":I
    .restart local v0    # "byte1":I
    .restart local v1    # "byte2":I
    .restart local v2    # "byte3":I
    .restart local v3    # "byte4":I
    .restart local v5    # "index":I
    :cond_f
    move v4, v5

    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_2
.end method

.method public static stringDefaultValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # Ljava/lang/String;

    .prologue
    .line 74
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 75
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Java VM does not support a standard character set."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
