.class public Lcom/android/settings_ex/ApnEditor;
.super Lcom/android/settings_ex/InstrumentedPreferenceActivity;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final APN_INDEX:I = 0x2

.field private static final AUTH_TYPE_INDEX:I = 0xe

.field private static final BEARER_BITMASK_INDEX:I = 0x13

.field private static final BEARER_INDEX:I = 0x12

.field private static final CARRIER_ENABLED_INDEX:I = 0x11

.field private static final ERROR_DIALOG_ID:I = 0x0

.field private static final ID_INDEX:I = 0x0

.field private static final KEY_AUTH_TYPE:Ljava/lang/String; = "auth_type"

.field private static final KEY_BEARER_MULTI:Ljava/lang/String; = "bearer_multi"

.field private static final KEY_CARRIER_ENABLED:Ljava/lang/String; = "carrier_enabled"

.field private static final KEY_MVNO_TYPE:Ljava/lang/String; = "mvno_type"

.field private static final KEY_PROTOCOL:Ljava/lang/String; = "apn_protocol"

.field private static final KEY_ROAMING_PROTOCOL:Ljava/lang/String; = "apn_roaming_protocol"

.field private static final MCC_INDEX:I = 0x9

.field private static final MENU_CANCEL:I = 0x3

.field private static final MENU_DELETE:I = 0x1

.field private static final MENU_SAVE:I = 0x2

.field private static final MMSC_INDEX:I = 0x8

.field private static final MMSPORT_INDEX:I = 0xd

.field private static final MMSPROXY_INDEX:I = 0xc

.field private static final MNC_INDEX:I = 0xa

.field private static final MVNO_MATCH_DATA_INDEX:I = 0x16

.field private static final MVNO_TYPE_INDEX:I = 0x15

.field private static final NAME_INDEX:I = 0x1

.field private static final PASSWORD_INDEX:I = 0x7

.field private static final PORT_INDEX:I = 0x4

.field private static final PPP_NUMBER_INDEX:I = 0x17

.field private static final PROTOCOL_INDEX:I = 0x10

.field private static final PROXY_INDEX:I = 0x3

.field private static final ROAMING_PROTOCOL_INDEX:I = 0x14

.field private static final SAVED_POS:Ljava/lang/String; = "pos"

.field private static final SERVER_INDEX:I = 0x6

.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_INDEX:I = 0xf

.field private static final USER_INDEX:I = 0x5

.field private static sNotSet:Ljava/lang/String;

.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private mApn:Landroid/preference/EditTextPreference;

.field private mApnType:Landroid/preference/EditTextPreference;

.field private mAuthType:Landroid/preference/ListPreference;

.field private mBearerInitialVal:I

.field private mBearerMulti:Landroid/preference/MultiSelectListPreference;

.field private mCarrierEnabled:Landroid/preference/SwitchPreference;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mDisableEditor:Z

.field private mFirstTime:Z

.field private mMcc:Landroid/preference/EditTextPreference;

.field private mMmsPort:Landroid/preference/EditTextPreference;

.field private mMmsProxy:Landroid/preference/EditTextPreference;

.field private mMmsc:Landroid/preference/EditTextPreference;

.field private mMnc:Landroid/preference/EditTextPreference;

.field private mMvnoMatchData:Landroid/preference/EditTextPreference;

.field private mMvnoMatchDataStr:Ljava/lang/String;

.field private mMvnoType:Landroid/preference/ListPreference;

.field private mMvnoTypeStr:Ljava/lang/String;

.field private mName:Landroid/preference/EditTextPreference;

.field private mNewApn:Z

.field private mPassword:Landroid/preference/EditTextPreference;

.field private mPort:Landroid/preference/EditTextPreference;

.field private mPppNumber:Landroid/preference/EditTextPreference;

.field private mProtocol:Landroid/preference/ListPreference;

.field private mProxy:Landroid/preference/EditTextPreference;

.field private mRes:Landroid/content/res/Resources;

.field private mRoamingProtocol:Landroid/preference/ListPreference;

.field private mServer:Landroid/preference/EditTextPreference;

.field private mSubId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUri:Landroid/net/Uri;

