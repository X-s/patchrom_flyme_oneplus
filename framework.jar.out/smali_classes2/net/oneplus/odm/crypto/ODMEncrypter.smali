.class public Lnet/oneplus/odm/crypto/ODMEncrypter;
.super Ljava/lang/Object;
.source "ODMEncrypter.java"


# static fields
.field private static final SALT:Ljava/lang/String; = "oneplusatoneplus"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToHexString([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    .line 130
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 131
    .local v2, "resultString":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 132
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "hex":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 134
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 136
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v0    # "hex":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static createKey(Landroid/content/Context;)[B
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    invoke-static {p0}, Lnet/oneplus/odm/common/Util;->getAESKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "aeskey":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 152
    .local v0, "aesKeyBytes":[B
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v0, v6}, Lnet/oneplus/odm/crypto/ODMEncrypter;->encryptToCRC64([BI)[B

    move-result-object v1

    .line 153
    .local v1, "aesKeyCRCResult":[B
    const-string v6, "oneplusatoneplus"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string v7, "oneplusatoneplus"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v7}, Lnet/oneplus/odm/crypto/ODMEncrypter;->encryptToCRC64([BI)[B

    move-result-object v5

    .line 154
    .local v5, "saltCRCResult":[B
    array-length v6, v1

    array-length v7, v5

    add-int/2addr v6, v7

    new-array v3, v6, [B

    .line 156
    .local v3, "combineResult":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, v3

    if-ge v4, v6, :cond_1

    .line 158
    array-length v6, v1

    if-ge v4, v6, :cond_0

    aget-byte v6, v1, v4

    :goto_1
    aput-byte v6, v3, v4

    .line 156
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 158
    :cond_0
    array-length v6, v1

    sub-int v6, v4, v6

    aget-byte v6, v5, v6

    goto :goto_1

    .line 160
    :cond_1
    return-object v3
.end method

.method public static decodeFromBasha64([C)Ljava/lang/String;
    .locals 1
    .param p0, "charArray"    # [C

    .prologue
    .line 146
    invoke-static {p0}, Lnet/oneplus/odm/crypto/Basha64;->decrypt([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decryptFromAES(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "encryptedText"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-static {p0}, Lnet/oneplus/odm/crypto/ODMEncrypter;->createKey(Landroid/content/Context;)[B

    move-result-object v4

    .line 94
    .local v4, "key":[B
    :try_start_0
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v7, "AES"

    invoke-direct {v6, v4, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 95
    .local v6, "mSecretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v7, "AES/CBC/PKCS5Padding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 97
    .local v5, "mCipher":Ljavax/crypto/Cipher;
    const/4 v7, 0x0

    const/16 v8, 0x20

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "iv":Ljava/lang/String;
    const/16 v7, 0x20

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 99
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {v2}, Lnet/oneplus/odm/crypto/ODMEncrypter;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v3, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 100
    .local v3, "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v7, 0x2

    invoke-virtual {v5, v7, v6, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 101
    invoke-static {p1}, Lnet/oneplus/odm/crypto/ODMEncrypter;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 102
    .local v0, "decryptBytes":[B
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v0    # "decryptBytes":[B
    .end local v2    # "iv":Ljava/lang/String;
    .end local v3    # "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    .end local v5    # "mCipher":Ljavax/crypto/Cipher;
    .end local v6    # "mSecretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v7

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 105
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static encodeToSHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 43
    :try_start_0
    const-string v6, "SHA-1"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 44
    .local v0, "digest":Ljava/security/MessageDigest;
    const-string v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 45
    .local v2, "hash":[B
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 47
    .local v4, "hexString":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_1

    .line 48
    aget-byte v6, v2, v5

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "hex":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 50
    const/16 v6, 0x30

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 52
    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 54
    .end local v3    # "hex":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    .line 55
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "hash":[B
    .end local v4    # "hexString":Ljava/lang/StringBuffer;
    .end local v5    # "i":I
    :catch_0
    move-exception v1

    .line 56
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public static encodeToSHA256(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 24
    :try_start_0
    const-string v6, "SHA-256"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 25
    .local v0, "digest":Ljava/security/MessageDigest;
    const-string v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 26
    .local v2, "hash":[B
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 28
    .local v4, "hexString":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_1

    .line 29
    aget-byte v6, v2, v5

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 30
    .local v3, "hex":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 31
    const/16 v6, 0x30

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 33
    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 35
    .end local v3    # "hex":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    .line 36
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "hash":[B
    .end local v4    # "hexString":Ljava/lang/StringBuffer;
    .end local v5    # "i":I
    :catch_0
    move-exception v1

    .line 37
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public static encryptToAES(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static {p0}, Lnet/oneplus/odm/crypto/ODMEncrypter;->createKey(Landroid/content/Context;)[B

    move-result-object v4

    .line 69
    .local v4, "key":[B
    :try_start_0
    new-instance v7, Ljava/security/SecureRandom;

    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    .line 70
    .local v7, "random":Ljava/security/SecureRandom;
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "AES"

    invoke-direct {v6, v4, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 71
    .local v6, "mSecretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const/4 v5, 0x0

    .line 72
    .local v5, "mCipher":Ljavax/crypto/Cipher;
    const-string v8, "AES/CBC/PKCS5Padding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 73
    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v8

    new-array v2, v8, [B

    .line 74
    .local v2, "iv":[B
    invoke-virtual {v7, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 75
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 76
    .local v3, "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v8, 0x1

    invoke-virtual {v5, v8, v6, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 78
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 79
    .local v0, "bytes":[B
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lnet/oneplus/odm/crypto/ODMEncrypter;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Lnet/oneplus/odm/crypto/ODMEncrypter;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 82
    .end local v0    # "bytes":[B
    .end local v2    # "iv":[B
    .end local v3    # "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    .end local v5    # "mCipher":Ljavax/crypto/Cipher;
    .end local v6    # "mSecretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v7    # "random":Ljava/security/SecureRandom;
    :goto_0
    return-object v8

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 82
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static encryptToBasha64([C)Ljava/lang/String;
    .locals 1
    .param p0, "charArray"    # [C

    .prologue
    .line 142
    invoke-static {p0}, Lnet/oneplus/odm/crypto/Basha64;->encrypt([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptToCRC32([B)Ljava/lang/String;
    .locals 4
    .param p0, "src"    # [B

    .prologue
    .line 110
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 111
    .local v0, "crc":Ljava/util/zip/CRC32;
    invoke-virtual {v0, p0}, Ljava/util/zip/CRC32;->update([B)V

    .line 112
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static encryptToCRC64([BI)[B
    .locals 2
    .param p0, "src"    # [B
    .param p1, "textSize"    # I

    .prologue
    .line 116
    new-instance v0, Lnet/oneplus/odm/crypto/CRC64;

    invoke-direct {v0, p0, p1}, Lnet/oneplus/odm/crypto/CRC64;-><init>([BI)V

    .line 117
    .local v0, "crc":Lnet/oneplus/odm/crypto/CRC64;
    invoke-virtual {v0}, Lnet/oneplus/odm/crypto/CRC64;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 121
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 122
    .local v2, "len":I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 123
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 124
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 123
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 126
    :cond_0
    return-object v0
.end method
