.class public Lcom/oppo/account/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field private static final HEXADECIMAL:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 207
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oppo/account/Utilities;->HEXADECIMAL:[C

    .line 208
    return-void

    .line 207
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 7
    .param p0, "binaryData"    # [B

    .prologue
    const/16 v6, 0x10

    .line 211
    array-length v4, p0

    if-eq v4, v6, :cond_0

    .line 212
    const/4 v4, 0x0

    .line 223
    :goto_0
    return-object v4

    .line 215
    :cond_0
    const/16 v4, 0x20

    new-array v0, v4, [C

    .line 216
    .local v0, "buffer":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v6, :cond_1

    .line 223
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 217
    :cond_1
    aget-byte v4, p0, v2

    and-int/lit8 v3, v4, 0xf

    .line 218
    .local v3, "low":I
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v1, v4, 0x4

    .line 219
    .local v1, "high":I
    mul-int/lit8 v4, v2, 0x2

    sget-object v5, Lcom/oppo/account/Utilities;->HEXADECIMAL:[C

    aget-char v5, v5, v1

    aput-char v5, v0, v4

    .line 220
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    sget-object v5, Lcom/oppo/account/Utilities;->HEXADECIMAL:[C

    aget-char v5, v5, v3

    aput-char v5, v0, v4

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static escapeSpecialCharForUrlSegments(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 32
    const-string v0, " "

    const-string v1, "%20"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    const-string v2, "%5B"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "]"

    const-string v2, "%5D"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "|"

    const-string v2, "%7C"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-static {p0}, Lcom/oppo/account/Utilities;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 158
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getDouble(Ljava/lang/String;)D
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 144
    if-nez p0, :cond_0

    .line 150
    :goto_0
    return-wide v2

    .line 148
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getFloat(Ljava/lang/String;)F
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 133
    if-nez p0, :cond_0

    .line 139
    :goto_0
    return v1

    .line 137
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getInt(ILjava/lang/String;)I
    .locals 1
    .param p0, "radix"    # I
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oppo/account/Utilities;->getInt(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInt(ILjava/lang/String;I)I
    .locals 4
    .param p0, "radix"    # I
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "faultValue"    # I

    .prologue
    .line 109
    if-nez p1, :cond_0

    .line 120
    .end local p2    # "faultValue":I
    :goto_0
    return p2

    .line 118
    .restart local p2    # "faultValue":I
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    long-to-int p2, v2

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 172
    const/16 v0, 0xa

    invoke-static {v0, p0}, Lcom/oppo/account/Utilities;->getInt(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "faultValue"    # I

    .prologue
    .line 129
    const/16 v0, 0xa

    invoke-static {v0, p0, p1}, Lcom/oppo/account/Utilities;->getInt(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLong(Ljava/lang/String;)J
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 176
    if-nez p0, :cond_0

    .line 182
    :goto_0
    return-wide v2

    .line 180
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getMD5([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .prologue
    .line 187
    const-string v4, ""

    .line 191
    .local v4, "md5Str":Ljava/lang/String;
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 193
    .local v2, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 194
    .local v3, "md5Bytes":[B
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 196
    .local v0, "hexValue":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "m":I
    :goto_0
    array-length v6, v3

    if-lt v1, v6, :cond_0

    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 204
    .end local v0    # "hexValue":Ljava/lang/StringBuffer;
    .end local v1    # "m":I
    .end local v2    # "md5":Ljava/security/MessageDigest;
    .end local v3    # "md5Bytes":[B
    :goto_1
    return-object v4

    .line 197
    .restart local v0    # "hexValue":Ljava/lang/StringBuffer;
    .restart local v1    # "m":I
    .restart local v2    # "md5":Ljava/security/MessageDigest;
    .restart local v3    # "md5Bytes":[B
    :cond_0
    aget-byte v6, v3, v1

    and-int/lit16 v5, v6, 0xff

    .line 198
    .local v5, "val":I
    const/16 v6, 0x10

    if-ge v5, v6, :cond_1

    .line 199
    const-string v6, "0"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    .end local v0    # "hexValue":Ljava/lang/StringBuffer;
    .end local v1    # "m":I
    .end local v2    # "md5":Ljava/security/MessageDigest;
    .end local v3    # "md5Bytes":[B
    .end local v5    # "val":I
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public static getUTF8Bytes(Ljava/lang/String;)[B
    .locals 10
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 49
    if-nez p0, :cond_0

    .line 50
    new-array v1, v9, [B

    .line 70
    :goto_0
    return-object v1

    .line 53
    :cond_0
    :try_start_0
    const-string v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 54
    :catch_0
    move-exception v3

    .line 60
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 61
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 62
    .local v2, "dos":Ljava/io/DataOutputStream;
    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 64
    .local v5, "jdata":[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 65
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 66
    array-length v6, v5

    add-int/lit8 v6, v6, -0x2

    new-array v1, v6, [B

    .line 67
    .local v1, "buff":[B
    const/4 v6, 0x2

    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v5, v6, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 69
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buff":[B
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .end local v5    # "jdata":[B
    :catch_1
    move-exception v4

    .line 70
    .local v4, "ex":Ljava/io/IOException;
    new-array v1, v9, [B

    goto :goto_0
.end method

.method public static getUTF8String([B)Ljava/lang/String;
    .locals 2
    .param p0, "b"    # [B

    .prologue
    .line 86
    if-nez p0, :cond_0

    .line 87
    const-string v0, ""

    .line 88
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/oppo/account/Utilities;->getUTF8String([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUTF8String([BII)Ljava/lang/String;
    .locals 3
    .param p0, "b"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I

    .prologue
    .line 97
    if-nez p0, :cond_0

    .line 98
    const-string v1, ""

    .line 103
    :goto_0
    return-object v1

    .line 101
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, p1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 36
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
