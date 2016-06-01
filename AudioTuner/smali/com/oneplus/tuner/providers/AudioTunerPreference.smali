.class public Lcom/oneplus/tuner/providers/AudioTunerPreference;
.super Ljava/lang/Object;
.source "AudioTunerPreference.java"


# static fields
.field private static mBrands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mConfigArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/tuner/providers/OfficialEarphone;",
            ">;"
        }
    .end annotation
.end field

.field private static mHeadsetTypeChangedBaseListener:Lcom/oneplus/tuner/listener/HeadsetTypeChangedListener;

.field private static mHeadsetTypeChangedListener:Lcom/oneplus/tuner/listener/HeadsetTypeChangedListener;

.field private static mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/tuner/providers/OfficialEarphone;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mModeAndId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mNeedCheckUI:Z

.field private static mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mNeedCheckUI:Z

    .line 26
    sput-object v1, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mHeadsetTypeChangedListener:Lcom/oneplus/tuner/listener/HeadsetTypeChangedListener;

    .line 27
    sput-object v1, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mHeadsetTypeChangedBaseListener:Lcom/oneplus/tuner/listener/HeadsetTypeChangedListener;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mBrands:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearLastUpdateUserCollectionTime()V
    .locals 4

    .prologue
    .line 405
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 406
    .local v1, "mApp":Landroid/content/Context;
    if-eqz v1, :cond_1

    .line 407
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    .line 408
    const-string v2, "com_oneplus_tuner_preference"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    .line 412
    :cond_0
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 413
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "last_update_user_collection_time"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 414
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 416
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method

.method public static getAccountInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 377
    const/4 v1, 0x0

    .line 378
    .local v1, "token":Ljava/lang/String;
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 379
    .local v0, "mApp":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 380
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    .line 381
    const-string v2, "com_oneplus_tuner_preference"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    .line 385
    :cond_0
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "account_info"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 387
    :cond_1
    return-object v1
.end method

.method public static getAccountLoginStatus()Z
    .locals 5

    .prologue
    .line 348
    const/4 v0, 0x0

    .line 349
    .local v0, "flag":Z
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 350
    .local v1, "mApp":Landroid/content/Context;
    if-eqz v1, :cond_1

    .line 351
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    .line 352
    const-string v2, "com_oneplus_tuner_preference"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    .line 356
    :cond_0
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "login_status"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 359
    :cond_1
    return v0
.end method

.method private static getEarPhoneModel()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 546
    sget-object v8, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mMap:Ljava/util/HashMap;

    if-eqz v8, :cond_0

    sget-object v8, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mBrands:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    sget-object v8, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 561
    .local v2, "currentTypeId":J
    .local v5, "i":I
    :cond_0
    :goto_0
    return-object v7

    .line 549
    .end local v2    # "currentTypeId":J
    .end local v5    # "i":I
    :cond_1
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneTypeId()J

    move-result-wide v2

    .line 551
    .restart local v2    # "currentTypeId":J
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    sget-object v8, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mBrands:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_0

    .line 552
    sget-object v8, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mBrands:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 553
    .local v0, "brand":Ljava/lang/String;
    sget-object v8, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mMap:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 554
    .local v4, "earphoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/OfficialEarphone;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/providers/OfficialEarphone;

    .line 555
    .local v1, "earphone":Lcom/oneplus/tuner/providers/OfficialEarphone;
    invoke-virtual {v1}, Lcom/oneplus/tuner/providers/OfficialEarphone;->getTypeId()J

    move-result-wide v8

    cmp-long v8, v8, v2

    if-nez v8, :cond_2

    .line 556
    invoke-virtual {v1}, Lcom/oneplus/tuner/providers/OfficialEarphone;->getModel()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 551
    .end local v1    # "earphone":Lcom/oneplus/tuner/providers/OfficialEarphone;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public static getEarphoneConfigEmptyState()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 200
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 202
    .local v0, "mApp":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 204
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    .line 205
    const-string v2, "com_oneplus_tuner_preference"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    .line 210
    :cond_0
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "config_is_empty"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 215
    :cond_1
    return v1
.end method

.method public static getEarphoneType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 118
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 120
    .local v0, "mApp":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 122
    sget-object v1, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 123
    const-string v1, "com_oneplus_tuner_preference"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    .line 128
    :cond_0
    sget-object v1, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "earphone_type"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    :goto_0
    return-object v1

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public static getEarphoneTypeId()J
    .locals 5

    .prologue
    const-wide/16 v2, -0x1

    .line 159
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 161
    .local v0, "mApp":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 163
    sget-object v1, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 164
    const-string v1, "com_oneplus_tuner_preference"

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    .line 169
    :cond_0
    sget-object v1, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "earphone_type_id"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 174
    :cond_1
    return-wide v2
