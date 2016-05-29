.class public Lcom/android/settings_ex/ApnEditor;
.super Landroid/preference/PreferenceActivity;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final APN_INDEX:I = 0x2

.field private static final AUTH_TYPE_INDEX:I = 0xe

.field private static final BEARER_INDEX:I = 0x12

.field private static final CARRIER_ENABLED_INDEX:I = 0x11

.field private static final ERROR_DIALOG_ID:I = 0x0

.field private static final ID_INDEX:I = 0x0

.field private static final KEY_AUTH_TYPE:Ljava/lang/String; = "auth_type"

.field private static final KEY_BEARER:Ljava/lang/String; = "bearer"

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

.field private static final MVNO_MATCH_DATA_INDEX:I = 0x15

.field private static final MVNO_TYPE_INDEX:I = 0x14

.field private static final NAME_INDEX:I = 0x1

.field private static final PASSWORD_INDEX:I = 0x7

.field private static final PORT_INDEX:I = 0x4

.field private static final PROTOCOL_INDEX:I = 0x10

.field private static final PROXY_INDEX:I = 0x3

.field private static final ROAMING_PROTOCOL_INDEX:I = 0x13

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

.field private mBearer:Landroid/preference/ListPreference;

.field private mCarrierEnabled:Landroid/preference/CheckBoxPreference;

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

.field private mMvnoType:Landroid/preference/ListPreference;

.field private mName:Landroid/preference/EditTextPreference;

.field private mNewApn:Z

.field private mPassword:Landroid/preference/EditTextPreference;

.field private mPort:Landroid/preference/EditTextPreference;

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
    .line 53
    const-class v0, Lcom/android/settings_ex/ApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    .line 105
    const/16 v0, 0x16

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

    const-string v2, "roaming_protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "mvno_type"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "mvno_match_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/ApnEditor;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/ApnEditor;->mDisableEditor:Z

    return-void
.end method

