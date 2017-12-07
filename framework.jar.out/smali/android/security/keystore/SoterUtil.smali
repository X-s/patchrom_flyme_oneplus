.class public Landroid/security/keystore/SoterUtil;
.super Ljava/lang/Object;
.source "SoterUtil.java"


# static fields
.field public static final JSON_KEY_PUBLIC:Ljava/lang/String; = "pub_key"

.field private static final PARAM_NEED_AUTO_ADD_COUNTER_WHEN_GET_PUBLIC_KEY:Ljava/lang/String; = "addcounter"

.field private static final PARAM_NEED_AUTO_ADD_SECMSG_FID_COUNTER_WHEN_SIGN:Ljava/lang/String; = "secmsg_and_counter_signed_when_sign"

.field private static final PARAM_NEED_AUTO_SIGNED_WITH_ATTK_WHEN_GET_PUBLIC_KEY:Ljava/lang/String; = "auto_signed_when_get_pubkey_attk"

.field private static final PARAM_NEED_AUTO_SIGNED_WITH_COMMON_KEY_WHEN_GET_PUBLIC_KEY:Ljava/lang/String; = "auto_signed_when_get_pubkey"

.field private static final PARAM_NEED_NEXT_ATTK:Ljava/lang/String; = "next_attk"

.field private static final RAW_LENGTH_PREFIX:I = 0x4