.end method

.method public static getHeadsetPlugStatus()Z
    .locals 5

    .prologue
    .line 447
    const/4 v0, 0x0

    .line 448
    .local v0, "flag":Z
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 449
    .local v1, "mApp":Landroid/content/Context;
    if-eqz v1, :cond_1

    .line 450
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    .line 451
    const-string v2, "com_oneplus_tuner_preference"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    .line 455
    :cond_0
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "headset_plug_status"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 458
    :cond_1
    return v0
.end method

.method public static getLastUpdateUserCollectionTime()J
    .locals 8

    .prologue
    .line 419
    const-wide/16 v2, 0x0

    .line 420
    .local v2, "time":J
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 421
    .local v0, "mApp":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 422
    sget-object v1, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 423
    const-string v1, "com_oneplus_tuner_preference"

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    .line 427
    :cond_0
    sget-object v1, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "last_update_user_collection_time"

    const-wide/16 v6, 0x0

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 429
    :cond_1
    return-wide v2
.end method

.method public static getLoginToken()Ljava/lang/String;
    .locals 5

    .prologue
    .line 320
    const/4 v1, 0x0

    .line 321
    .local v1, "token":Ljava/lang/String;
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 322
    .local v0, "mApp":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 323
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    .line 324
    const-string v2, "com_oneplus_tuner_preference"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    .line 328
    :cond_0
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "login_token"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 330
    :cond_1
    return-object v1
.end method

.method public static getNetworkConnectiveStatus()Z
    .locals 5

    .prologue
    .line 476
    const/4 v0, 0x0

    .line 477
    .local v0, "flag":Z
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 478
    .local v1, "mApp":Landroid/content/Context;
    if-eqz v1, :cond_1

    .line 479
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    .line 480
    const-string v2, "com_oneplus_tuner_preference"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    .line 484
    :cond_0
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "network_connective_status"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 487
    :cond_1
    return v0
.end method

.method public static getPermissionEnabled(Ljava/lang/String;)Z
    .locals 4
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 221
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 223
    .local v0, "mApp":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 225
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    .line 226
    const-string v2, "com_oneplus_tuner_preference"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    .line 231
    :cond_0
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 235
    :cond_1
    return v1
.end method

.method public static getPermissionTipEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 261
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 263
    .local v0, "mApp":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 265
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    .line 266
    const-string v2, "com_oneplus_tuner_preference"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    .line 271
    :cond_0
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "tuner_permission_tip"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 276
    :cond_1
    return v1
.end method

.method public static getUsedEffectStyle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 51
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    .local v0, "mApp":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 55
    sget-object v1, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 56
    const-string v1, "com_oneplus_tuner_preference"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    .line 61
    :cond_0
    sget-object v1, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "used_effect_style"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    :goto_0
    return-object v1

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public static putEarphoneConfigEmptyState(Z)V
    .locals 4
    .param p0, "empty"    # Z

    .prologue
    .line 180
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 182
    .local v1, "mApp":Landroid/content/Context;
    if-eqz v1, :cond_1

    .line 184
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    .line 185
    const-string v2, "com_oneplus_tuner_preference"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    .line 190
    :cond_0
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 191
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "config_is_empty"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 192
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 196
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method

.method public static putEarphoneType(Ljava/lang/String;)V
    .locals 4
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 94
    .local v1, "mApp":Landroid/content/Context;
    if-eqz v1, :cond_2

    .line 96
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    .line 97
    const-string v2, "com_oneplus_tuner_preference"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    .line 102
    :cond_0
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 103
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "earphone_type"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 104
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 106
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mHeadsetTypeChangedListener:Lcom/oneplus/tuner/listener/HeadsetTypeChangedListener;

    if-eqz v2, :cond_1

    .line 107
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mHeadsetTypeChangedListener:Lcom/oneplus/tuner/listener/HeadsetTypeChangedListener;

    invoke-interface {v2, p0}, Lcom/oneplus/tuner/listener/HeadsetTypeChangedListener;->onTypeChanged(Ljava/lang/String;)V

    .line 109
    :cond_1
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mHeadsetTypeChangedBaseListener:Lcom/oneplus/tuner/listener/HeadsetTypeChangedListener;

    if-eqz v2, :cond_2

    .line 110
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mHeadsetTypeChangedBaseListener:Lcom/oneplus/tuner/listener/HeadsetTypeChangedListener;

    invoke-interface {v2, p0}, Lcom/oneplus/tuner/listener/HeadsetTypeChangedListener;->onTypeChanged(Ljava/lang/String;)V

    .line 114
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_2
    return-void
