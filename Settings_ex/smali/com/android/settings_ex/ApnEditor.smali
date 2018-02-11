.class public Lcom/android/settings_ex/ApnEditor;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ApnEditor.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ApnEditor$ErrorDialog;
    }
.end annotation


# static fields
.field private static final APN_INDEX:I = 0x2

.field private static final AUTH_TYPE_INDEX:I = 0xe

.field private static final BEARER_BITMASK_INDEX:I = 0x13

.field private static final BEARER_INDEX:I = 0x12

.field private static final CARRIER_ENABLED_INDEX:I = 0x11

.field private static final DEFAULT_IPV4V6_INDEX:I = 0x2

.field private static final EDITED_INDEX:I = 0x17

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
.field private mApn:Landroid/support/v7/preference/EditTextPreference;

.field private mApnDisable:Z

.field private mApnType:Landroid/support/v7/preference/EditTextPreference;

.field private mAuthType:Landroid/support/v7/preference/ListPreference;

.field private mBearerInitialVal:I

.field private mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

.field private mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mDisableEditor:Z

.field private mFirstTime:Z

.field private mMcc:Landroid/support/v7/preference/EditTextPreference;

.field private mMmsPort:Landroid/support/v7/preference/EditTextPreference;

.field private mMmsProxy:Landroid/support/v7/preference/EditTextPreference;

.field private mMmsc:Landroid/support/v7/preference/EditTextPreference;

.field private mMnc:Landroid/support/v7/preference/EditTextPreference;

.field private mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

.field private mMvnoMatchDataStr:Ljava/lang/String;

.field private mMvnoType:Landroid/support/v7/preference/ListPreference;

.field private mMvnoTypeStr:Ljava/lang/String;

.field private mName:Landroid/support/v7/preference/EditTextPreference;

.field private mNewApn:Z

.field private mPassword:Landroid/support/v7/preference/EditTextPreference;

.field private mPort:Landroid/support/v7/preference/EditTextPreference;

.field private mProtocol:Landroid/support/v7/preference/ListPreference;

.field private mProxy:Landroid/support/v7/preference/EditTextPreference;

.field private mReadOnlyApn:Z

