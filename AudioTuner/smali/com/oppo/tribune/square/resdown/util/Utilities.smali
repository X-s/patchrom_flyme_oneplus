.class public Lcom/oppo/tribune/square/resdown/util/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field private static final HEXADECIMAL:[C

.field public static final PRODUCT_STATUS_BUY:I = 0x6

.field public static final PRODUCT_STATUS_CHARGE:I = 0x2

.field public static final PRODUCT_STATUS_DOWNLOADED:I = 0x8

.field public static final PRODUCT_STATUS_FREE:I = 0x1

.field public static final PRODUCT_STATUS_INSTALLED:I = 0x5

.field public static final PRODUCT_STATUS_INSTALLING:I = 0x4

.field public static final PRODUCT_STATUS_SCORE:I = 0x3

.field public static final PRODUCT_STATUS_UPGRADE:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oppo/tribune/square/resdown/util/Utilities;->HEXADECIMAL:[C

    return-void

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
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 7
    .param p0, "binaryData"    # [B

    .prologue
    const/16 v6, 0x10

    .line 121
    array-length v4, p0

    if-eq v4, v6, :cond_0

    .line 122
    const/4 v4, 0x0

    .line 133
    :goto_0
    return-object v4

    .line 125
    :cond_0
    const/16 v4, 0x20

    new-array v0, v4, [C

    .line 126
    .local v0, "buffer":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_1

    .line 127
    aget-byte v4, p0, v2

    and-int/lit8 v3, v4, 0xf

    .line 128
    .local v3, "low":I
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v1, v4, 0x4

    .line 129
    .local v1, "high":I
    mul-int/lit8 v4, v2, 0x2

    sget-object v5, Lcom/oppo/tribune/square/resdown/util/Utilities;->HEXADECIMAL:[C

    aget-char v5, v5, v1

    aput-char v5, v0, v4

    .line 130
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    sget-object v5, Lcom/oppo/tribune/square/resdown/util/Utilities;->HEXADECIMAL:[C

    aget-char v5, v5, v3

    aput-char v5, v0, v4

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 133
    .end local v1    # "high":I
    .end local v3    # "low":I
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static encryptHMAC(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 5
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 137
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, "HmacMD5"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 138
    .local v2, "secretKey":Ljavax/crypto/SecretKey;
    const/4 v1, 0x0

    .line 140
    .local v1, "mac":Ljavax/crypto/Mac;
    :try_start_0
    const-string v3, "hmacMD5"

    invoke-static {v3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 141
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v3

    :goto_0
    return-object v3

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 144
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static escapeSpecialCharForUrlSegments(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 150
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
    invoke-static {p0}, Lcom/oppo/tribune/square/resdown/util/Utilities;->getInt(Ljava/lang/String;)I

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

.method public static getCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-static {}, Lcom/oppo/tribune/square/resdown/util/SystemUtility;->isSdcardExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/oppo/tribune/square/tribune/PostConstant;->TRIBUNE_STORAGE_PATH_TEMP_ICONS:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDouble(Ljava/lang/String;)D
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 163
    if-nez p0, :cond_0

    .line 169
    :goto_0
    return-wide v2

    .line 167
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getFloat(Ljava/lang/String;)F
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 174
    if-nez p0, :cond_0

    .line 180
    :goto_0
    return v1

    .line 178
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getInt(ILjava/lang/String;)I
    .locals 1
    .param p0, "radix"    # I
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oppo/tribune/square/resdown/util/Utilities;->getInt(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInt(ILjava/lang/String;I)I
    .locals 4
    .param p0, "radix"    # I
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "faultValue"    # I

    .prologue
    .line 189
    if-nez p1, :cond_0

    .line 200
    .end local p2    # "faultValue":I
    :goto_0
    return p2

    .line 198
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

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 214
    const/16 v0, 0xa

    invoke-static {v0, p0}, Lcom/oppo/tribune/square/resdown/util/Utilities;->getInt(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getPictureDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/oppo/tribune/square/resdown/util/Utilities;->getSdRootFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const v2, 0x7f0c0376

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getResourcePath(Landroid/content/Context;I)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 82
    .local v0, "file":Ljava/io/File;
    packed-switch p1, :pswitch_data_0

    .line 114
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 117
    :cond_0
    return-object v0

    .line 87
    :pswitch_1
    invoke-static {p0}, Lcom/oppo/tribune/square/resdown/util/DownLoadFilePathManager;->getApplicationSaveDirFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 88
    goto :goto_0

    .line 94
    :pswitch_2
    invoke-static {p0}, Lcom/oppo/tribune/square/resdown/util/DownLoadFilePathManager;->getAttactmentSaveDirFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 95
    goto :goto_0

    .line 99
    :pswitch_3
    invoke-static {p0}, Lcom/oppo/tribune/square/resdown/util/DownLoadFilePathManager;->getPictureSaveDirFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 100
    goto :goto_0

    .line 104
    :pswitch_4
    invoke-static {p0}, Lcom/oppo/tribune/square/resdown/util/DownLoadFilePathManager;->getMusicSaveDirFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 105
    goto :goto_0

    .line 109
    :pswitch_5
    invoke-static {p0}, Lcom/oppo/tribune/square/resdown/util/DownLoadFilePathManager;->getMusicSaveDirFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 110
    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public static getSdRootFile(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 55
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 57
    :goto_0
    return-object v1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    goto :goto_0
.end method

.method public static getThemeDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/oppo/tribune/square/resdown/util/Utilities;->getSdRootFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const v2, 0x7f0c0351

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static toUTF8Bytes(Ljava/lang/String;)[B
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 218
    if-nez p0, :cond_0

    .line 219
    new-array v1, v2, [B

    .line 227
    :goto_0
    return-object v1

    .line 223
    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 227
    new-array v1, v2, [B

    goto :goto_0
.end method
