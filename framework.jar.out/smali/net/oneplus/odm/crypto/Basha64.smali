.class public Lnet/oneplus/odm/crypto/Basha64;
.super Ljava/lang/Object;
.source "Basha64.java"


# static fields
.field private static final DICT_SYMBOL:[C

.field private static final DICT_TEXT:[C

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lnet/oneplus/odm/crypto/Basha64;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/odm/crypto/Basha64;->TAG:Ljava/lang/String;

    .line 13
    const-string v0, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lnet/oneplus/odm/crypto/Basha64;->DICT_TEXT:[C

    .line 14
    const-string v0, "+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lnet/oneplus/odm/crypto/Basha64;->DICT_SYMBOL:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkLastNumber([C)I
    .locals 2
    .param p0, "shaText"    # [C

    .prologue
    .line 59
    array-length v1, p0

    add-int/lit8 v0, v1, -0x1

    .line 62
    .local v0, "index":I
    :cond_0
    aget-char v1, p0, v0

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    aget-char v1, p0, v0

    invoke-static {v1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v1

    .line 68
    :goto_0
    return v1

    .line 65
    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    .line 68
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static decrypt([C)Ljava/lang/String;
    .locals 14
    .param p0, "bashaText"    # [C

    .prologue
    const/16 v11, 0x3d

    const-wide/16 v12, 0x0

    .line 79
    array-length v4, p0

    .line 83
    .local v4, "length":I
    add-int/lit8 v10, v4, -0x1

    aget-char v10, p0, v10

    if-ne v11, v10, :cond_0

    .line 84
    add-int/lit8 v4, v4, -0x1

    .line 86
    add-int/lit8 v10, v4, -0x1

    aget-char v10, p0, v10

    if-ne v11, v10, :cond_0

    .line 87
    add-int/lit8 v4, v4, -0x1

    .line 92
    :cond_0
    invoke-static {p0}, Lnet/oneplus/odm/crypto/Basha64;->checkLastNumber([C)I

    move-result v5

    .line 93
    .local v5, "prefixLength":I
    move v0, v5

    .line 94
    .local v0, "begin":I
    move v3, v4

    .line 98
    .local v3, "end":I
    :cond_1
    aget-char v10, p0, v0

    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 103
    :goto_0
    aget-char v10, p0, v0

    invoke-static {v10}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v7

    .line 104
    .local v7, "suffixLength":I
    sub-int v3, v4, v7

    .line 107
    move v0, v5

    :goto_1
    if-ge v0, v3, :cond_3

    .line 108
    aget-char v10, p0, v0

    invoke-static {v10}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v10

    aput-char v10, p0, v0

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 101
    .end local v7    # "suffixLength":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v4, :cond_1

    goto :goto_0

    .line 112
    .restart local v7    # "suffixLength":I
    :cond_3
    move v0, v5

    .line 117
    :cond_4
    aget-char v2, p0, v0

    .line 120
    .local v2, "chr":C
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-nez v10, :cond_6

    .line 121
    add-int/lit8 v1, v2, -0x61

    .line 122
    .local v1, "charNum":I
    const/4 v6, 0x0

    .line 126
    .local v6, "quotient":I
    :cond_5
    sub-int v10, v0, v5

    sub-int v10, v1, v10

    mul-int/lit8 v11, v6, 0x1a

    add-int/2addr v10, v11

    add-int/lit8 v11, v6, 0x1

    div-int/2addr v10, v11

    int-to-double v8, v10

    .line 129
    .local v8, "testNum":D
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    rem-double v10, v8, v10

    cmpl-double v10, v12, v10

    if-nez v10, :cond_7

    cmpg-double v10, v12, v8

    if-gtz v10, :cond_7

    .line 130
    sget-object v10, Lnet/oneplus/odm/crypto/Basha64;->DICT_TEXT:[C

    double-to-int v11, v8

    aget-char v10, v10, v11

    aput-char v10, p0, v0

    .line 135
    .end local v1    # "charNum":I
    .end local v6    # "quotient":I
    .end local v8    # "testNum":D
    :cond_6
    :goto_2
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v3, :cond_4

    .line 137
    new-instance v10, Ljava/lang/String;

    sub-int v11, v4, v5

    sub-int/2addr v11, v7

    invoke-direct {v10, p0, v5, v11}, Ljava/lang/String;-><init>([CII)V

    return-object v10

    .line 133
    .restart local v1    # "charNum":I
    .restart local v6    # "quotient":I
    .restart local v8    # "testNum":D
    :cond_7
    add-int/lit8 v6, v6, 0x1

    if-gtz v6, :cond_5

    goto :goto_2
.end method

.method public static encrypt([C)Ljava/lang/String;
    .locals 14
    .param p0, "shaText"    # [C

    .prologue
    const/4 v13, 0x0

    const v12, 0x7fffffff

    .line 147
    new-array v6, v13, [C

    .line 149
    .local v6, "pText":[C
    array-length v4, p0

    .line 150
    .local v4, "length":I
    new-instance v7, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v7, v10, v11}, Ljava/util/Random;-><init>(J)V

    .line 152
    .local v7, "rand":Ljava/util/Random;
    const/4 v2, 0x0

    .line 153
    .local v2, "index":I
    const/4 v5, -0x1

    .line 157
    .local v5, "obscureLength":I
    :cond_0
    aget-char v1, p0, v2

    .line 159
    .local v1, "chr":C
    if-gez v5, :cond_7

    .line 160
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 161
    invoke-static {v1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v5

    .line 180
    :cond_1
    :goto_0
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v4, :cond_0

    .line 183
    if-lez v5, :cond_2

    .line 184
    invoke-static {v5}, Lnet/oneplus/odm/crypto/Basha64;->generateObscure(I)[C

    move-result-object v6

    .line 188
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 191
    array-length v9, v6

    if-eqz v9, :cond_3

    .line 192
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 196
    :cond_3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    invoke-static {v9}, Lnet/oneplus/odm/crypto/Basha64;->checkLastNumber([C)I

    move-result v5

    .line 197
    invoke-static {v5}, Lnet/oneplus/odm/crypto/Basha64;->generateObscure(I)[C

    move-result-object v6

    .line 199
    array-length v9, v6

    if-eqz v9, :cond_4

    .line 200
    invoke-virtual {v8, v13, v6}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    .line 204
    :cond_4
    invoke-virtual {v7, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    rem-int/lit8 v2, v9, 0x3

    move v3, v2

    .line 205
    .end local v2    # "index":I
    .local v3, "index":I
    :goto_1
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    if-lez v3, :cond_9

    .line 206
    const/16 v9, 0x3d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v2

    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_1

    .line 164
    .end local v3    # "index":I
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .restart local v2    # "index":I
    :cond_5
    add-int/lit8 v0, v1, -0x61

    .line 165
    .local v0, "charNum":I
    rsub-int/lit8 v9, v0, 0x1a

    rem-int v9, v2, v9

    add-int/2addr v0, v9

    .line 168
    invoke-virtual {v7, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    rem-int/lit8 v9, v9, 0x3

    if-nez v9, :cond_6

    sget-object v9, Lnet/oneplus/odm/crypto/Basha64;->DICT_TEXT:[C

    add-int/lit8 v10, v0, 0x1a

    aget-char v9, v9, v10

    :goto_2
    aput-char v9, p0, v2

    goto :goto_0

    :cond_6
    sget-object v9, Lnet/oneplus/odm/crypto/Basha64;->DICT_TEXT:[C

    aget-char v9, v9, v0

    goto :goto_2

    .line 171
    .end local v0    # "charNum":I
    :cond_7
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-nez v9, :cond_1

    .line 173
    add-int/lit8 v0, v1, -0x61

    .line 174
    .restart local v0    # "charNum":I
    rsub-int/lit8 v9, v0, 0x1a

    rem-int v9, v2, v9

    add-int/2addr v0, v9

    .line 177
    invoke-virtual {v7, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    rem-int/lit8 v9, v9, 0x3

    if-nez v9, :cond_8

    sget-object v9, Lnet/oneplus/odm/crypto/Basha64;->DICT_TEXT:[C

    add-int/lit8 v10, v0, 0x1a

    aget-char v9, v9, v10

    :goto_3
    aput-char v9, p0, v2

    goto :goto_0

    :cond_8
    sget-object v9, Lnet/oneplus/odm/crypto/Basha64;->DICT_TEXT:[C

    aget-char v9, v9, v0

    goto :goto_3

    .line 209
    .end local v0    # "charNum":I
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_9
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method private static generateObscure(I)[C
    .locals 7
    .param p0, "length"    # I

    .prologue
    const/4 v6, 0x0

    .line 23
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 25
    .local v2, "ran":Ljava/util/Random;
    if-lez p0, :cond_4

    .line 26
    const/4 v0, 0x0

    .line 28
    .local v0, "index":I
    new-array v1, p0, [C

    .line 31
    .local v1, "obs":[C
    :cond_0
    const v4, 0x7fffffff

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 32
    .local v3, "seed":I
    if-nez v0, :cond_1

    .line 34
    sget-object v4, Lnet/oneplus/odm/crypto/Basha64;->DICT_TEXT:[C

    rem-int/lit8 v5, v3, 0x1a

    add-int/lit8 v5, v5, 0x1a

    aget-char v4, v4, v5

    aput-char v4, v1, v0

    .line 44
    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-lt v0, p0, :cond_0

    .line 48
    .end local v0    # "index":I
    .end local v1    # "obs":[C
    .end local v3    # "seed":I
    :goto_1
    return-object v1

    .line 35
    .restart local v0    # "index":I
    .restart local v1    # "obs":[C
    .restart local v3    # "seed":I
    :cond_1
    rem-int/lit8 v4, v3, 0x3d

    if-nez v4, :cond_2

    .line 37
    sget-object v4, Lnet/oneplus/odm/crypto/Basha64;->DICT_SYMBOL:[C

    aget-char v4, v4, v6

    aput-char v4, v1, v0

    goto :goto_0

    .line 38
    :cond_2
    rem-int/lit8 v4, v3, 0x2f

    if-nez v4, :cond_3

    .line 40
    sget-object v4, Lnet/oneplus/odm/crypto/Basha64;->DICT_SYMBOL:[C

    const/4 v5, 0x1

    aget-char v4, v4, v5

    aput-char v4, v1, v0

    goto :goto_0

    .line 42
    :cond_3
    sget-object v4, Lnet/oneplus/odm/crypto/Basha64;->DICT_TEXT:[C

    rem-int/lit8 v5, v3, 0x3e

    aget-char v4, v4, v5

    aput-char v4, v1, v0

    goto :goto_0

    .line 48
    .end local v0    # "index":I
    .end local v1    # "obs":[C
    .end local v3    # "seed":I
    :cond_4
    new-array v1, v6, [C

    goto :goto_1
.end method