.method private bearerDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "raw"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 369
    iget-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v4, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 370
    .local v1, "mBearerIndex":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 377
    :goto_0
    return-object v3

    .line 373
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0b002e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 375
    .local v2, "values":[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 684
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/settings_ex/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 685
    :cond_0
    const-string p1, ""

    .line 687
    .end local p1    # "value":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 676
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 677
    :cond_0
    sget-object p1, Lcom/android/settings_ex/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 679
    .end local p1    # "value":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method private deleteApn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 659
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 660
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->finish()V

    .line 661
    return-void
.end method

.method private fillUi(Ljava/lang/String;)V
    .locals 13
    .param p1, "defaultOperatorNumeric"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 260
    iget-boolean v6, p0, Lcom/android/settings_ex/ApnEditor;->mFirstTime:Z

    if-eqz v6, :cond_1

    .line 261
    iput-boolean v8, p0, Lcom/android/settings_ex/ApnEditor;->mFirstTime:Z

    .line 263
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 264
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x2

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 265
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 266
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 267
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x5

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 268
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x6

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 269
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x7

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 270
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xc

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 271
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xd

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 272
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x8

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 273
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x9

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 274
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xa

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 275
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xf

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 276
    iget-boolean v6, p0, Lcom/android/settings_ex/ApnEditor;->mNewApn:Z

    if-eqz v6, :cond_0

    .line 278
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v12, :cond_0

    .line 280
    invoke-virtual {p1, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, "mcc":Ljava/lang/String;
    invoke-virtual {p1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 284
    .local v4, "mnc":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v6, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 285
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v6, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 286
    iput-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mCurMnc:Ljava/lang/String;

    .line 287
    iput-object v3, p0, Lcom/android/settings_ex/ApnEditor;->mCurMcc:Ljava/lang/String;

    .line 290
    .end local v3    # "mcc":Ljava/lang/String;
    .end local v4    # "mnc":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0xe

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 291
    .local v0, "authVal":I
    const/4 v6, -0x1

    if-eq v0, v6, :cond_2

    .line 292
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 297
    :goto_0
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 298
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x13

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 299
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x11

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v7, :cond_3

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 300
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x12

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 301
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x14

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 302
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    invoke-virtual {v6, v8}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 303
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x15

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 306
    .end local v0    # "authVal":I
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "authVal":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 322
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 323
    .local v1, "authValIndex":I
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v6, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 325
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0b002a

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 326
    .local v5, "values":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v9, v5, v1

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 331
    .end local v1    # "authValIndex":I
    .end local v5    # "values":[Ljava/lang/String;
    :goto_2
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/ApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 341
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0c000a

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 342
    .local v2, "ceEditable":Z
    if-eqz v2, :cond_5

    .line 343
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 347
    :goto_3
    return-void

    .line 294
    .end local v2    # "ceEditable":Z
    .local v0, "authVal":I
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    move v6, v8

    .line 299
    goto/16 :goto_1

    .line 328
    .local v0, "authVal":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    sget-object v9, Lcom/android/settings_ex/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 345
    .restart local v2    # "ceEditable":Z
    :cond_5
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_3
.end method

.method private getErrorMsg()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 609
    const/4 v1, 0x0

    .line 611
    .local v1, "errorMsg":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 612
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, "apn":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 614
    .local v2, "mcc":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 616
    .local v3, "mnc":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_1

    .line 617
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f090542

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 626
    :cond_0
    :goto_0
    return-object v1

    .line 618
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_2

    .line 619
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f090543

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 620
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    .line 621
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f090544

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 622
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const v6, 0xfffe

    and-int/2addr v5, v6

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 623
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f090545

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private mvnoDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 383
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v6, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 384
    .local v1, "mvnoIndex":I
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 386
    .local v3, "oldValue":Ljava/lang/String;
    const/4 v6, -0x1

    if-ne v1, v6, :cond_0

    .line 410
    :goto_0
    return-object v5

    .line 389
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0b0030

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 390
    .local v4, "values":[Ljava/lang/String;
    aget-object v6, v4, v1

    const-string v7, "None"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 391
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 395
    :goto_1
    if-eqz p1, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 396
    aget-object v6, v4, v1

    const-string v7, "SPN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 397
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v8, p0, Lcom/android/settings_ex/ApnEditor;->mSubId:I

    invoke-virtual {v7, v8}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 408
    :cond_1
    :goto_2
    :try_start_0
    aget-object v5, v4, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 393
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    goto :goto_1

    .line 399
    :cond_3
    aget-object v6, v4, v1

    const-string v7, "IMSI"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 400
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v7, p0, Lcom/android/settings_ex/ApnEditor;->mSubId:I

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v2

    .line 401
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

    .line 402
    .end local v2    # "numeric":Ljava/lang/String;
    :cond_4
    aget-object v6, v4, v1

    const-string v7, "GID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 403
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v8, p0, Lcom/android/settings_ex/ApnEditor;->mSubId:I

    invoke-virtual {v7, v8}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_2

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto/16 :goto_0
.end method

.method private protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;
    .locals 6
    .param p1, "raw"    # Ljava/lang/String;
    .param p2, "protocol"    # Landroid/preference/ListPreference;

    .prologue
    const/4 v3, 0x0

    .line 355
    invoke-virtual {p2, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 356
    .local v1, "protocolIndex":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 363
    :goto_0
    return-object v3

    .line 359
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0b002c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 361
    .local v2, "values":[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 664
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 665
    :cond_0
    sget-object v2, Lcom/android/settings_ex/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 671
    :goto_0
    return-object v2

    .line 667
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [C

    .line 668
    .local v1, "password":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 669
    const/16 v2, 0x2a

    aput-char v2, v1, v0

    .line 668
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 671
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private validateAndSave(Z)Z
    .locals 13
    .param p1, "force"    # Z

    .prologue
    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 528
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 529
    .local v5, "name":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "apn":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 531
    .local v3, "mcc":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 534
    .local v4, "mnc":Ljava/lang/String;
    iget-boolean v9, p0, Lcom/android/settings_ex/ApnEditor;->mDisableEditor:Z

    if-eqz v9, :cond_0

    .line 535
    sget-object v7, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    const-string v9, "Form is disabled. Nothing to save."

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 605
    .end local v5    # "name":Ljava/lang/String;
    :goto_0
    return v7

    .line 539
    .restart local v5    # "name":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    if-nez p1, :cond_1

    .line 540
    invoke-virtual {p0, v7}, Lcom/android/settings_ex/ApnEditor;->showDialog(I)V

    goto :goto_0

    .line 544
    :cond_1
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-nez v9, :cond_2

    .line 545
    sget-object v8, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    const-string v9, "Could not go to the first row in the Cursor when saving data."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 551
    :cond_2
    if-eqz p1, :cond_3

    iget-boolean v9, p0, Lcom/android/settings_ex/ApnEditor;->mNewApn:Z

    if-eqz v9, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v8, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v8, :cond_3

    .line 552
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9, v12, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 556
    :cond_3
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 560
    .local v6, "values":Landroid/content/ContentValues;
    const-string v9, "name"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v10, v8, :cond_4

    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090891

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .end local v5    # "name":Ljava/lang/String;
    :cond_4
    invoke-virtual {v6, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const-string v9, "apn"

    invoke-virtual {v6, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string v9, "proxy"

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const-string v9, "port"

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v9, "mmsproxy"

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v9, "mmsport"

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string v9, "user"

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string v9, "server"

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const-string v9, "password"

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const-string v9, "mmsc"

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 573
    .local v1, "authVal":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 574
    const-string v9, "authtype"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 577
    :cond_5
    const-string v9, "protocol"

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const-string v9, "roaming_protocol"

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const-string v9, "type"

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const-string v9, "mcc"

    invoke-virtual {v6, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string v9, "mnc"

    invoke-virtual {v6, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string v9, "numeric"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 588
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mCurMnc:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget v9, p0, Lcom/android/settings_ex/ApnEditor;->mSubId:I

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v10

    if-ne v9, v10, :cond_6

    .line 590
    const-string v9, "current"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 594
    :cond_6
    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 595
    .local v2, "bearerVal":Ljava/lang/String;
    if-eqz v2, :cond_7

    .line 596
    const-string v9, "bearer"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 599
    :cond_7
    const-string v9, "mvno_type"

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string v9, "mvno_match_data"

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v9, "carrier_enabled"

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_8

    move v7, v8

    :cond_8
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 603
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v9, v6, v12, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v7, v8

    .line 605
    goto/16 :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 155
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 157
    const v2, 0x7f060009

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->addPreferencesFromResource(I)V

    .line 159
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f090522

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings_ex/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 160
    const-string v2, "apn_name"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    .line 161
    const-string v2, "apn_apn"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    .line 162
    const-string v2, "apn_http_proxy"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    .line 163
    const-string v2, "apn_http_port"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    .line 164
    const-string v2, "apn_user"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    .line 165
    const-string v2, "apn_server"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    .line 166
    const-string v2, "apn_password"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    .line 167
    const-string v2, "apn_mms_proxy"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    .line 168
    const-string v2, "apn_mms_port"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    .line 169
    const-string v2, "apn_mmsc"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    .line 170
    const-string v2, "apn_mcc"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    .line 171
    const-string v2, "apn_mnc"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    .line 172
    const-string v2, "apn_type"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    .line 174
    const-string v2, "auth_type"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    .line 175
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 177
    const-string v2, "apn_protocol"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    .line 178
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 180
    const-string v2, "apn_roaming_protocol"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    .line 181
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 183
    const-string v2, "carrier_enabled"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    .line 185
    const-string v2, "bearer"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    .line 186
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 188
    const-string v2, "mvno_type"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    .line 189
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 190
    const-string v2, "mvno_match_data"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    .line 192
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    .line 194
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 195
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "action":Ljava/lang/String;
    const-string v2, "subscription"

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v5

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/ApnEditor;->mSubId:I

    .line 199
    sget-object v2, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ApnEditor onCreate received sub: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings_ex/ApnEditor;->mSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v2, "DISABLE_EDITOR"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/ApnEditor;->mDisableEditor:Z

    .line 201
    iget-boolean v2, p0, Lcom/android/settings_ex/ApnEditor;->mDisableEditor:Z

    if-eqz v2, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 203
    sget-object v2, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    const-string v5, "ApnEditor form is disabled."

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    if-nez p1, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings_ex/ApnEditor;->mFirstTime:Z

    .line 208
    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 209
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    .line 237
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    sget-object v3, Lcom/android/settings_ex/ApnEditor;->sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v7, v7}, Lcom/android/settings_ex/ApnEditor;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    .line 238
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 240
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 242
    const-string v2, "operator"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/ApnEditor;->fillUi(Ljava/lang/String;)V

    .line 243
    :goto_2
    return-void

    :cond_1
    move v2, v4

    .line 206
    goto :goto_0

    .line 210
    :cond_2
    const-string v2, "android.intent.action.INSERT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 211
    iget-boolean v2, p0, Lcom/android/settings_ex/ApnEditor;->mFirstTime:Z

    if-nez v2, :cond_3

    const-string v2, "pos"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 212
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

    .line 217
    :goto_3
    iput-boolean v3, p0, Lcom/android/settings_ex/ApnEditor;->mNewApn:Z

    .line 221
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_5

    .line 222
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

    .line 224
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->finish()V

    goto :goto_2

    .line 214
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

    .line 230
    :cond_5
    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/ApnEditor;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_1

    .line 233
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->finish()V

    goto :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 632
    if-nez p1, :cond_0

    .line 633
    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 635
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090541

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 642
    .end local v0    # "msg":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 462
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 463
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnEditor;->mDisableEditor:Z

    if-eqz v0, :cond_0

    .line 464
    sget-object v0, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "Form is disabled. Do not create the options menu."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :goto_0
    return v3

    .line 468
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnEditor;->mNewApn:Z

    if-nez v0, :cond_1

    .line 469
    const v0, 0x7f09053d

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020048

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 472
    :cond_1
    const/4 v0, 0x2

    const v1, 0x7f09053f

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 474
    const/4 v0, 0x3

    const v1, 0x7f090540

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
    .line 502
    packed-switch p1, :pswitch_data_0

    .line 510
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 504
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->finish()V

    .line 507
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 502
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

    .line 481
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 497
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 483
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor;->deleteApn()V

    goto :goto_0

    .line 486
    :pswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings_ex/ApnEditor;->validateAndSave(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 487
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->finish()V

    goto :goto_0

    .line 491
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/settings_ex/ApnEditor;->mNewApn:Z

    if-eqz v1, :cond_1

    .line 492
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 494
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->finish()V

    goto :goto_0

    .line 481
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
    .line 254
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 256
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 257
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 416
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 417
    .local v3, "key":Ljava/lang/String;
    const-string v7, "auth_type"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 419
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 420
    .local v2, "index":I
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v7, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 422
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0b002a

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 423
    .local v6, "values":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v9, v6, v2

    invoke-virtual {v7, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    .end local v2    # "index":I
    .end local v6    # "values":[Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v7, 0x1

    :goto_1
    return v7

    .line 424
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    move v7, v8

    .line 425
    goto :goto_1

    .line 427
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    const-string v7, "apn_protocol"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, p2

    .line 428
    check-cast v7, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v7, v9}, Lcom/android/settings_ex/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v5

    .line 429
    .local v5, "protocol":Ljava/lang/String;
    if-nez v5, :cond_2

    move v7, v8

    .line 430
    goto :goto_1

    .line 432
    :cond_2
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 433
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 434
    .end local v5    # "protocol":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    const-string v7, "apn_roaming_protocol"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, p2

    .line 435
    check-cast v7, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v7, v9}, Lcom/android/settings_ex/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v5

    .line 436
    .restart local v5    # "protocol":Ljava/lang/String;
    if-nez v5, :cond_4

    move v7, v8

    .line 437
    goto :goto_1

    .line 439
    :cond_4
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 440
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 441
    .end local v5    # "protocol":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_5
    const-string v7, "bearer"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v7, p2

    .line 442
    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/settings_ex/ApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "bearer":Ljava/lang/String;
    if-nez v0, :cond_6

    move v7, v8

    .line 444
    goto :goto_1

    .line 446
    :cond_6
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 447
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 448
    .end local v0    # "bearer":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_7
    const-string v7, "mvno_type"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, p2

    .line 449
    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/settings_ex/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 450
    .local v4, "mvno":Ljava/lang/String;
    if-nez v4, :cond_8

    move v7, v8

    .line 451
    goto :goto_1

    .line 453
    :cond_8
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 454
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v7, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 647
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 649
    if-nez p1, :cond_0

    .line 650
    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 652
    .local v0, "msg":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 653
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 656
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 247
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 248
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 250
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 515
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 516
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    const-string v0, "pos"

    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 519
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 692
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 693
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 694
    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 695
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 696
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 699
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