.field public static final TAG:Ljava/lang/String; = "Soter.Util"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static contains(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "src"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 91
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 92
    :cond_0
    const-string/jumbo v1, "Soter.Util"

    const-string/jumbo v2, "hy: param error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "param error"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_1
    invoke-static {p0}, Landroid/security/keystore/SoterUtil;->isNullOrNil(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v0, p1, v1

    .line 96
    .local v0, "item":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 97
    const/4 v1, 0x1

    return v1

    .line 95
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    .end local v0    # "item":Ljava/lang/String;
    :cond_3
    return v2
.end method

.method private static containsPrefix(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "src"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 110
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 111
    :cond_0
    const-string/jumbo v1, "Soter.Util"

    const-string/jumbo v2, "hy: param error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "param error"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_1
    invoke-static {p0}, Landroid/security/keystore/SoterUtil;->isNullOrNil(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v0, p1, v1

    .line 115
    .local v0, "item":Ljava/lang/String;
    invoke-static {v0}, Landroid/security/keystore/SoterUtil;->isNullOrNil(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 116
    return-object v0

    .line 114
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v0    # "item":Ljava/lang/String;
    :cond_3
    return-object v4
.end method

.method public static convertKeyNameToParameterSpec(Ljava/lang/String;)Landroid/security/keystore/SoterRSAKeyGenParameterSpec;
    .locals 14
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    .line 25
    invoke-static {p0}, Landroid/security/keystore/SoterUtil;->isNullOrNil(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 26
    const-string/jumbo v11, "Soter.Util"

    const-string/jumbo v12, "hy: null or nil when convert key name to parameter"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-object v13

    .line 29
    :cond_0
    const-string/jumbo v11, "\\."

    invoke-virtual {p0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 30
    .local v10, "splits":[Ljava/lang/String;
    if-eqz v10, :cond_1

    array-length v11, v10

    const/4 v12, 0x1

    if-gt v11, v12, :cond_2

    .line 31
    :cond_1
    const-string/jumbo v11, "Soter.Util"

    const-string/jumbo v12, "hy: pure alias, no parameter"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-object v13

    .line 34
    :cond_2
    const/4 v1, 0x1

    .line 35
    .local v1, "isForSoter":Z
    const/4 v2, 0x0

    .line 36
    .local v2, "isAutoSignedWithAttkWhenGetPublicKey":Z
    const/4 v3, 0x0

    .line 37
    .local v3, "isAutoSignedWithCommonkWhenGetPublicKey":Z
    const-string/jumbo v4, ""

    .line 38
    .local v4, "mAutoSignedKeyNameWhenGetPublicKey":Ljava/lang/String;
    const/4 v5, 0x0

    .line 39
    .local v5, "isSecmsgFidCounterSignedWhenSign":Z
    const/4 v6, 0x0

    .line 40
    .local v6, "isAutoAddCounterWhenGetPublicKey":Z
    const/4 v7, 0x0

    .line 42
    .local v7, "isNeedNextAttk":Z
    const-string/jumbo v11, "auto_signed_when_get_pubkey_attk"

    invoke-static {v11, v10}, Landroid/security/keystore/SoterUtil;->contains(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 43
    const/4 v2, 0x1

    .line 56
    :cond_3
    :goto_0
    const-string/jumbo v11, "secmsg_and_counter_signed_when_sign"

    invoke-static {v11, v10}, Landroid/security/keystore/SoterUtil;->contains(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 57
    const/4 v5, 0x1

    .line 59
    :cond_4
    const-string/jumbo v11, "addcounter"

    invoke-static {v11, v10}, Landroid/security/keystore/SoterUtil;->contains(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 60
    const/4 v6, 0x1

    .line 62
    const-string/jumbo v11, "next_attk"

    invoke-static {v11, v10}, Landroid/security/keystore/SoterUtil;->contains(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 63
    const/4 v7, 0x1

    .line 65
    :cond_5
    new-instance v0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;

    invoke-direct/range {v0 .. v7}, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;-><init>(ZZZLjava/lang/String;ZZZ)V

    .line 69
    .local v0, "spec":Landroid/security/keystore/SoterRSAKeyGenParameterSpec;
    const-string/jumbo v11, "Soter.Util"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "hy: spec: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-object v0

    .line 46
    .end local v0    # "spec":Landroid/security/keystore/SoterRSAKeyGenParameterSpec;
    :cond_6
    const-string/jumbo v11, "auto_signed_when_get_pubkey"

    invoke-static {v11, v10}, Landroid/security/keystore/SoterUtil;->containsPrefix(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 47
    .local v9, "entireCommonKeyExpr":Ljava/lang/String;
    invoke-static {v9}, Landroid/security/keystore/SoterUtil;->isNullOrNil(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 48
    invoke-static {v9}, Landroid/security/keystore/SoterUtil;->retrieveKeyNameFromExpr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 49
    .local v8, "commonKeyName":Ljava/lang/String;
    invoke-static {v8}, Landroid/security/keystore/SoterUtil;->isNullOrNil(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 50
    const/4 v3, 0x1

    .line 51
    move-object v4, v8

    goto :goto_0
.end method

.method public static getDataFromRaw([BLjava/lang/String;)[B
    .locals 7
    .param p0, "origin"    # [B
    .param p1, "jsonKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 145
    invoke-static {p1}, Landroid/security/keystore/SoterUtil;->isNullOrNil(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 146
    const-string/jumbo v4, "Soter"

    const-string/jumbo v5, "hy: json keyname error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-object v6

    .line 149
    :cond_0
    if-nez p0, :cond_1

    .line 150
    const-string/jumbo v4, "Soter"

    const-string/jumbo v5, "hy: json origin null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-object v6

    .line 153
    :cond_1
    invoke-static {p0}, Landroid/security/keystore/SoterUtil;->retriveJsonFromExportedData([B)Lorg/json/JSONObject;

    move-result-object v2

    .line 154
    .local v2, "jsonObj":Lorg/json/JSONObject;
    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 156
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "base64pubkey":Ljava/lang/String;
    const-string/jumbo v4, "Soter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "base64 encoded public key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string/jumbo v4, "-----BEGIN PUBLIC KEY-----"

    const-string/jumbo v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "-----END PUBLIC KEY-----"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "\\n"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "pureBase64pubkey":Ljava/lang/String;
    const-string/jumbo v4, "Soter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pure base64 encoded public key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 164
    .local v1, "decoded":[B
    return-object v1

    .line 168
    .end local v0    # "base64pubkey":Ljava/lang/String;
    .end local v1    # "decoded":[B
    .end local v3    # "pureBase64pubkey":Ljava/lang/String;
    :cond_2
    return-object v6
.end method

.method public static getPureKeyAliasFromKeyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 123
    const-string/jumbo v1, "Soter.Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hy: retrieving pure name from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {p0}, Landroid/security/keystore/SoterUtil;->isNullOrNil(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    const-string/jumbo v1, "Soter.Util"

    const-string/jumbo v2, "hy: null or nil when get pure key alias"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-object v4

    .line 128
    :cond_0
    const-string/jumbo v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "splits":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    .line 130
    :cond_1
    const-string/jumbo v1, "Soter.Util"

    const-string/jumbo v2, "hy: pure alias"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-object p0

    .line 133
    :cond_2
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method public static isNullOrNil(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 137
    if-eqz p0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static retrieveKeyNameFromExpr(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "expr"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 74
    invoke-static {p0}, Landroid/security/keystore/SoterUtil;->isNullOrNil(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 75
    const-string/jumbo v2, "("

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 76
    .local v1, "startPos":I
    const-string/jumbo v2, ")"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 77
    .local v0, "endPos":I
    if-ltz v1, :cond_0

    if-le v0, v1, :cond_0

    .line 78
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 80
    :cond_0
    const-string/jumbo v2, "Soter.Util"

    const-string/jumbo v3, "hy: no key name"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-object v4

    .line 84
    .end local v0    # "endPos":I
    .end local v1    # "startPos":I
    :cond_1
    const-string/jumbo v2, "Soter.Util"

    const-string/jumbo v3, "hy: expr is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-object v4
.end method

.method private static retriveJsonFromExportedData([B)Lorg/json/JSONObject;
    .locals 11
    .param p0, "origin"    # [B

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x4

    .line 172
    if-nez p0, :cond_0

    .line 173
    const-string/jumbo v5, "Soter"

    const-string/jumbo v6, "raw data is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-object v9

    .line 176
    :cond_0
    array-length v5, p0

    if-ge v5, v8, :cond_1

    .line 177
    const-string/jumbo v5, "Soter"

    const-string/jumbo v6, "raw data length smaller than 4"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_1
    new-array v2, v8, [B

    .line 187
    .local v2, "lengthBytes":[B
    invoke-static {p0, v10, v2, v10, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 188
    invoke-static {v2}, Landroid/security/keystore/SoterUtil;->toInt([B)I

    move-result v4

    .line 189
    .local v4, "rawLength":I
    const-string/jumbo v5, "Soter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parsed raw length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-array v3, v4, [B

    .line 193
    .local v3, "rawJsonBytes":[B
    array-length v5, p0

    add-int/lit8 v6, v4, 0x4

    if-gt v5, v6, :cond_2

    .line 194
    const-string/jumbo v5, "Soter"

    const-string/jumbo v6, "length not correct 2"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-object v9

    .line 197
    :cond_2
    invoke-static {p0, v8, v3, v10, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 198
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    .line 199
    .local v1, "jsonStr":Ljava/lang/String;
    const-string/jumbo v5, "Soter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "to convert json: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "Soter"

    const-string/jumbo v6, "hy: can not convert to json"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-object v9
.end method

.method public static toInt([B)I
    .locals 5
    .param p0, "bRefArr"    # [B

    .prologue
    .line 210
    const/4 v2, 0x0

    .line 213
    .local v2, "iOutcome":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 214
    aget-byte v0, p0, v1

    .line 215
    .local v0, "bLoop":B
    and-int/lit16 v3, v0, 0xff

    mul-int/lit8 v4, v1, 0x8

    shl-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    .end local v0    # "bLoop":B
    :cond_0
    return v2
.end method