.field private mReadOnlyApnFields:[Ljava/lang/String;

.field private mReadOnlyApnTypes:[Ljava/lang/String;

.field private mRes:Landroid/content/res/Resources;

.field private mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

.field private mServer:Landroid/support/v7/preference/EditTextPreference;

.field private mSubId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUri:Landroid/net/Uri;

.field private mUser:Landroid/support/v7/preference/EditTextPreference;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings_ex/ApnEditor;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const-class v0, Lcom/android/settings_ex/ApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    .line 123
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    .line 124
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 125
    const-string/jumbo v1, "name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 126
    const-string/jumbo v1, "apn"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 127
    const-string/jumbo v1, "proxy"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 128
    const-string/jumbo v1, "port"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 129
    const-string/jumbo v1, "user"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 130
    const-string/jumbo v1, "server"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 131
    const-string/jumbo v1, "password"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 132
    const-string/jumbo v1, "mmsc"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 133
    const-string/jumbo v1, "mcc"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 134
    const-string/jumbo v1, "mnc"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 135
    const-string/jumbo v1, "numeric"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 136
    const-string/jumbo v1, "mmsproxy"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 137
    const-string/jumbo v1, "mmsport"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 138
    const-string/jumbo v1, "authtype"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 139
    const-string/jumbo v1, "type"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 140
    const-string/jumbo v1, "protocol"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 141
    const-string/jumbo v1, "carrier_enabled"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 142
    const-string/jumbo v1, "bearer"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 143
    const-string/jumbo v1, "bearer_bitmask"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 144
    const-string/jumbo v1, "roaming_protocol"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 145
    const-string/jumbo v1, "mvno_type"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 146
    const-string/jumbo v1, "mvno_match_data"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 147
    const-string/jumbo v1, "edited"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 123
    sput-object v0, Lcom/android/settings_ex/ApnEditor;->sProjection:[Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 103
    iput-boolean v0, p0, Lcom/android/settings_ex/ApnEditor;->mDisableEditor:Z

    .line 109
    iput-boolean v0, p0, Lcom/android/settings_ex/ApnEditor;->mApnDisable:Z

    .line 113
    iput v0, p0, Lcom/android/settings_ex/ApnEditor;->mBearerInitialVal:I

    .line 62
    return-void
.end method

.method private apnTypesMatch([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "apnTypesArray1"    # [Ljava/lang/String;
    .param p2, "apnTypes2"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 351
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 352
    return v4

    .line 355
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ApnEditor;->hasAllApns([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 356
    :cond_1
    return v7

    .line 359
    :cond_2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 360
    .local v2, "apnTypesList1":Ljava/util/List;
    const-string/jumbo v3, ","

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, "apnTypesArray2":[Ljava/lang/String;
    array-length v5, v1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_4

    aget-object v0, v1, v3

    .line 363
    .local v0, "apn":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 364
    sget-object v3, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "apnTypesMatch: true because match found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return v7

    .line 362
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 369
    .end local v0    # "apn":Ljava/lang/String;
    :cond_4
    sget-object v3, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "apnTypesMatch: false"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return v4
.end method

.method private bearerDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "raw"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 654
    iget-object v3, p0, Lcom/android/settings_ex/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v3, p1}, Landroid/support/v14/preference/MultiSelectListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 655
    .local v1, "mBearerIndex":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 656
    return-object v5

    .line 658
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0a0051

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 660
    .local v2, "values":[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 661
    :catch_0
    move-exception v0

    .line 662
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    return-object v5
.end method

.method private bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;
    .locals 10
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
    .line 668
    .local p1, "raw":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0a0051

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 669
    .local v7, "values":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 670
    .local v5, "retVal":Ljava/lang/StringBuilder;
    const/4 v4, 0x1

    .line 671
    .local v4, "first":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "bearer$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 672
    .local v0, "bearer":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings_ex/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v8, v0}, Landroid/support/v14/preference/MultiSelectListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 674
    .local v2, "bearerIndex":I
    if-eqz v4, :cond_0

    .line 675
    :try_start_0
    aget-object v8, v7, v2

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    const/4 v4, 0x0

    goto :goto_0

    .line 678
    :cond_0
    const-string/jumbo v8, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v7, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 680
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0

    .line 684
    .end local v0    # "bearer":Ljava/lang/String;
    .end local v2    # "bearerIndex":I
    .end local v3    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 685
    .local v6, "val":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 686
    return-object v6

    .line 688
    :cond_2
    const/4 v8, 0x0

    return-object v8
.end method

.method private checkApnType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 998
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 999
    :cond_0
    const-string/jumbo v0, "default"

    return-object v0

    .line 1001
    :cond_1
    return-object p1
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1007
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/settings_ex/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1008
    :cond_0
    const-string/jumbo v0, ""

    return-object v0

    .line 1010
    :cond_1
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 989
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 990
    :cond_0
    sget-object v0, Lcom/android/settings_ex/ApnEditor;->sNotSet:Ljava/lang/String;

    return-object v0

    .line 992
    :cond_1
    return-object p1
.end method

.method private deleteApn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 972
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 973
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->finish()V

    .line 971
    return-void
.end method

.method private disableAllFields()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 443
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mName:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 444
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mApn:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 445
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mProxy:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 446
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mPort:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 447
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mUser:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 448
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mServer:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 449
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mPassword:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 450
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mMmsProxy:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 451
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mMmsPort:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 452
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mMmsc:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 453
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 454
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 455
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mApnType:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 456
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 457
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 458
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 459
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 460
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/MultiSelectListPreference;->setEnabled(Z)V

    .line 461
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 462
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 442
    return-void
.end method

.method private disableFields([Ljava/lang/String;)V
    .locals 5
    .param p1, "apnFields"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 431
    array-length v4, p1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, p1, v2

    .line 432
    .local v0, "apnField":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/ApnEditor;->getPreferenceFromFieldName(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 433
    .local v1, "preference":Landroid/support/v7/preference/Preference;
    if-eqz v1, :cond_0

    .line 434
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 431
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 430
    .end local v0    # "apnField":Ljava/lang/String;
    .end local v1    # "preference":Landroid/support/v7/preference/Preference;
    :cond_1
    return-void
.end method

.method private fillUi()V
    .locals 21

    .prologue
    .line 481
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/ApnEditor;->mFirstTime:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 482
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/ApnEditor;->mFirstTime:Z

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mName:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mApn:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mProxy:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mPort:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mUser:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x5

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mServer:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x6

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mPassword:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x7

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mMmsProxy:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0xc

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mMmsPort:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0xd

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mMmsc:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x9

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0xa

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mApnType:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0xf

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 497
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/ApnEditor;->mNewApn:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/ApnEditor;->mSubId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v14

    .line 500
    .local v14, "numeric":Ljava/lang/String;
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    .line 502
    const/16 v17, 0x0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 504
    .local v11, "mcc":Ljava/lang/String;
    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 506
    .local v13, "mnc":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 508
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/ApnEditor;->mCurMnc:Ljava/lang/String;

    .line 509
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings_ex/ApnEditor;->mCurMcc:Ljava/lang/String;

    .line 512
    .end local v11    # "mcc":Ljava/lang/String;
    .end local v13    # "mnc":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mApnType:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v17, v0

    const-string/jumbo v18, "default"

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 515
    .end local v14    # "numeric":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    const/16 v18, 0xe

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 516
    .local v3, "authVal":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_6

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 521
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/ApnEditor;->mNewApn:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0c002c

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 528
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    const/16 v19, 0x11

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    const/16 v17, 0x1

    :goto_2
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    const/16 v18, 0x12

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/ApnEditor;->mBearerInitialVal:I

    .line 531
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 532
    .local v7, "bearers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    const/16 v18, 0x13

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 533
    .local v6, "bearerBitmask":I
    if-nez v6, :cond_9

    .line 534
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/ApnEditor;->mBearerInitialVal:I

    move/from16 v17, v0

    if-nez v17, :cond_2

    .line 535
    const-string/jumbo v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 548
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/ApnEditor;->mBearerInitialVal:I

    move/from16 v17, v0

    if-eqz v17, :cond_3

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/ApnEditor;->mBearerInitialVal:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 550
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/ApnEditor;->mBearerInitialVal:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 552
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/support/v14/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x15

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x16

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 565
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ApnEditor;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/settings_ex/ApnSettings;->getLocalizedName(Landroid/content/Context;Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v10

    .line 566
    .local v10, "localizedName":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mName:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 571
    .end local v3    # "authVal":I
    .end local v6    # "bearerBitmask":I
    .end local v7    # "bearers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v10    # "localizedName":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mName:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mName:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mApn:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mApn:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mProxy:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mProxy:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mPort:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mPort:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mUser:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mUser:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mServer:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mServer:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mPassword:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mPassword:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mMmsProxy:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mMmsProxy:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mMmsPort:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mMmsPort:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mMmsc:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mMmsc:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mApnType:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mApnType:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ApnEditor;->checkApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 588
    .local v4, "authVal":Ljava/lang/String;
    if-eqz v4, :cond_b

    .line 589
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 590
    .local v5, "authValIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f0a004d

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    .line 593
    .local v16, "values":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v17, v0

    aget-object v18, v16, v5

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 598
    .end local v5    # "authValIndex":I
    .end local v16    # "values":[Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v17, v0

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 598
    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v17, v0

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 600
    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    move-object/from16 v17, v0

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v14/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ApnEditor;->bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 602
    invoke-virtual/range {v17 .. v18}, Landroid/support/v14/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v17, v0

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 604
    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 608
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0c0032

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 609
    .local v8, "ceEditable":Z
    if-eqz v8, :cond_c

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 615
    :goto_4
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 616
    .local v12, "mccMnc":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a007c

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    const/16 v17, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    :goto_5
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_e

    aget-object v15, v18, v17

    .line 617
    .local v15, "plmn":Ljava/lang/String;
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/ApnEditor;->mNewApn:Z

    move/from16 v20, v0

    if-eqz v20, :cond_d

    .line 616
    :cond_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 519
    .end local v4    # "authVal":Ljava/lang/String;
    .end local v8    # "ceEditable":Z
    .end local v12    # "mccMnc":Ljava/lang/String;
    .end local v15    # "plmn":Ljava/lang/String;
    .restart local v3    # "authVal":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 525
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x10

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x14

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 528
    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 538
    .restart local v6    # "bearerBitmask":I
    .restart local v7    # "bearers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_9
    const/4 v9, 0x1

    .line 539
    .local v9, "i":I
    :goto_6
    if-eqz v6, :cond_2

    .line 540
    and-int/lit8 v17, v6, 0x1

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 541
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 543
    :cond_a
    shr-int/lit8 v6, v6, 0x1

    .line 544
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 595
    .end local v3    # "authVal":I
    .end local v6    # "bearerBitmask":I
    .end local v7    # "bearers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v9    # "i":I
    .restart local v4    # "authVal":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/settings_ex/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 612
    .restart local v8    # "ceEditable":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_4

    .line 618
    .restart local v12    # "mccMnc":Ljava/lang/String;
    .restart local v15    # "plmn":Ljava/lang/String;
    :cond_d
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/ApnEditor;->mApnDisable:Z

    .line 619
    sget-object v17, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v18, "APN is China Telecom\'s."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    .end local v15    # "plmn":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/ApnEditor;->mDisableEditor:Z

    move/from16 v17, v0

    if-eqz v17, :cond_f

    .line 624
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/ApnEditor;->mApnDisable:Z

    move/from16 v17, v0

    if-eqz v17, :cond_10

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ApnEditor;->mApn:Landroid/support/v7/preference/EditTextPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 626
    sget-object v17, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v18, "Apn Name can\'t be edited."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_f
    :goto_7
    return-void

    .line 628
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ApnEditor;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    .line 629
    sget-object v17, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v18, "ApnEditor form is disabled."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method private getErrorMsg()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 951
    const/4 v1, 0x0

    .line 953
    .local v1, "errorMsg":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mName:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 954
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mApn:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 955
    .local v0, "apn":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 956
    .local v2, "mcc":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 958
    .local v3, "mnc":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_1

    .line 959
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0e0934

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 968
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 960
    .restart local v1    # "errorMsg":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_2

    .line 961
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0e0935

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 962
    .local v1, "errorMsg":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    .line 963
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0e0936

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 964
    .local v1, "errorMsg":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const v6, 0xfffe

    and-int/2addr v5, v6

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 965
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0e0937

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "errorMsg":Ljava/lang/String;
    goto :goto_0
.end method

.method private getPreferenceFromFieldName(Ljava/lang/String;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p1, "apnField"    # Ljava/lang/String;

    .prologue
    .line 379
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mName:Landroid/support/v7/preference/EditTextPreference;

    return-object v0

    .line 379
    :cond_0
    const-string/jumbo v0, "apn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mApn:Landroid/support/v7/preference/EditTextPreference;

    return-object v0

    .line 379
    :cond_1
    const-string/jumbo v0, "proxy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 385
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mProxy:Landroid/support/v7/preference/EditTextPreference;

    return-object v0

    .line 379
    :cond_2
    const-string/jumbo v0, "port"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 387
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mPort:Landroid/support/v7/preference/EditTextPreference;

    return-object v0

    .line 379
    :cond_3
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 389
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mUser:Landroid/support/v7/preference/EditTextPreference;

    return-object v0

    .line 379
    :cond_4
    const-string/jumbo v0, "server"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 391
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mServer:Landroid/support/v7/preference/EditTextPreference;

    return-object v0

    .line 379
    :cond_5
    const-string/jumbo v0, "password"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 393
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mPassword:Landroid/support/v7/preference/EditTextPreference;

    return-object v0

    .line 379
    :cond_6
    const-string/jumbo v0, "mmsproxy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 395
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mMmsProxy:Landroid/support/v7/preference/EditTextPreference;

    return-object v0

    .line 379
    :cond_7
    const-string/jumbo v0, "mmsport"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 397
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mMmsPort:Landroid/support/v7/preference/EditTextPreference;

    return-object v0

    .line 379
    :cond_8
    const-string/jumbo v0, "mmsc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 399
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mMmsc:Landroid/support/v7/preference/EditTextPreference;

    return-object v0

    .line 379
    :cond_9
    const-string/jumbo v0, "mcc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 401
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/support/v7/preference/EditTextPreference;

    return-object v0

    .line 379
    :cond_a
    const-string/jumbo v0, "mnc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 403
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/support/v7/preference/EditTextPreference;

    return-object v0

    .line 379
    :cond_b
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 405
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mApnType:Landroid/support/v7/preference/EditTextPreference;

    return-object v0

    .line 379
    :cond_c
    const-string/jumbo v0, "authtype"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 407
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    return-object v0

    .line 379
    :cond_d
    const-string/jumbo v0, "protocol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 409
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    return-object v0

    .line 379
    :cond_e
    const-string/jumbo v0, "roaming_protocol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 411
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    return-object v0

    .line 379
    :cond_f
    const-string/jumbo v0, "carrier_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 413
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    return-object v0

    .line 379
    :cond_10
    const-string/jumbo v0, "bearer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 416
    :cond_11
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    return-object v0

    .line 379
    :cond_12
    const-string/jumbo v0, "bearer_bitmask"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "mvno_type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 418
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    return-object v0

    .line 379
    :cond_13
    const-string/jumbo v0, "mvno_match_data"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 420
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    return-object v0

    .line 422
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method private hasAllApns([Ljava/lang/String;)Z
    .locals 8
    .param p1, "apnTypes"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 324
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    return v3

    .line 328
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 329
    .local v1, "apnList":Ljava/util/List;
    const-string/jumbo v2, "*"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 330
    sget-object v2, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "hasAllApns: true because apnList.contains(PhoneConstants.APN_TYPE_ALL)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return v7

    .line 333
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants;->APN_TYPES:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v0, v4, v2

    .line 334
    .local v0, "apn":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 335
    return v3

    .line 333
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 339
    .end local v0    # "apn":Ljava/lang/String;
    :cond_3
    sget-object v2, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "hasAllApns: true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return v7
.end method

.method private mvnoDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 692
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v6, p1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 693
    .local v1, "mvnoIndex":I
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v6}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 695
    .local v3, "oldValue":Ljava/lang/String;
    const/4 v6, -0x1

    if-ne v1, v6, :cond_0

    .line 696
    return-object v8

    .line 698
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0a0053

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 699
    .local v4, "values":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    if-eqz v1, :cond_1

    const/4 v5, 0x1

    :cond_1
    invoke-virtual {v6, v5}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 700
    if-eqz p1, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 701
    aget-object v5, v4, v1

    const-string/jumbo v6, "SPN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 702
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 717
    :cond_2
    :goto_0
    :try_start_0
    aget-object v5, v4, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 703
    :cond_3
    aget-object v5, v4, v1

    const-string/jumbo v6, "IMSI"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 704
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v6, p0, Lcom/android/settings_ex/ApnEditor;->mSubId:I

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v2

    .line 705
    .local v2, "numeric":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 706
    .end local v2    # "numeric":Ljava/lang/String;
    :cond_4
    aget-object v5, v4, v1

    const-string/jumbo v6, "GID"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 707
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 708
    :cond_5
    aget-object v5, v4, v1

    const-string/jumbo v6, "ICCID"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 709
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 710
    sget-object v5, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mMvnoMatchDataStr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 718
    :catch_0
    move-exception v0

    .line 719
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    return-object v8
.end method

.method private protocolDescription(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;)Ljava/lang/String;
    .locals 6
    .param p1, "raw"    # Ljava/lang/String;
    .param p2, "protocol"    # Landroid/support/v7/preference/ListPreference;

    .prologue
    const/4 v5, 0x0

    .line 640
    invoke-virtual {p2, p1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 641
    .local v1, "protocolIndex":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 642
    return-object v5

    .line 644
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0a004f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 646
    .local v2, "values":[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 647
    :catch_0
    move-exception v0

    .line 648
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    return-object v5
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 977
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 978
    :cond_0
    sget-object v2, Lcom/android/settings_ex/ApnEditor;->sNotSet:Ljava/lang/String;

    return-object v2

    .line 980
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [C

    .line 981
    .local v1, "password":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 982
    const/16 v2, 0x2a

    aput-char v2, v1, v0

    .line 981
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 984
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method private validateAndSave(Z)Z
    .locals 15
    .param p1, "force"    # Z

    .prologue
    .line 851
    iget-boolean v11, p0, Lcom/android/settings_ex/ApnEditor;->mDisableEditor:Z

    if-eqz v11, :cond_0

    iget-boolean v11, p0, Lcom/android/settings_ex/ApnEditor;->mApnDisable:Z

    if-eqz v11, :cond_2

    .line 856
    :cond_0
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mName:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 857
    .local v9, "name":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mApn:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 858
    .local v0, "apn":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 859
    .local v7, "mcc":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 861
    .local v8, "mnc":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    if-eqz p1, :cond_3

    .line 866
    :cond_1
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-nez v11, :cond_4

    .line 867
    sget-object v11, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    .line 868
    const-string/jumbo v12, "Could not go to the first row in the Cursor when saving data."

    .line 867
    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const/4 v11, 0x0

    return v11

    .line 852
    .end local v0    # "apn":Ljava/lang/String;
    .end local v7    # "mcc":Ljava/lang/String;
    .end local v8    # "mnc":Ljava/lang/String;
    .end local v9    # "name":Ljava/lang/String;
    :cond_2
    sget-object v11, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "Form is disabled. Nothing to save."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const/4 v11, 0x1

    return v11

    .line 862
    .restart local v0    # "apn":Ljava/lang/String;
    .restart local v7    # "mcc":Ljava/lang/String;
    .restart local v8    # "mnc":Ljava/lang/String;
    .restart local v9    # "name":Ljava/lang/String;
    :cond_3
    invoke-static {p0}, Lcom/android/settings_ex/ApnEditor$ErrorDialog;->showError(Lcom/android/settings_ex/ApnEditor;)V

    .line 863
    const/4 v11, 0x0

    return v11

    .line 873
    :cond_4
    if-eqz p1, :cond_5

    iget-boolean v11, p0, Lcom/android/settings_ex/ApnEditor;->mNewApn:Z

    if-eqz v11, :cond_5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-ge v11, v12, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-ge v11, v12, :cond_5

    .line 874
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 875
    const/4 v11, 0x0

    return v11

    .line 878
    :cond_5
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 882
    .local v10, "values":Landroid/content/ContentValues;
    const-string/jumbo v11, "name"

    .line 883
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    if-ge v12, v13, :cond_6

    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e0c40

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 882
    .end local v9    # "name":Ljava/lang/String;
    :cond_6
    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    const-string/jumbo v11, "apn"

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    const-string/jumbo v11, "proxy"

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mProxy:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    const-string/jumbo v11, "port"

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mPort:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    const-string/jumbo v11, "mmsproxy"

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mMmsProxy:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    const-string/jumbo v11, "mmsport"

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mMmsPort:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    const-string/jumbo v11, "user"

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mUser:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    const-string/jumbo v11, "server"

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mServer:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    const-string/jumbo v11, "password"

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mPassword:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    const-string/jumbo v11, "mmsc"

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mMmsc:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v11}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 895
    .local v1, "authVal":Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 896
    const-string/jumbo v11, "authtype"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 899
    :cond_7
    const-string/jumbo v11, "protocol"

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v12}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    const-string/jumbo v11, "roaming_protocol"

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v12}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    const-string/jumbo v11, "type"

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mApnType:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    const-string/jumbo v11, "mcc"

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    const-string/jumbo v11, "mnc"

    invoke-virtual {v10, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    const-string/jumbo v11, "numeric"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v11, :cond_8

    .line 911
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mCurMnc:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 912
    const-string/jumbo v11, "current"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 916
    :cond_8
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v11}, Landroid/support/v14/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v5

    .line 917
    .local v5, "bearerSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 918
    .local v4, "bearerBitmask":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "bearer$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 919
    .local v2, "bearer":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_b

    .line 920
    const/4 v4, 0x0

    .line 926
    .end local v2    # "bearer":Ljava/lang/String;
    :cond_9
    const-string/jumbo v11, "bearer_bitmask"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 929
    if-eqz v4, :cond_a

    iget v11, p0, Lcom/android/settings_ex/ApnEditor;->mBearerInitialVal:I

    if-nez v11, :cond_c

    .line 930
    :cond_a
    const/4 v6, 0x0

    .line 939
    .local v6, "bearerVal":I
    :goto_1
    const-string/jumbo v11, "bearer"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 941
    const-string/jumbo v11, "mvno_type"

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v12}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    const-string/jumbo v11, "mvno_match_data"

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    const-string/jumbo v12, "carrier_enabled"

    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v11}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_e

    const/4 v11, 0x1

    :goto_2
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 945
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v10, v13, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 947
    const/4 v11, 0x1

    return v11

    .line 923
    .end local v6    # "bearerVal":I
    .restart local v2    # "bearer":Ljava/lang/String;
    :cond_b
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v11

    or-int/2addr v4, v11

    goto :goto_0

    .line 931
    .end local v2    # "bearer":Ljava/lang/String;
    :cond_c
    iget v11, p0, Lcom/android/settings_ex/ApnEditor;->mBearerInitialVal:I

    invoke-static {v4, v11}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 932
    iget v6, p0, Lcom/android/settings_ex/ApnEditor;->mBearerInitialVal:I

    .restart local v6    # "bearerVal":I
    goto :goto_1

    .line 937
    .end local v6    # "bearerVal":I
    :cond_d
    const/4 v6, 0x0

    .restart local v6    # "bearerVal":I
    goto :goto_1

    .line 944
    :cond_e
    const/4 v11, 0x0

    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 467
    const/16 v0, 0xd

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/16 v10, 0x17

    const/4 v9, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 179
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 181
    const v4, 0x7f080009

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ApnEditor;->addPreferencesFromResource(I)V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v7, 0x7f10040a

    invoke-virtual {v4, v7}, Landroid/app/Activity;->setTheme(I)V

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0e0909

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/settings_ex/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 188
    const-string/jumbo v4, "apn_name"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mName:Landroid/support/v7/preference/EditTextPreference;

    .line 189
    const-string/jumbo v4, "apn_apn"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mApn:Landroid/support/v7/preference/EditTextPreference;

    .line 190
    const-string/jumbo v4, "apn_http_proxy"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mProxy:Landroid/support/v7/preference/EditTextPreference;

    .line 191
    const-string/jumbo v4, "apn_http_port"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mPort:Landroid/support/v7/preference/EditTextPreference;

    .line 192
    const-string/jumbo v4, "apn_user"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mUser:Landroid/support/v7/preference/EditTextPreference;

    .line 193
    const-string/jumbo v4, "apn_server"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mServer:Landroid/support/v7/preference/EditTextPreference;

    .line 194
    const-string/jumbo v4, "apn_password"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mPassword:Landroid/support/v7/preference/EditTextPreference;

    .line 195
    const-string/jumbo v4, "apn_mms_proxy"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mMmsProxy:Landroid/support/v7/preference/EditTextPreference;

    .line 196
    const-string/jumbo v4, "apn_mms_port"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mMmsPort:Landroid/support/v7/preference/EditTextPreference;

    .line 197
    const-string/jumbo v4, "apn_mmsc"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mMmsc:Landroid/support/v7/preference/EditTextPreference;

    .line 198
    const-string/jumbo v4, "apn_mcc"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/support/v7/preference/EditTextPreference;

    .line 199
    const-string/jumbo v4, "apn_mnc"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/support/v7/preference/EditTextPreference;

    .line 200
    const-string/jumbo v4, "apn_type"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mApnType:Landroid/support/v7/preference/EditTextPreference;

    .line 202
    const-string/jumbo v4, "auth_type"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    .line 203
    iget-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 205
    const-string/jumbo v4, "apn_protocol"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    .line 206
    iget-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 208
    const-string/jumbo v4, "apn_roaming_protocol"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    .line 209
    iget-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 211
    const-string/jumbo v4, "carrier_enabled"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    .line 213
    const-string/jumbo v4, "bearer_multi"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/MultiSelectListPreference;

    iput-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    .line 214
    iget-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v4, p0}, Landroid/support/v14/preference/MultiSelectListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 216
    iget-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    const v7, 0x7f0e0a34

    invoke-virtual {v4, v7}, Landroid/support/v14/preference/MultiSelectListPreference;->setPositiveButtonText(I)V

    .line 217
    iget-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    const v7, 0x7f0e0a35

    invoke-virtual {v4, v7}, Landroid/support/v14/preference/MultiSelectListPreference;->setNegativeButtonText(I)V

    .line 220
    const-string/jumbo v4, "mvno_type"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    .line 221
    iget-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 222
    const-string/jumbo v4, "mvno_match_data"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    .line 224
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    .line 226
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 227
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "sub_id"

    invoke-virtual {v2, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings_ex/ApnEditor;->mSubId:I

    .line 230
    const-string/jumbo v4, "DISABLE_EDITOR"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings_ex/ApnEditor;->mDisableEditor:Z

    .line 232
    if-nez p1, :cond_1

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/settings_ex/ApnEditor;->mFirstTime:Z

    .line 233
    iput-boolean v6, p0, Lcom/android/settings_ex/ApnEditor;->mReadOnlyApn:Z

    .line 234
    iput-object v8, p0, Lcom/android/settings_ex/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    .line 235
    iput-object v8, p0, Lcom/android/settings_ex/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    .line 237
    const-string/jumbo v4, "android.intent.action.EDIT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 238
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 239
    .local v3, "uri":Landroid/net/Uri;
    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 240
    sget-object v4, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Edit request not for carrier table. Uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->finish()V

    .line 242
    return-void

    .end local v3    # "uri":Landroid/net/Uri;
    :cond_1
    move v4, v6

    .line 232
    goto :goto_0

    .line 259
    .restart local v3    # "uri":Landroid/net/Uri;
    :cond_2
    iput-object v3, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    .line 295
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    sget-object v7, Lcom/android/settings_ex/ApnEditor;->sProjection:[Ljava/lang/String;

    invoke-virtual {v4, v6, v7, v8, v8}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    .line 296
    iget-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 298
    const-string/jumbo v4, "phone"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 300
    sget-object v4, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onCreate: EDITED "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eq v4, v5, :cond_a

    .line 303
    iget-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v7, 0xf

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/android/settings_ex/ApnEditor;->apnTypesMatch([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 302
    if-eqz v4, :cond_a

    .line 304
    sget-object v4, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "onCreate: apnTypesMatch; read-only APN"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iput-boolean v5, p0, Lcom/android/settings_ex/ApnEditor;->mReadOnlyApn:Z

    .line 306
    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor;->disableAllFields()V

    .line 311
    :cond_3
    :goto_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    if-ge v1, v4, :cond_b

    .line 312
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 311
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 260
    .end local v1    # "i":I
    :cond_4
    const-string/jumbo v4, "android.intent.action.INSERT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 261
    iget-boolean v4, p0, Lcom/android/settings_ex/ApnEditor;->mFirstTime:Z

    if-nez v4, :cond_5

    const-string/jumbo v4, "pos"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_7

    .line 262
    :cond_5
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 263
    .restart local v3    # "uri":Landroid/net/Uri;
    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 264
    sget-object v4, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Insert request not for carrier table. Uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->finish()V

    .line 266
    return-void

    .line 268
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v4, v3, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    .line 273
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_4
    iput-boolean v5, p0, Lcom/android/settings_ex/ApnEditor;->mNewApn:Z

    .line 274
    const-string/jumbo v4, "mvno_type"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    .line 275
    const-string/jumbo v4, "mvno_match_data"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    .line 279
    iget-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    if-nez v4, :cond_8

    .line 280
    sget-object v4, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to insert new telephony provider into "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 281
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 280
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->finish()V

    .line 283
    return-void

    .line 270
    :cond_7
    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 271
    const-string/jumbo v6, "pos"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    .line 270
    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    goto :goto_4

    .line 288
    :cond_8
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v9, v4}, Lcom/android/settings_ex/ApnEditor;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_1

    .line 291
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->finish()V

    .line 292
    return-void

    .line 307
    :cond_a
    iget-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 308
    iget-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings_ex/ApnEditor;->disableFields([Ljava/lang/String;)V

    goto/16 :goto_2

    .line 315
    .restart local v1    # "i":I
    :cond_b
    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor;->fillUi()V

    .line 178
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 777
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 778
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnEditor;->mDisableEditor:Z

    if-eqz v0, :cond_0

    .line 779
    sget-object v0, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Form is disabled. Do not create the options menu."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    return-void

    .line 783
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnEditor;->mNewApn:Z

    if-nez v0, :cond_1

    .line 784
    const/4 v0, 0x1

    const v1, 0x7f0e092f

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 785
    const v1, 0x7f02011f

    .line 784
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 787
    :cond_1
    const/4 v0, 0x2

    const v1, 0x7f0e0931

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 788
    const v1, 0x108004e

    .line 787
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 789
    const/4 v0, 0x3

    const v1, 0x7f0e0932

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 790
    const v1, 0x1080038

    .line 789
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 776
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 821
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 822
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 830
    return v1

    .line 824
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/android/settings_ex/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 825
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->finish()V

    .line 827
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 822
    nop

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

    const/4 v2, 0x1

    .line 795
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 811
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 797
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor;->deleteApn()V

    .line 798
    return v2

    .line 800
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->finish()V

    .line 803
    :cond_0
    return v2

    .line 805
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnEditor;->mNewApn:Z

    if-eqz v0, :cond_1

    .line 806
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 808
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->finish()V

    .line 809
    return v2

    .line 795
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 477
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 476
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 725
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 726
    .local v3, "key":Ljava/lang/String;
    const-string/jumbo v8, "auth_type"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 728
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 729
    .local v2, "index":I
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v7, v2}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 731
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f0a004d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 732
    .local v6, "values":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    aget-object v8, v6, v2

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    .end local v2    # "index":I
    .end local v6    # "values":[Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v7, 0x1

    return v7

    .line 733
    :catch_0
    move-exception v1

    .line 734
    .local v1, "e":Ljava/lang/NumberFormatException;
    return v9

    .line 736
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v8, "apn_protocol"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v7, p2

    .line 737
    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;)Ljava/lang/String;

    move-result-object v5

    .line 738
    .local v5, "protocol":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 739
    return v9

    .line 741
    :cond_2
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 742
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 743
    .end local v5    # "protocol":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    const-string/jumbo v8, "apn_roaming_protocol"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v7, p2

    .line 744
    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;)Ljava/lang/String;

    move-result-object v5

    .line 745
    .restart local v5    # "protocol":Ljava/lang/String;
    if-nez v5, :cond_4

    .line 746
    return v9

    .line 748
    :cond_4
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 749
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 750
    .end local v5    # "protocol":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_5
    const-string/jumbo v8, "bearer_multi"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    move-object v7, p2

    .line 751
    check-cast v7, Ljava/util/Set;

    invoke-direct {p0, v7}, Lcom/android/settings_ex/ApnEditor;->bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    .line 752
    .local v0, "bearer":Ljava/lang/String;
    if-nez v0, :cond_6

    .line 753
    return v9

    .line 755
    :cond_6
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    check-cast p2, Ljava/util/Set;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Landroid/support/v14/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 756
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v7, v0}, Landroid/support/v14/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 757
    .end local v0    # "bearer":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_7
    const-string/jumbo v8, "mvno_type"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    move-object v7, p2

    .line 758
    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/settings_ex/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 759
    .local v4, "mvno":Ljava/lang/String;
    if-nez v4, :cond_8

    .line 760
    return v9

    .line 762
    :cond_8
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 763
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v7, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 764
    .end local v4    # "mvno":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_9
    iget-object v8, p0, Lcom/android/settings_ex/ApnEditor;->mPassword:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {p1, v8}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 765
    if-eqz p2, :cond_a

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-direct {p0, v7}, Lcom/android/settings_ex/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v7, ""

    goto :goto_1

    .line 766
    :cond_b
    iget-object v8, p0, Lcom/android/settings_ex/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v8}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 769
    if-eqz p2, :cond_c

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :cond_c
    invoke-direct {p0, v7}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 472
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 471
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 835
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 837
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    const-string/jumbo v0, "pos"

    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 834
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 816
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 817
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 815
    return-void
.end method