.end method

.method public static putEarphoneTypeId(J)V
    .locals 4
    .param p0, "id"    # J

    .prologue
    .line 139
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 141
    .local v1, "mApp":Landroid/content/Context;
    if-eqz v1, :cond_1

    .line 143
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    .line 144
    const-string v2, "com_oneplus_tuner_preference"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    .line 149
    :cond_0
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 150
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "earphone_type_id"

    invoke-interface {v0, v2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 151
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 155
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method

.method public static putPermissionEnabled(Ljava/lang/String;Z)V
    .locals 4
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "enabled"    # Z

    .prologue
    .line 241
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 243
    .local v1, "mApp":Landroid/content/Context;
    if-eqz v1, :cond_1

    .line 245
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    .line 246
    const-string v2, "com_oneplus_tuner_preference"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    .line 251
    :cond_0
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 252
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 253
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 257
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method

.method public static putPermissionTipEnabled(Z)V
    .locals 4
    .param p0, "enabled"    # Z

    .prologue
    .line 282
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 284
    .local v1, "mApp":Landroid/content/Context;
    if-eqz v1, :cond_1

    .line 286
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    .line 287
    const-string v2, "com_oneplus_tuner_preference"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    .line 292
    :cond_0
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 293
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "tuner_permission_tip"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 294
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 298
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method

.method public static putUsedEffectStyle(Ljava/lang/String;)V
    .locals 4
    .param p0, "style"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 74
    .local v1, "mApp":Landroid/content/Context;
    if-eqz v1, :cond_1

    .line 76
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    .line 77
    const-string v2, "com_oneplus_tuner_preference"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    .line 82
    :cond_0
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 83
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "used_effect_style"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 84
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 88
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method

.method private static readBrandAndModelFromXML(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 526
    const v0, 0x7f050003

    invoke-static {p0, v0}, Lcom/oneplus/tuner/manager/ConfigurationLoader;->loadOfficialConfig(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mConfigArray:Ljava/util/ArrayList;

    .line 527
    const v0, 0x7f050004

    invoke-static {p0, v0}, Lcom/oneplus/tuner/manager/ConfigurationLoader;->loadHeadsetModeAndId(Landroid/content/Context;I)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mModeAndId:Ljava/util/HashMap;

    .line 528
    return-void
.end method

.method public static registerHeadsetTypeChangedBaseListener(Lcom/oneplus/tuner/listener/HeadsetTypeChangedListener;)V
    .locals 0
    .param p0, "l"    # Lcom/oneplus/tuner/listener/HeadsetTypeChangedListener;

    .prologue
    .line 42
    sput-object p0, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mHeadsetTypeChangedBaseListener:Lcom/oneplus/tuner/listener/HeadsetTypeChangedListener;

    .line 43
    return-void
.end method

.method public static registerHeadsetTypeChangedListener(Lcom/oneplus/tuner/listener/HeadsetTypeChangedListener;)V
    .locals 0
    .param p0, "l"    # Lcom/oneplus/tuner/listener/HeadsetTypeChangedListener;

    .prologue
    .line 38
    sput-object p0, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mHeadsetTypeChangedListener:Lcom/oneplus/tuner/listener/HeadsetTypeChangedListener;

    .line 39
    return-void
.end method

.method public static setAccountInfo(Ljava/lang/String;)V
    .locals 4
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 363
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 364
    .local v1, "mApp":Landroid/content/Context;
    if-eqz v1, :cond_1

    .line 365
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    .line 366
    const-string v2, "com_oneplus_tuner_preference"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    .line 370
    :cond_0
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 371
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "account_info"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 372
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 374
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method

.method public static setAccountLoginStatus(Z)V
    .locals 4
    .param p0, "flag"    # Z

    .prologue
    .line 334
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 335
    .local v1, "mApp":Landroid/content/Context;
    if-eqz v1, :cond_1

    .line 336
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    .line 337
    const-string v2, "com_oneplus_tuner_preference"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    .line 341
    :cond_0
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 342
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "login_status"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 343
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 345
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method

.method public static setHeadsetPlugStatus(Z)V
    .locals 4
    .param p0, "flag"    # Z

    .prologue
    .line 433
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 434
    .local v1, "mApp":Landroid/content/Context;
    if-eqz v1, :cond_1

    .line 435
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    .line 436
    const-string v2, "com_oneplus_tuner_preference"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    .line 440
    :cond_0
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 441
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "headset_plug_status"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 442
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 444
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method

.method public static setLastUpdateUserCollectionTime(J)V
    .locals 4
    .param p0, "time"    # J

    .prologue
    .line 391
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 392
    .local v1, "mApp":Landroid/content/Context;
    if-eqz v1, :cond_1

    .line 393
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    .line 394
    const-string v2, "com_oneplus_tuner_preference"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    .line 398
    :cond_0
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 399
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "last_update_user_collection_time"

    invoke-interface {v0, v2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 400
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 402
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method

.method public static setLoginToken(Ljava/lang/String;)V
    .locals 4
    .param p0, "token"    # Ljava/lang/String;

    .prologue
    .line 301
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 302
    .local v1, "mApp":Landroid/content/Context;
    if-eqz v1, :cond_1

    .line 303
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    .line 304
    const-string v2, "com_oneplus_tuner_preference"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    .line 308
    :cond_0
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 309
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "login_token"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 310
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 312
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    invoke-static {v1}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->clearAllUserCollection(Landroid/content/Context;)Z

    .line 314
    invoke-static {v1}, Lcom/oppo/tribune/util/AccessCookies;->clear(Landroid/content/Context;)V

    .line 317
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method

.method public static setNetworkConnectiveStatus(Z)V
    .locals 4
    .param p0, "flag"    # Z

    .prologue
    .line 462
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 463
    .local v1, "mApp":Landroid/content/Context;
    if-eqz v1, :cond_1

    .line 464
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    .line 465
    const-string v2, "com_oneplus_tuner_preference"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    .line 469
    :cond_0
    sget-object v2, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 470
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "network_connective_status"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 471
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 473
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method

.method private static transformatData(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/tuner/providers/OfficialEarphone;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 531
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/OfficialEarphone;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/tuner/providers/OfficialEarphone;

    .line 532
    .local v0, "bean":Lcom/oneplus/tuner/providers/OfficialEarphone;
    invoke-virtual {v0}, Lcom/oneplus/tuner/providers/OfficialEarphone;->getBrand()Ljava/lang/String;

    move-result-object v1

    .line 533
    .local v1, "brand":Ljava/lang/String;
    sget-object v4, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mBrands:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 534
    sget-object v4, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mBrands:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    :cond_0
    sget-object v4, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 537
    .local v2, "child":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/OfficialEarphone;>;"
    if-nez v2, :cond_1

    .line 538
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "child":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/OfficialEarphone;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 540
    .restart local v2    # "child":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/OfficialEarphone;>;"
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    sget-object v4, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 543
    .end local v0    # "bean":Lcom/oneplus/tuner/providers/OfficialEarphone;
    .end local v1    # "brand":Ljava/lang/String;
    .end local v2    # "child":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/OfficialEarphone;>;"
    :cond_2
    return-void
.end method

.method public static unregisterHeadsetTypeChangedListener()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mHeadsetTypeChangedListener:Lcom/oneplus/tuner/listener/HeadsetTypeChangedListener;

    .line 47
    return-void
.end method

.method public static updateEarPhoneModel(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 492
    invoke-static {p0}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->readBrandAndModelFromXML(Landroid/content/Context;)V

    .line 494
    sget-object v5, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mConfigArray:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->transformatData(Ljava/util/ArrayList;)V

    .line 496
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v5, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mBrands:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 497
    sget-object v5, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mMap:Ljava/util/HashMap;

    sget-object v6, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mBrands:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 499
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/OfficialEarphone;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/tuner/providers/OfficialEarphone;

    .line 501
    .local v0, "bean":Lcom/oneplus/tuner/providers/OfficialEarphone;
    sget-object v5, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mModeAndId:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/oneplus/tuner/providers/OfficialEarphone;->getModel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/oneplus/tuner/providers/OfficialEarphone;->setTypeId(J)V

    goto :goto_1

    .line 496
    .end local v0    # "bean":Lcom/oneplus/tuner/providers/OfficialEarphone;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 506
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/OfficialEarphone;>;"
    :cond_1
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarPhoneModel()Ljava/lang/String;

    move-result-object v4

    .line 507
    .local v4, "model":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 508
    invoke-static {v4}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->putEarphoneType(Ljava/lang/String;)V

    .line 511
    :cond_2
    sget-object v5, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 512
    sget-object v5, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 514
    :cond_3
    sget-object v5, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mBrands:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 515
    sget-object v5, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mBrands:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 517
    :cond_4
    sget-object v5, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mConfigArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 518
    sget-object v5, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mConfigArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 520
    :cond_5
    sget-object v5, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mModeAndId:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 521
    sget-object v5, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mModeAndId:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 523
    :cond_6
    return-void
.end method