.field private mUser:Landroid/preference/EditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const-class v0, Lcom/android/settings_ex/ApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    .line 111
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "apn"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "proxy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "server"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "password"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mnc"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "numeric"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "authtype"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "carrier_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "bearer"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "bearer_bitmask"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "roaming_protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "mvno_type"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "mvno_match_data"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "ppp_number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/ApnEditor;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedPreferenceActivity;-><init>()V

    .line 95
    iput-boolean v0, p0, Lcom/android/settings_ex/ApnEditor;->mDisableEditor:Z

    .line 104
    iput v0, p0, Lcom/android/settings_ex/ApnEditor;->mBearerInitialVal:I

    return-void
.end method

.method private bearerDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "raw"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 436
    iget-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mBearerMulti:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v4, p1}, Landroid/preference/MultiSelectListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 437
    .local v1, "mBearerIndex":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 444
    :goto_0
    return-object v3

    .line 440
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0a002e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 442
    .local v2, "values":[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 450
    .local p1, "raw":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f0a002e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 451
    .local v6, "values":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 452
    .local v4, "retVal":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 453
    .local v2, "first":Z
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 454
    .local v0, "bearer":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mBearerMulti:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v7, v0}, Landroid/preference/MultiSelectListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 456
    .local v1, "bearerIndex":I
    if-eqz v2, :cond_0

    .line 457
    :try_start_0
    aget-object v7, v6, v1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    const/4 v2, 0x0

    goto :goto_0

    .line 460
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v6, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 462
    :catch_0
    move-exception v7

    goto :goto_0

    .line 466
    .end local v0    # "bearer":Ljava/lang/String;
    .end local v1    # "bearerIndex":I
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 467
    .local v5, "val":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 470
    .end local v5    # "val":Ljava/lang/String;
    :goto_1
    return-object v5

    .restart local v5    # "val":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 799
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/settings_ex/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 800
    :cond_0
    const-string p1, ""

    .line 802
    .end local p1    # "value":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 791
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 792
    :cond_0
    sget-object p1, Lcom/android/settings_ex/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 794
    .end local p1    # "value":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method private deleteApn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 774
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 775
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->finish()V

    .line 776
    return-void
.end method

