.class public Lcom/oppo/tribune/square/resdown/util/MD5Sign;
.super Ljava/lang/Object;
.source "MD5Sign.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hexDigest(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 21
    const/4 v4, 0x0

    .line 23
    .local v4, "md":Ljava/security/MessageDigest;
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 29
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v6, ""

    invoke-direct {v1, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 30
    .local v1, "buf":Ljava/lang/StringBuffer;
    if-eqz v4, :cond_2

    .line 32
    :try_start_1
    const-string v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->update([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    :goto_1
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 40
    .local v0, "b":[B
    const/4 v5, 0x0

    .local v5, "offset":I
    :goto_2
    array-length v6, v0

    if-ge v5, v6, :cond_2

    .line 41
    aget-byte v3, v0, v5

    .line 42
    .local v3, "i":I
    if-gez v3, :cond_0

    .line 43
    add-int/lit16 v3, v3, 0x100

    .line 45
    :cond_0
    const/16 v6, 0x10

    if-ge v3, v6, :cond_1

    .line 46
    const-string v6, "0"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 24
    .end local v0    # "b":[B
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    .end local v3    # "i":I
    .end local v5    # "offset":I
    :catch_0
    move-exception v2

    .line 25
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_2
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 26
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catchall_0
    move-exception v6

    throw v6

    .line 33
    .restart local v1    # "buf":Ljava/lang/StringBuffer;
    :catch_1
    move-exception v2

    .line 34
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 35
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :catchall_1
    move-exception v6

    throw v6

    .line 52
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
