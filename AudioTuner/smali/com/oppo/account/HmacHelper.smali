.class public Lcom/oppo/account/HmacHelper;
.super Ljava/lang/Object;
.source "HmacHelper.java"


# static fields
.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hmacSign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "aValue"    # Ljava/lang/String;
    .param p1, "aKey"    # Ljava/lang/String;

    .prologue
    .line 13
    const-string v0, "UTF-8"

    invoke-static {p0, p1, v0}, Lcom/oppo/account/HmacHelper;->signMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static signMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "aValue"    # Ljava/lang/String;
    .param p1, "aKey"    # Ljava/lang/String;

    .prologue
    .line 17
    const-string v0, "UTF-8"

    invoke-static {p0, p1, v0}, Lcom/oppo/account/HmacHelper;->signMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static signMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "aValue"    # Ljava/lang/String;
    .param p1, "aKey"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x40

    .line 21
    invoke-static {p2}, Lcom/oppo/account/Utilities;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 22
    const-string p2, "UTF-8"

    .line 25
    :cond_0
    new-array v3, v10, [B

    .line 26
    .local v3, "k_ipad":[B
    new-array v4, v10, [B

    .line 31
    .local v4, "k_opad":[B
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 32
    .local v5, "keyb":[B
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 40
    .local v7, "value":[B
    :goto_0
    array-length v8, v5

    const/16 v9, 0x36

    invoke-static {v3, v8, v10, v9}, Ljava/util/Arrays;->fill([BIIB)V

    .line 41
    array-length v8, v5

    const/16 v9, 0x5c

    invoke-static {v4, v8, v10, v9}, Ljava/util/Arrays;->fill([BIIB)V

    .line 42
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v8, v5

    if-lt v2, v8, :cond_1

    .line 48
    const/4 v6, 0x0

    .line 51
    .local v6, "md":Ljava/security/MessageDigest;
    :try_start_1
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 57
    invoke-virtual {v6, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 58
    invoke-virtual {v6, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 59
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 60
    .local v0, "dg":[B
    invoke-virtual {v6}, Ljava/security/MessageDigest;->reset()V

    .line 61
    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 62
    const/4 v8, 0x0

    const/16 v9, 0x10

    invoke-virtual {v6, v0, v8, v9}, Ljava/security/MessageDigest;->update([BII)V

    .line 63
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 64
    invoke-static {v0}, Lcom/oppo/account/HmacHelper;->toHex([B)Ljava/lang/String;

    move-result-object v8

    .end local v0    # "dg":[B
    :goto_2
    return-object v8

    .line 34
    .end local v2    # "i":I
    .end local v5    # "keyb":[B
    .end local v6    # "md":Ljava/security/MessageDigest;
    .end local v7    # "value":[B
    :catch_0
    move-exception v1

    .line 36
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 37
    .restart local v5    # "keyb":[B
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .restart local v7    # "value":[B
    goto :goto_0

    .line 44
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "i":I
    :cond_1
    aget-byte v8, v5, v2

    xor-int/lit8 v8, v8, 0x36

    int-to-byte v8, v8

    aput-byte v8, v3, v2

    .line 45
    aget-byte v8, v5, v2

    xor-int/lit8 v8, v8, 0x5c

    int-to-byte v8, v8

    aput-byte v8, v4, v2

    .line 42
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 53
    .restart local v6    # "md":Ljava/security/MessageDigest;
    :catch_1
    move-exception v1

    .line 55
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # [B

    .prologue
    const/16 v4, 0x10

    .line 68
    if-nez p0, :cond_0

    .line 69
    const/4 v3, 0x0

    .line 80
    :goto_0
    return-object v3

    .line 70
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 71
    .local v2, "output":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-lt v1, v3, :cond_1

    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 72
    :cond_1
    aget-byte v3, p0, v1

    and-int/lit16 v0, v3, 0xff

    .line 73
    .local v0, "current":I
    if-ge v0, v4, :cond_2

    .line 74
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_2
    invoke-static {v0, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