.method private fillUi()V
    .locals 14

    .prologue
    .line 278
    iget-boolean v11, p0, Lcom/android/settings_ex/ApnEditor;->mFirstTime:Z

    if-eqz v11, :cond_4

    .line 279
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/settings_ex/ApnEditor;->mFirstTime:Z

    .line 282
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v12, p0, Lcom/android/settings_ex/ApnEditor;->mSubId:I

    invoke-virtual {v11, v12}, Landroid/telephony/TelephonyManager;->getIccOperatorNumericForData(I)Ljava/lang/String;

    move-result-object v8

    .line 285
    .local v8, "numeric":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 286
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x2

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 287
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x3

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 288
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x4

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 289
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x5

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 290
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x6

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 291
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x7

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 292
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0xc

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 293
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0xd

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 294
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x8

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 295
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x9

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 296
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0xa

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 297
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0xf

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 298
    iget-boolean v11, p0, Lcom/android/settings_ex/ApnEditor;->mNewApn:Z

    if-eqz v11, :cond_0

    .line 300
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x4

    if-le v11, v12, :cond_0

    .line 302
    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 304
    .local v6, "mcc":Ljava/lang/String;
    const/4 v11, 0x3

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 306
    .local v7, "mnc":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v11, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 307
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v11, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 308
    iput-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mCurMnc:Ljava/lang/String;

    .line 309
    iput-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mCurMcc:Ljava/lang/String;

    .line 312
    .end local v6    # "mcc":Ljava/lang/String;
    .end local v7    # "mnc":Ljava/lang/String;
    :cond_0
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0xe

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 313
    .local v0, "authVal":I
    const/4 v11, -0x1

    if-eq v0, v11, :cond_6

    .line 314
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v11, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 319
    :goto_0
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x10

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 320
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x14

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 321
    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCarrierEnabled:Landroid/preference/SwitchPreference;

    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x11

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_7

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {v12, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 322
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0x12

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, p0, Lcom/android/settings_ex/ApnEditor;->mBearerInitialVal:I

    .line 324
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 325
    .local v3, "bearers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0x13

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 326
    .local v2, "bearerBitmask":I
    if-nez v2, :cond_8

    .line 327
    iget v11, p0, Lcom/android/settings_ex/ApnEditor;->mBearerInitialVal:I

    if-nez v11, :cond_1

    .line 328
    const-string v11, "0"

    invoke-virtual {v3, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_1
    iget v11, p0, Lcom/android/settings_ex/ApnEditor;->mBearerInitialVal:I

    if-eqz v11, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/settings_ex/ApnEditor;->mBearerInitialVal:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 343
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/settings_ex/ApnEditor;->mBearerInitialVal:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_2
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mBearerMulti:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v11, v3}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 347
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x15

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 348
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 349
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x16

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 350
    iget-boolean v11, p0, Lcom/android/settings_ex/ApnEditor;->mNewApn:Z

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    if-eqz v11, :cond_3

    .line 351
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 352
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 355
    :cond_3
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0x17

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 356
    .local v9, "pppNumber":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mPppNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v11, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 357
    if-nez v9, :cond_4

    .line 358
    iget-boolean v11, p0, Lcom/android/settings_ex/ApnEditor;->mNewApn:Z

    if-nez v11, :cond_a

    .line 359
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mPppNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 366
    .end local v0    # "authVal":I
    .end local v2    # "bearerBitmask":I
    .end local v3    # "bearers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v8    # "numeric":Ljava/lang/String;
    .end local v9    # "pppNumber":Ljava/lang/String;
    :cond_4
    :goto_2
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mPppNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    .line 381
    .restart local v9    # "pppNumber":Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 384
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mPppNumber:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v9}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 387
    :cond_5
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "authVal":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 389
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 390
    .local v1, "authValIndex":I
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v11, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 392
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v12, 0x7f0a002a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 393
    .local v10, "values":[Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v12, v10, v1

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 398
    .end local v1    # "authValIndex":I
    .end local v10    # "values":[Ljava/lang/String;
    :goto_3
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v12}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v12, v13}, Lcom/android/settings_ex/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v12}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v12, v13}, Lcom/android/settings_ex/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mBearerMulti:Landroid/preference/MultiSelectListPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mBearerMulti:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v12}, Landroid/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 404
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v12}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 408
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f10000c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 409
    .local v4, "ceEditable":Z
    if-eqz v4, :cond_c

    .line 410
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mCarrierEnabled:Landroid/preference/SwitchPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 414
    :goto_4
    return-void

    .line 316
    .end local v4    # "ceEditable":Z
    .end local v9    # "pppNumber":Ljava/lang/String;
    .local v0, "authVal":I
    .restart local v8    # "numeric":Ljava/lang/String;
    :cond_6
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 321
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 331
    .restart local v2    # "bearerBitmask":I
    .restart local v3    # "bearers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_8
    const/4 v5, 0x1

    .line 332
    .local v5, "i":I
    :goto_5
    if-eqz v2, :cond_1

    .line 333
    and-int/lit8 v11, v2, 0x1

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9

    .line 334
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_9
    shr-int/lit8 v2, v2, 0x1

    .line 337
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 360
    .end local v5    # "i":I
    .restart local v9    # "pppNumber":Ljava/lang/String;
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f10000e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 361
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mPppNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 395
    .end local v2    # "bearerBitmask":I
    .end local v3    # "bearers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v8    # "numeric":Ljava/lang/String;
    .local v0, "authVal":Ljava/lang/String;
    :cond_b
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    sget-object v12, Lcom/android/settings_ex/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 412
    .restart local v4    # "ceEditable":Z
    :cond_c
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mCarrierEnabled:Landroid/preference/SwitchPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_4
.end method

