.class public Lnet/oneplus/odm/common/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field static final GOOGLE_SIGNATURES:[Landroid/content/pm/Signature;

.field private static final TAG:Ljava/lang/String; = "DeviceManagerUtil"

.field static final TRUSTED_SIGNATURES:[[Landroid/content/pm/Signature;

.field private static mRomVersion:Ljava/lang/String;

.field private static mSIMCount:I

.field private static mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private static mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    sput v3, Lnet/oneplus/odm/common/Util;->mSIMCount:I

    .line 40
    const-string/jumbo v0, ""

    sput-object v0, Lnet/oneplus/odm/common/Util;->mRomVersion:Ljava/lang/String;

    .line 378
    new-array v0, v4, [Landroid/content/pm/Signature;

    .line 379
    new-instance v1, Landroid/content/pm/Signature;

    const-string/jumbo v2, "308204433082032ba003020102020900c2e08746644a308d300d06092a864886f70d01010405003074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964301e170d3038303832313233313333345a170d3336303130373233313333345a3074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f696430820120300d06092a864886f70d01010105000382010d00308201080282010100ab562e00d83ba208ae0a966f124e29da11f2ab56d08f58e2cca91303e9b754d372f640a71b1dcb130967624e4656a7776a92193db2e5bfb724a91e77188b0e6a47a43b33d9609b77183145ccdf7b2e586674c9e1565b1f4c6a5955bff251a63dabf9c55c27222252e875e4f8154a645f897168c0b1bfc612eabf785769bb34aa7984dc7e2ea2764cae8307d8c17154d7ee5f64a51a44a602c249054157dc02cd5f5c0e55fbef8519fbe327f0b1511692c5a06f19d18385f5c4dbc2d6b93f68cc2979c70e18ab93866b3bd5db8999552a0e3b4c99df58fb918bedc182ba35e003c1b4b10dd244a8ee24fffd333872ab5221985edab0fc0d0b145b6aa192858e79020103a381d93081d6301d0603551d0e04160414c77d8cc2211756259a7fd382df6be398e4d786a53081a60603551d2304819e30819b8014c77d8cc2211756259a7fd382df6be398e4d786a5a178a4763074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964820900c2e08746644a308d300c0603551d13040530030101ff300d06092a864886f70d010104050003820101006dd252ceef85302c360aaace939bcff2cca904bb5d7a1661f8ae46b2994204d0ff4a68c7ed1a531ec4595a623ce60763b167297a7ae35712c407f208f0cb109429124d7b106219c084ca3eb3f9ad5fb871ef92269a8be28bf16d44c8d9a08e6cb2f005bb3fe2cb96447e868e731076ad45b33f6009ea19c161e62641aa99271dfd5228c5c587875ddb7f452758d661f6cc0cccb7352e424cc4365c523532f7325137593c4ae341f4db41edda0d0b1071a7c440f0fe9ea01cb627ca674369d084bd2fd911ff06cdbf2cfa10dc0f893ae35762919048c7efc64c7144178342f70581c9de573af55b390dd7fdb9418631895d5f759f30112687ff621410c069308a"

    invoke-direct {v1, v2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v3

    .line 378
    sput-object v0, Lnet/oneplus/odm/common/Util;->GOOGLE_SIGNATURES:[Landroid/content/pm/Signature;

    .line 382
    new-array v0, v4, [[Landroid/content/pm/Signature;

    sget-object v1, Lnet/oneplus/odm/common/Util;->GOOGLE_SIGNATURES:[Landroid/content/pm/Signature;

    aput-object v1, v0, v3

    sput-object v0, Lnet/oneplus/odm/common/Util;->TRUSTED_SIGNATURES:[[Landroid/content/pm/Signature;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIsSystemApp(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 167
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    .line 168
    return v1

    .line 170
    :cond_0
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .locals 6
    .param p0, "s1"    # [Landroid/content/pm/Signature;
    .param p1, "s2"    # [Landroid/content/pm/Signature;

    .prologue
    const/4 v4, 0x0

    .line 395
    if-nez p0, :cond_1

    .line 396
    if-nez p1, :cond_0

    .line 397
    const/4 v3, 0x1

    .line 396
    :goto_0
    return v3

    .line 398
    :cond_0
    const/4 v3, -0x1

    goto :goto_0

    .line 400
    :cond_1
    if-nez p1, :cond_2

    .line 401
    const/4 v3, -0x2

    return v3

    .line 403
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 404
    .local v0, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v5, p0

    move v3, v4

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v2, p0, v3

    .line 405
    .local v2, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 404
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 407
    .end local v2    # "sig":Landroid/content/pm/Signature;
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 408
    .local v1, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v5, p1

    move v3, v4

    :goto_2
    if-ge v3, v5, :cond_4

    aget-object v2, p1, v3

    .line 409
    .restart local v2    # "sig":Landroid/content/pm/Signature;
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 408
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 411
    .end local v2    # "sig":Landroid/content/pm/Signature;
    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/AbstractSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 412
    return v4

    .line 414
    :cond_5
    const/4 v3, -0x3

    return v3
.end method

.method public static encodeToBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 174
    new-array v1, v2, [B

    .line 176
    .local v1, "textBytes":[B
    :try_start_0
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 180
    :goto_0
    array-length v2, v1

    if-nez v2, :cond_0

    .line 181
    const/4 v2, 0x0

    return-object v2

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 183
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    const/16 v2, 0x8

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getAESKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "android_id":Ljava/lang/String;
    move-object v0, v1

    .line 49
    .local v0, "AEScontext":Ljava/lang/String;
    invoke-static {v1}, Lnet/oneplus/odm/crypto/ODMEncrypter;->encodeToSHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getAndroidVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    return-object v0
.end method

.method public static getLocale(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 69
    .local v1, "resource":Landroid/content/res/Resources;
    if-nez v1, :cond_0

    .line 70
    const-string/jumbo v2, "DeviceManagerUtil"

    const-string/jumbo v3, "Resources is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string/jumbo v2, ""

    return-object v2

    .line 73
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 74
    .local v0, "configuration":Landroid/content/res/Configuration;
    if-nez v0, :cond_1

    .line 75
    const-string/jumbo v2, "DeviceManagerUtil"

    const-string/jumbo v3, "Configuration is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string/jumbo v2, ""

    return-object v2

    .line 78
    :cond_1
    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getMacAddr(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const-string/jumbo v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 54
    .local v2, "manager":Landroid/net/wifi/WifiManager;
    if-nez v2, :cond_0

    .line 55
    const-string/jumbo v3, "DeviceManagerUtil"

    const-string/jumbo v4, "WifiManager is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string/jumbo v3, ""

    return-object v3

    .line 58
    :cond_0
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 59
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_1

    .line 60
    const-string/jumbo v3, "DeviceManagerUtil"

    const-string/jumbo v4, "WifiInfo is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string/jumbo v3, ""

    return-object v3

    .line 63
    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "address":Ljava/lang/String;
    return-object v0
.end method

.method public static getNetworkOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lnet/oneplus/odm/common/Util;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 234
    .local v4, "telephony":Landroid/telephony/TelephonyManager;
    invoke-static {p0}, Lnet/oneplus/odm/common/Util;->getSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    .line 235
    .local v3, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 236
    invoke-static {p0}, Lnet/oneplus/odm/common/Util;->getSIMCount(Landroid/content/Context;)I

    move-result v2

    .line 237
    .local v2, "simCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 238
    invoke-virtual {v4, v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    add-int/lit8 v5, v0, 0x1

    if-ge v5, v2, :cond_0

    .line 241
    const-string/jumbo v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    .end local v0    # "i":I
    .end local v2    # "simCount":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static getNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lnet/oneplus/odm/common/Util;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    .line 216
    .local v5, "telephony":Landroid/telephony/TelephonyManager;
    invoke-static {p0}, Lnet/oneplus/odm/common/Util;->getSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    .line 217
    .local v4, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    .line 218
    invoke-static {p0}, Lnet/oneplus/odm/common/Util;->getSIMCount(Landroid/content/Context;)I

    move-result v3

    .line 219
    .local v3, "simCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 220
    invoke-virtual {v4, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 221
    .local v1, "info":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_0

    .line 222
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :cond_0
    add-int/lit8 v6, v0, 0x1

    if-ge v6, v3, :cond_1

    .line 225
    const-string/jumbo v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    .end local v0    # "i":I
    .end local v1    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v3    # "simCount":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lnet/oneplus/odm/common/Util;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    .line 300
    .local v5, "telephony":Landroid/telephony/TelephonyManager;
    invoke-static {p0}, Lnet/oneplus/odm/common/Util;->getSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    .line 301
    .local v4, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    .line 302
    invoke-static {p0}, Lnet/oneplus/odm/common/Util;->getSIMCount(Landroid/content/Context;)I

    move-result v3

    .line 303
    .local v3, "simCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 304
    invoke-virtual {v4, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 305
    .local v1, "info":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_0

    .line 306
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v6

    .line 307
    .local v6, "type":I
    packed-switch v6, :pswitch_data_0

    .line 354
    const-string/jumbo v7, "UNKNOWN"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .end local v6    # "type":I
    :cond_0
    :goto_1
    add-int/lit8 v7, v0, 0x1

    if-ge v7, v3, :cond_1

    .line 359
    const-string/jumbo v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    .restart local v6    # "type":I
    :pswitch_0
    const-string/jumbo v7, "1xRTT"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 312
    :pswitch_1
    const-string/jumbo v7, "CDMA"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 315
    :pswitch_2
    const-string/jumbo v7, "EDGE"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 318
    :pswitch_3
    const-string/jumbo v7, "eHRPD"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 321
    :pswitch_4
    const-string/jumbo v7, "EVDO 0"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 324
    :pswitch_5
    const-string/jumbo v7, "EVDO A"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 327
    :pswitch_6
    const-string/jumbo v7, "EVDO B"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 330
    :pswitch_7
    const-string/jumbo v7, "GPRS"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 333
    :pswitch_8
    const-string/jumbo v7, "HSDPA"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 336
    :pswitch_9
    const-string/jumbo v7, "HSPA"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 339
    :pswitch_a
    const-string/jumbo v7, "HSPAP"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 342
    :pswitch_b
    const-string/jumbo v7, "HSUPA"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 345
    :pswitch_c
    const-string/jumbo v7, "IDEN"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 348
    :pswitch_d
    const-string/jumbo v7, "LTE"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 351
    :pswitch_e
    const-string/jumbo v7, "UMTS"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 362
    .end local v0    # "i":I
    .end local v1    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v3    # "simCount":I
    .end local v6    # "type":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 307
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_2
        :pswitch_e
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_b
        :pswitch_9
        :pswitch_c
        :pswitch_6
        :pswitch_d
        :pswitch_3
        :pswitch_a
    .end packed-switch
.end method

.method public static getPid(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, -0x1

    .line 86
    const-string/jumbo v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 87
    .local v1, "manager":Landroid/app/ActivityManager;
    if-nez v1, :cond_0

    .line 88
    const-string/jumbo v5, "DeviceManagerUtil"

    const-string/jumbo v6, "ActivityManager is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return v7

    .line 91
    :cond_0
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 92
    .local v4, "processInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v4, :cond_1

    .line 93
    const-string/jumbo v5, "DeviceManagerUtil"

    const-string/jumbo v6, "RunningAppProcessInfo is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return v7

    .line 96
    :cond_1
    const/4 v0, -0x1

    .line 97
    .local v0, "id":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "processInfo$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 98
    .local v2, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 99
    iget v0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    goto :goto_0

    .line 102
    .end local v2    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3
    return v0
.end method

.method public static getRomVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 373
    sget-object v0, Lnet/oneplus/odm/common/Util;->mRomVersion:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    const-string/jumbo v0, "ro.build.version.ota"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/odm/common/Util;->mRomVersion:Ljava/lang/String;

    .line 376
    :cond_0
    sget-object v0, Lnet/oneplus/odm/common/Util;->mRomVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getSIMCount(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 202
    sget v1, Lnet/oneplus/odm/common/Util;->mSIMCount:I

    if-nez v1, :cond_0

    .line 203
    invoke-static {p0}, Lnet/oneplus/odm/common/Util;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 204
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    sput v1, Lnet/oneplus/odm/common/Util;->mSIMCount:I

    .line 208
    .end local v0    # "telephony":Landroid/telephony/TelephonyManager;
    :cond_0
    sget v1, Lnet/oneplus/odm/common/Util;->mSIMCount:I

    return v1
.end method

.method public static getSimNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lnet/oneplus/odm/common/Util;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    .line 282
    .local v5, "telephony":Landroid/telephony/TelephonyManager;
    invoke-static {p0}, Lnet/oneplus/odm/common/Util;->getSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    .line 283
    .local v4, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    .line 284
    invoke-static {p0}, Lnet/oneplus/odm/common/Util;->getSIMCount(Landroid/content/Context;)I

    move-result v3

    .line 285
    .local v3, "simCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 286
    invoke-virtual {v4, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 287
    .local v1, "info":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_0

    .line 288
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    :cond_0
    add-int/lit8 v6, v0, 0x1

    if-ge v6, v3, :cond_1

    .line 291
    const-string/jumbo v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    .end local v0    # "i":I
    .end local v1    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v3    # "simCount":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static getSimOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lnet/oneplus/odm/common/Util;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 266
    .local v4, "telephony":Landroid/telephony/TelephonyManager;
    invoke-static {p0}, Lnet/oneplus/odm/common/Util;->getSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    .line 267
    .local v3, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 268
    invoke-static {p0}, Lnet/oneplus/odm/common/Util;->getSIMCount(Landroid/content/Context;)I

    move-result v2

    .line 269
    .local v2, "simCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 270
    invoke-virtual {v4, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    add-int/lit8 v5, v0, 0x1

    if-ge v5, v2, :cond_0

    .line 273
    const-string/jumbo v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    .end local v0    # "i":I
    .end local v2    # "simCount":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static getSimOperatorName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lnet/oneplus/odm/common/Util;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 250
    .local v4, "telephony":Landroid/telephony/TelephonyManager;
    invoke-static {p0}, Lnet/oneplus/odm/common/Util;->getSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    .line 251
    .local v3, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 252
    invoke-static {p0}, Lnet/oneplus/odm/common/Util;->getSIMCount(Landroid/content/Context;)I

    move-result v2

    .line 253
    .local v2, "simCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 254
    invoke-virtual {v4, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    add-int/lit8 v5, v0, 0x1

    if-ge v5, v2, :cond_0

    .line 257
    const-string/jumbo v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    .end local v0    # "i":I
    .end local v2    # "simCount":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static getSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    sget-object v0, Lnet/oneplus/odm/common/Util;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-nez v0, :cond_0

    .line 196
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    sput-object v0, Lnet/oneplus/odm/common/Util;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 198
    :cond_0
    sget-object v0, Lnet/oneplus/odm/common/Util;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method private static getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    sget-object v0, Lnet/oneplus/odm/common/Util;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 189
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lnet/oneplus/odm/common/Util;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 191
    :cond_0
    sget-object v0, Lnet/oneplus/odm/common/Util;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static getUid(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, -0x1

    .line 106
    const-string/jumbo v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 107
    .local v1, "manager":Landroid/app/ActivityManager;
    if-nez v1, :cond_0

    .line 108
    const-string/jumbo v5, "DeviceManagerUtil"

    const-string/jumbo v6, "ActivityManager is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return v7

    .line 111
    :cond_0
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 112
    .local v4, "processInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v4, :cond_1

    .line 113
    const-string/jumbo v5, "DeviceManagerUtil"

    const-string/jumbo v6, "RunningAppProcessInfo is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return v7

    .line 116
    :cond_1
    const/4 v0, -0x1

    .line 117
    .local v0, "id":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "processInfo$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 118
    .local v2, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 119
    iget v0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    goto :goto_0

    .line 122
    .end local v2    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3
    return v0
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, -0x1

    .line 126
    const/4 v3, -0x1

    .line 127
    .local v3, "version":I
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 128
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    if-nez v2, :cond_0

    .line 129
    const-string/jumbo v4, "DeviceManagerUtil"

    const-string/jumbo v5, "PackageManager is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return v6

    .line 133
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 134
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_1

    .line 135
    const-string/jumbo v4, "DeviceManagerUtil"

    const-string/jumbo v5, "PackageInfo is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return v6

    .line 138
    :cond_1
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return v3

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    const-string/jumbo v3, ""

    .line 147
    .local v3, "version":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 148
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    if-nez v2, :cond_0

    .line 149
    const-string/jumbo v4, "DeviceManagerUtil"

    const-string/jumbo v5, "PackageManager is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string/jumbo v4, ""

    return-object v4

    .line 153
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 154
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_1

    .line 155
    const-string/jumbo v4, "DeviceManagerUtil"

    const-string/jumbo v5, "PackageInfo is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string/jumbo v4, ""

    return-object v4

    .line 158
    :cond_1
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v3

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static isRomDebugVersion()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 368
    const-string/jumbo v2, "persist.sys.assert.enable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 369
    .local v0, "isRomDebug":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isTrustedSystemSignature([Landroid/content/pm/Signature;)Z
    .locals 4
    .param p0, "signature"    # [Landroid/content/pm/Signature;

    .prologue
    const/4 v3, 0x0

    .line 385
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lnet/oneplus/odm/common/Util;->TRUSTED_SIGNATURES:[[Landroid/content/pm/Signature;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 386
    sget-object v2, Lnet/oneplus/odm/common/Util;->TRUSTED_SIGNATURES:[[Landroid/content/pm/Signature;

    aget-object v1, v2, v0

    .line 387
    .local v1, "sig":[Landroid/content/pm/Signature;
    invoke-static {v1, p0}, Lnet/oneplus/odm/common/Util;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v2

    if-nez v2, :cond_0

    .line 388
    const/4 v2, 0x1

    return v2

    .line 385
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    .end local v1    # "sig":[Landroid/content/pm/Signature;
    :cond_1
    return v3
.end method