.method private getErrorMsg()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 724
    const/4 v1, 0x0

    .line 726
    .local v1, "errorMsg":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 727
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 728
    .local v0, "apn":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 729
    .local v2, "mcc":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 731
    .local v3, "mnc":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_1

    .line 732
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c06d9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 741
    :cond_0
    :goto_0
    return-object v1

    .line 733
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_2

    .line 734
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c06da

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 735
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    .line 736
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c06db

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 737
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const v6, 0xfffe

    and-int/2addr v5, v6

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 738
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c06dc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private mvnoDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 474
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v6, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 475
    .local v1, "mvnoIndex":I
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 477
    .local v3, "oldValue":Ljava/lang/String;
    const/4 v6, -0x1

    if-ne v1, v6, :cond_0

    .line 500
    :goto_0
    return-object v5

    .line 480
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0a0030

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 481
    .local v4, "values":[Ljava/lang/String;
    aget-object v6, v4, v1

    const-string v7, "None"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 482
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 486
    :goto_1
    if-eqz p1, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 487
    aget-object v6, v4, v1

    const-string v7, "SPN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 488
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 498
    :cond_1
    :goto_2
    :try_start_0
    aget-object v5, v4, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 484
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    goto :goto_1

    .line 489
    :cond_3
    aget-object v6, v4, v1

    const-string v7, "IMSI"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 490
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v7, p0, Lcom/android/settings_ex/ApnEditor;->mSubId:I

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v2

    .line 491
    .local v2, "numeric":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_2

    .line 492
    .end local v2    # "numeric":Ljava/lang/String;
    :cond_4
    aget-object v6, v4, v1

    const-string v7, "GID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 493
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_2

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto/16 :goto_0
.end method

.method private protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;
    .locals 6
    .param p1, "raw"    # Ljava/lang/String;
    .param p2, "protocol"    # Landroid/preference/ListPreference;

    .prologue
    const/4 v3, 0x0

    .line 422
    invoke-virtual {p2, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 423
    .local v1, "protocolIndex":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 430
    :goto_0
    return-object v3

    .line 426
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0a002c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 428
    .local v2, "values":[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 779
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 780
    :cond_0
    sget-object v2, Lcom/android/settings_ex/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 786
    :goto_0
    return-object v2

    .line 782
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [C

    .line 783
    .local v1, "password":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 784
    const/16 v2, 0x2a

    aput-char v2, v1, v0

    .line 783
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 786
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private validateAndSave(Z)Z
    .locals 17
    .param p1, "force"    # Z

    .prologue
    .line 620
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings_ex/ApnEditor;->mDisableEditor:Z

    if-eqz v13, :cond_0

    .line 621
    sget-object v13, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    const-string v14, "Form is disabled. Nothing to save."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const/4 v13, 0x1

    .line 720
    :goto_0
    return v13

    .line 625
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 626
    .local v10, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 627
    .local v1, "apn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 628
    .local v8, "mcc":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 630
    .local v9, "mnc":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    if-nez p1, :cond_1

    .line 631
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/ApnEditor;->showDialog(I)V

    .line 632
    const/4 v13, 0x0

    goto :goto_0

    .line 635
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-nez v13, :cond_2

    .line 636
    sget-object v13, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    const-string v14, "Could not go to the first row in the Cursor when saving data."

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const/4 v13, 0x0

    goto :goto_0

    .line 642
    :cond_2
    if-eqz p1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings_ex/ApnEditor;->mNewApn:Z

    if-eqz v13, :cond_3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    if-ge v13, v14, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    if-ge v13, v14, :cond_3

    .line 643
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 644
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 647
    :cond_3
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 651
    .local v12, "values":Landroid/content/ContentValues;
    const-string v13, "name"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    if-ge v14, v15, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0a36

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .end local v10    # "name":Ljava/lang/String;
    :cond_4
    invoke-virtual {v12, v13, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string v13, "apn"

    invoke-virtual {v12, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v13, "proxy"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v14}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v13, "port"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v14}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const-string v13, "mmsproxy"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v14}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string v13, "mmsport"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v14}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string v13, "user"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v14}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string v13, "server"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v14}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const-string v13, "password"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v14}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const-string v13, "mmsc"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v14}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v13}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 664
    .local v2, "authVal":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 665
    const-string v13, "authtype"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 668
    :cond_5
    const-string v13, "protocol"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v14}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const-string v13, "roaming_protocol"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v14}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const-string v13, "type"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v14}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const-string v13, "mcc"

    invoke-virtual {v12, v13, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    const-string v13, "mnc"

    invoke-virtual {v12, v13, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    const-string v13, "numeric"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/ApnEditor;->mPppNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    .line 679
    .local v11, "pppNumber":Ljava/lang/String;
    if-eqz v11, :cond_6

    .line 680
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c06cd

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/ApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/ApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v13, :cond_7

    .line 684
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/ApnEditor;->mCurMnc:Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/ApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 685
    const-string v13, "current"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 689
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/ApnEditor;->mBearerMulti:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v13}, Landroid/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v5

    .line 690
    .local v5, "bearerSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 691
    .local v4, "bearerBitmask":I
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 692
    .local v3, "bearer":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_a

    .line 693
    const/4 v4, 0x0

    .line 699
    .end local v3    # "bearer":Ljava/lang/String;
    :cond_8
    const-string v13, "bearer_bitmask"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 702
    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ApnEditor;->mBearerInitialVal:I

    if-nez v13, :cond_b

    .line 703
    :cond_9
    const/4 v6, 0x0

    .line 712
    .local v6, "bearerVal":I
    :goto_2
    const-string v13, "bearer"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 714
    const-string v13, "mvno_type"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v14}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const-string v13, "mvno_match_data"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    invoke-virtual {v14}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const-string v14, "carrier_enabled"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/ApnEditor;->mCarrierEnabled:Landroid/preference/SwitchPreference;

    invoke-virtual {v13}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_d

    const/4 v13, 0x1

    :goto_3
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 718
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v12, v15, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 720
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 696
    .end local v6    # "bearerVal":I
    .restart local v3    # "bearer":Ljava/lang/String;
    :cond_a
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v13

    or-int/2addr v4, v13

    .line 698
    goto/16 :goto_1

    .line 704
    .end local v3    # "bearer":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ApnEditor;->mBearerInitialVal:I

    invoke-static {v4, v13}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 705
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/ApnEditor;->mBearerInitialVal:I

    .restart local v6    # "bearerVal":I
    goto :goto_2

    .line 710
    .end local v6    # "bearerVal":I
    :cond_c
    const/4 v6, 0x0

    .restart local v6    # "bearerVal":I
    goto :goto_2

    .line 717
    :cond_d
    const/4 v13, 0x0

    goto :goto_3
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 260
    const/16 v0, 0xd

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 165
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 167
    const v2, 0x7f080007

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->addPreferencesFromResource(I)V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c06b7

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings_ex/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 170
    const-string v2, "apn_name"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    .line 171
    const-string v2, "apn_apn"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    .line 172
    const-string v2, "apn_http_proxy"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    .line 173
    const-string v2, "apn_http_port"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    .line 174
    const-string v2, "apn_user"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    .line 175
    const-string v2, "apn_server"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    .line 176
    const-string v2, "apn_password"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    .line 177
    const-string v2, "apn_mms_proxy"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    .line 178
    const-string v2, "apn_mms_port"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    .line 179
    const-string v2, "apn_mmsc"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    .line 180
    const-string v2, "apn_mcc"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    .line 181
    const-string v2, "apn_mnc"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    .line 182
    const-string v2, "apn_type"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    .line 183
    const-string v2, "apn_ppp_number"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mPppNumber:Landroid/preference/EditTextPreference;

    .line 185
    const-string v2, "auth_type"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    .line 186
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 188
    const-string v2, "apn_protocol"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    .line 189
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 191
    const-string v2, "apn_roaming_protocol"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    .line 192
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 194
    const-string v2, "carrier_enabled"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mCarrierEnabled:Landroid/preference/SwitchPreference;

    .line 196
    const-string v2, "bearer_multi"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/MultiSelectListPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mBearerMulti:Landroid/preference/MultiSelectListPreference;

    .line 197
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mBearerMulti:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/MultiSelectListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 199
    const-string v2, "mvno_type"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    .line 200
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 201
    const-string v2, "mvno_match_data"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    .line 203
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    .line 205
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 206
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "action":Ljava/lang/String;
    const-string v2, "sub_id"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/ApnEditor;->mSubId:I

    .line 211
    const-string v2, "DISABLE_EDITOR"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/ApnEditor;->mDisableEditor:Z

    .line 212
    iget-boolean v2, p0, Lcom/android/settings_ex/ApnEditor;->mDisableEditor:Z

    if-eqz v2, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 214
    sget-object v2, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    const-string v5, "ApnEditor form is disabled."

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    if-nez p1, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings_ex/ApnEditor;->mFirstTime:Z

    .line 219
    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 220
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    .line 250
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    sget-object v3, Lcom/android/settings_ex/ApnEditor;->sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v7, v7}, Lcom/android/settings_ex/ApnEditor;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    .line 251
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 253
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 255
    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor;->fillUi()V

    .line 256
    :goto_2
    return-void

    :cond_1
    move v2, v4

    .line 217
    goto :goto_0

    .line 221
    :cond_2
    const-string v2, "android.intent.action.INSERT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 222
    iget-boolean v2, p0, Lcom/android/settings_ex/ApnEditor;->mFirstTime:Z

    if-nez v2, :cond_3

    const-string v2, "pos"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 223
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    .line 228
    :goto_3
    iput-boolean v3, p0, Lcom/android/settings_ex/ApnEditor;->mNewApn:Z

    .line 229
    const-string v2, "mvno_type"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    .line 230
    const-string v2, "mvno_match_data"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    .line 234
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_5

    .line 235
    sget-object v2, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to insert new telephony provider into "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->finish()V

    goto :goto_2

    .line 225
    :cond_4
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "pos"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    goto :goto_3

    .line 243
    :cond_5
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v6, v2}, Lcom/android/settings_ex/ApnEditor;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_1

    .line 246
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->finish()V

    goto/16 :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 747
    if-nez p1, :cond_0

    .line 748
    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 750
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c06d8

    invoke-virtual {v1, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/app/OPAlertDialog$Builder;->create()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v1

    .line 757
    .end local v0    # "msg":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedPreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 552
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedPreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 553
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnEditor;->mDisableEditor:Z

    if-eqz v0, :cond_0

    .line 554
    sget-object v0, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "Form is disabled. Do not create the options menu."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :goto_0
    return v3

    .line 558
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnEditor;->mNewApn:Z

    if-nez v0, :cond_1

    .line 559
    const v0, 0x7f0c06d4

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020073

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 562
    :cond_1
    const/4 v0, 0x2

    const v1, 0x7f0c06d6

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 564
    const/4 v0, 0x3

    const v1, 0x7f0c06d7

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 592
    packed-switch p1, :pswitch_data_0

    .line 600
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/InstrumentedPreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 594
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->finish()V

    .line 597
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 592
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 571
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 587
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 573
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor;->deleteApn()V

    goto :goto_0

    .line 576
    :pswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings_ex/ApnEditor;->validateAndSave(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 577
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->finish()V

    goto :goto_0

    .line 581
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/settings_ex/ApnEditor;->mNewApn:Z

    if-eqz v1, :cond_1

    .line 582
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 584
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->finish()V

    goto :goto_0

    .line 571
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 274
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedPreferenceActivity;->onPause()V

    .line 275
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 506
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 507
    .local v3, "key":Ljava/lang/String;
    const-string v7, "auth_type"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 509
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 510
    .local v2, "index":I
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v7, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 512
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0a002a

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 513
    .local v6, "values":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v9, v6, v2

    invoke-virtual {v7, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    .end local v2    # "index":I
    .end local v6    # "values":[Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v7, 0x1

    :goto_1
    return v7

    .line 514
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    move v7, v8

    .line 515
    goto :goto_1

    .line 517
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    const-string v7, "apn_protocol"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, p2

    .line 518
    check-cast v7, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v7, v9}, Lcom/android/settings_ex/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v5

    .line 519
    .local v5, "protocol":Ljava/lang/String;
    if-nez v5, :cond_2

    move v7, v8

    .line 520
    goto :goto_1

    .line 522
    :cond_2
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 523
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 524
    .end local v5    # "protocol":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    const-string v7, "apn_roaming_protocol"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, p2

    .line 525
    check-cast v7, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v7, v9}, Lcom/android/settings_ex/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v5

    .line 526
    .restart local v5    # "protocol":Ljava/lang/String;
    if-nez v5, :cond_4

    move v7, v8

    .line 527
    goto :goto_1

    .line 529
    :cond_4
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 530
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 531
    .end local v5    # "protocol":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_5
    const-string v7, "bearer_multi"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v7, p2

    .line 532
    check-cast v7, Ljava/util/Set;

    invoke-direct {p0, v7}, Lcom/android/settings_ex/ApnEditor;->bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, "bearer":Ljava/lang/String;
    if-nez v0, :cond_6

    move v7, v8

    .line 534
    goto :goto_1

    .line 536
    :cond_6
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mBearerMulti:Landroid/preference/MultiSelectListPreference;

    check-cast p2, Ljava/util/Set;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 537
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mBearerMulti:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v7, v0}, Landroid/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 538
    .end local v0    # "bearer":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_7
    const-string v7, "mvno_type"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, p2

    .line 539
    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/settings_ex/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 540
    .local v4, "mvno":Ljava/lang/String;
    if-nez v4, :cond_8

    move v7, v8

    .line 541
    goto :goto_1

    .line 543
    :cond_8
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 544
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v7, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 762
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/InstrumentedPreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 764
    if-nez p1, :cond_0

    .line 765
    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 767
    .local v0, "msg":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 768
    check-cast p2, Lcom/oneplus/app/OPAlertDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    invoke-virtual {p2, v0}, Lcom/oneplus/app/OPAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 771
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 265
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedPreferenceActivity;->onResume()V

    .line 266
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 268
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 605
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 606
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    const-string v0, "pos"

    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 609
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 807
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 808
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 809
    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 810
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 811
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mCarrierEnabled:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mBearerMulti:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 814
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
