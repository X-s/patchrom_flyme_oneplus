.class public Lcom/android/settings_ex/ApnSettings;
.super Lcom/android/settings_ex/RestrictedSettingsFragment;
.source "ApnSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ApnSettings$1;,
        Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;,
        Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;
    }
.end annotation


# static fields
.field public static final APN_ID:Ljava/lang/String; = "apn_id"

.field private static final APN_INDEX:I = 0x2

.field private static final APN_NAME_DM:Ljava/lang/String; = "CMCC DM"

.field private static final BEARER_BITMASK_INDEX:I = 0x8

.field private static final BEARER_INDEX:I = 0x7

.field private static final DEFAULTAPN_URI:Landroid/net/Uri;

.field private static final DIALOG_RESTORE_DEFAULTAPN:I = 0x3e9

.field private static final EVENT_RESTORE_DEFAULTAPN_COMPLETE:I = 0x2

.field private static final EVENT_RESTORE_DEFAULTAPN_START:I = 0x1

.field public static final EXTRA_POSITION:Ljava/lang/String; = "position"

.field private static final ID_INDEX:I = 0x0

.field private static final MENU_NEW:I = 0x1

.field private static final MENU_RESTORE:I = 0x2

.field public static final MVNO_MATCH_DATA:Ljava/lang/String; = "mvno_match_data"

.field private static final MVNO_MATCH_DATA_INDEX:I = 0x5

.field public static final MVNO_TYPE:Ljava/lang/String; = "mvno_type"

.field private static final MVNO_TYPE_INDEX:I = 0x4

.field private static final NAME_INDEX:I = 0x1

.field private static final PREFERAPN_URI:Landroid/net/Uri;

.field public static final PREFERRED_APN_URI:Ljava/lang/String; = "content://telephony/carriers/preferapn"

.field public static final RESTORE_CARRIERS_URI:Ljava/lang/String; = "content://telephony/carriers/restore"

.field private static final RO_INDEX:I = 0x6

.field public static final SUB_ID:Ljava/lang/String; = "sub_id"

.field static final TAG:Ljava/lang/String; = "ApnSettings"

.field private static final TYPES_INDEX:I = 0x3

.field private static mRestoreDefaultApnMode:Z


# instance fields
.field private mAllowAddingApns:Z

.field private mApnSettingsHidden:Z

.field private mHideImsApn:Z

.field private mIccidSet:Ljava/util/HashSet;

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mMvnoMatchData:Ljava/lang/String;

.field private mMvnoType:Ljava/lang/String;

.field private mRestoreApnProcessHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;

.field private mRestoreDefaultApnThread:Landroid/os/HandlerThread;

.field private mSelectedKey:Ljava/lang/String;

.field private mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private mUnavailable:Z

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/settings_ex/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/ApnSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/ApnSettings;->mApnSettingsHidden:Z

    return v0
.end method

.method static synthetic -get2()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnMode:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/ApnSettings;)Landroid/telephony/SubscriptionInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnMode:Z

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/ApnSettings;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ApnSettings;->getUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-static {p0}, Lcom/android/settings_ex/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/ApnSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/ApnSettings;->fillList()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const-string/jumbo v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 112
    const-string/jumbo v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 136
    const-string/jumbo v0, "no_config_mobile_networks"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 141
    new-instance v0, Lcom/android/settings_ex/ApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ApnSettings$1;-><init>(Lcom/android/settings_ex/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 135
    return-void
.end method

.method private addApnToList(Lcom/android/settings_ex/ApnPreference;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pref"    # Lcom/android/settings_ex/ApnPreference;
    .param p4, "r"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .param p5, "mvnoType"    # Ljava/lang/String;
    .param p6, "mvnoMatchData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings_ex/ApnPreference;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/ApnPreference;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/ApnPreference;",
            ">;",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 569
    .local p2, "mnoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    .local p3, "mvnoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    if-eqz p4, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 577
    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    :cond_1
    :goto_0
    return-void

    .line 569
    :cond_2
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 570
    invoke-static {p4, p5, p6}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    iput-object p5, p0, Lcom/android/settings_ex/ApnSettings;->mMvnoType:Ljava/lang/String;

    .line 574
    iput-object p6, p0, Lcom/android/settings_ex/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    goto :goto_0
.end method

.method private addNewApn()V
    .locals 4

    .prologue
    .line 618
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v3}, Lcom/android/settings_ex/ApnSettings;->getUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 619
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings_ex/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 621
    .local v1, "subId":I
    :goto_0
    const-string/jumbo v2, "sub_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 622
    iget-object v2, p0, Lcom/android/settings_ex/ApnSettings;->mMvnoType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 626
    :cond_0
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 617
    return-void

    .line 620
    .end local v1    # "subId":I
    :cond_1
    const/4 v1, -0x1

    .restart local v1    # "subId":I
    goto :goto_0

    .line 623
    :cond_2
    const-string/jumbo v2, "mvno_type"

    iget-object v3, p0, Lcom/android/settings_ex/ApnSettings;->mMvnoType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    const-string/jumbo v2, "mvno_match_data"

    iget-object v3, p0, Lcom/android/settings_ex/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private fillList()V
    .locals 38

    .prologue
    .line 328
    const/16 v22, 0x0

    .line 329
    .local v22, "isSelectedKeyMatch":Z
    const-string/jumbo v2, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/telephony/TelephonyManager;

    .line 330
    .local v35, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v2, :cond_c

    const-string/jumbo v25, ""

    .line 332
    .local v25, "mccmnc":Ljava/lang/String;
    :goto_0
    const-string/jumbo v2, "ApnSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mccmnc = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance v37, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "numeric=\""

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 334
    const-string/jumbo v9, "\" AND NOT (type=\'ia\' AND (apn=\"\" OR apn IS NULL)) AND user_visible!=0"

    .line 333
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v37

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    .local v37, "where":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "persist.sys.hideapn"

    const/4 v9, 0x1

    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 337
    const-string/jumbo v2, "ApnSettings"

    const-string/jumbo v9, "hiden apn feature enable."

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v9, 0x7f0c0027

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 341
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/ApnSettings;->mHideImsApn:Z

    .line 345
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v9, 0x7f0c0028

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v9, 0x7f0a0079

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x0

    array-length v10, v9

    :goto_1
    if-ge v2, v10, :cond_1

    aget-object v28, v9, v2

    .line 347
    .local v28, "plmn":Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 348
    const-string/jumbo v2, " and name <>\"CMCC DM\""

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .end local v28    # "plmn":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v9, 0x7f0c0029

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 355
    const/16 v27, 0x0

    .line 356
    .local v27, "needHideSupl":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v9, 0x7f0a007a

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x0

    array-length v10, v9

    :goto_2
    if-ge v2, v10, :cond_2

    aget-object v28, v9, v2

    .line 357
    .restart local v28    # "plmn":Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 358
    const/16 v27, 0x1

    .line 363
    .end local v28    # "plmn":Ljava/lang/String;
    :cond_2
    if-eqz v27, :cond_3

    .line 364
    const-string/jumbo v2, " and type <>\"supl\""

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .end local v27    # "needHideSupl":Z
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v9, 0x7f0c002a

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 370
    const-string/jumbo v2, " and type <>\"mms\""

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v9, 0x7f0c0031

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 375
    const-string/jumbo v2, " AND type <>\"dun\""

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    const-string/jumbo v2, " AND type <>\"ims\""

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/ApnSettings;->mHideImsApn:Z

    if-eqz v2, :cond_6

    .line 380
    const-string/jumbo v2, " AND NOT (type=\'ims\')"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/ApnSettings;->isOperatorIccId()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 384
    const-string/jumbo v2, " AND type <>\"emergency\""

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    const-string/jumbo v2, " AND type <>\"ims\""

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :cond_7
    const-string/jumbo v2, "ApnSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "where---"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v37

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/16 v9, 0x9

    new-array v4, v9, [Ljava/lang/String;

    .line 391
    const-string/jumbo v9, "_id"

    const/4 v10, 0x0

    aput-object v9, v4, v10

    const-string/jumbo v9, "name"

    const/4 v10, 0x1

    aput-object v9, v4, v10

    const-string/jumbo v9, "apn"

    const/4 v10, 0x2

    aput-object v9, v4, v10

    const-string/jumbo v9, "type"

    const/4 v10, 0x3

    aput-object v9, v4, v10

    const-string/jumbo v9, "mvno_type"

    const/4 v10, 0x4

    aput-object v9, v4, v10

    const-string/jumbo v9, "mvno_match_data"

    const/4 v10, 0x5

    aput-object v9, v4, v10

    const-string/jumbo v9, "read_only"

    const/4 v10, 0x6

    aput-object v9, v4, v10

    const-string/jumbo v9, "bearer"

    const/4 v10, 0x7

    aput-object v9, v4, v10

    .line 392
    const-string/jumbo v9, "bearer_bitmask"

    const/16 v10, 0x8

    aput-object v9, v4, v10

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "_id"

    const/4 v6, 0x0

    .line 390
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 395
    .local v20, "cursor":Landroid/database/Cursor;
    if-eqz v20, :cond_1c

    .line 396
    const/4 v6, 0x0

    .line 397
    .local v6, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ApnSettings;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v2, :cond_8

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ApnSettings;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 399
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    .line 398
    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v9

    .line 399
    const/4 v10, 0x1

    .line 398
    invoke-virtual {v2, v9, v10}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v6

    .line 401
    .end local v6    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_8
    const-string/jumbo v2, "apn_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ApnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/support/v7/preference/PreferenceGroup;

    .line 402
    .local v17, "apnList":Landroid/support/v7/preference/PreferenceGroup;
    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 404
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .local v4, "mnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .local v5, "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 407
    .local v11, "mnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v12, "mvnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/ApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 410
    const-string/jumbo v2, "ApnSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "select key = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    .line 412
    :goto_3
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_18

    .line 413
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 414
    .local v26, "name":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 415
    .local v16, "apn":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 416
    .local v23, "key":Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 417
    .local v36, "type":Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 418
    .local v7, "mvnoType":Ljava/lang/String;
    const/4 v2, 0x5

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 419
    .local v8, "mvnoMatchData":Ljava/lang/String;
    const/4 v2, 0x6

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v9, 0x1

    if-ne v2, v9, :cond_f

    const/16 v32, 0x1

    .line 421
    .local v32, "readOnly":Z
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v9, 0x1

    move-object/from16 v0, v20

    invoke-static {v2, v0, v9}, Lcom/android/settings_ex/ApnSettings;->getLocalizedName(Landroid/content/Context;Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v24

    .line 422
    .local v24, "localizedName":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 423
    move-object/from16 v26, v24

    .line 425
    :cond_9
    const/4 v2, 0x7

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 426
    .local v18, "bearer":I
    const/16 v2, 0x8

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 427
    .local v19, "bearerBitMask":I
    or-int v21, v18, v19

    .line 428
    .local v21, "fullBearer":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v34

    .line 430
    .local v34, "subId":I
    :goto_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    move/from16 v0, v34

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings_ex/ApnSettings;->networkTypeToRilRidioTechnology(I)I

    move-result v31

    .line 432
    .local v31, "radioTech":I
    move/from16 v0, v21

    move/from16 v1, v31

    invoke-static {v0, v1}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result v2

    if-nez v2, :cond_11

    .line 433
    if-nez v18, :cond_a

    if-eqz v19, :cond_11

    .line 435
    :cond_a
    if-nez v31, :cond_b

    if-nez v18, :cond_11

    .line 436
    if-nez v31, :cond_11

    .line 437
    :cond_b
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_3

    .line 331
    .end local v4    # "mnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    .end local v5    # "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    .end local v7    # "mvnoType":Ljava/lang/String;
    .end local v8    # "mvnoMatchData":Ljava/lang/String;
    .end local v11    # "mnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    .end local v12    # "mvnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    .end local v16    # "apn":Ljava/lang/String;
    .end local v17    # "apnList":Landroid/support/v7/preference/PreferenceGroup;
    .end local v18    # "bearer":I
    .end local v19    # "bearerBitMask":I
    .end local v20    # "cursor":Landroid/database/Cursor;
    .end local v21    # "fullBearer":I
    .end local v23    # "key":Ljava/lang/String;
    .end local v24    # "localizedName":Ljava/lang/String;
    .end local v25    # "mccmnc":Ljava/lang/String;
    .end local v26    # "name":Ljava/lang/String;
    .end local v31    # "radioTech":I
    .end local v32    # "readOnly":Z
    .end local v34    # "subId":I
    .end local v36    # "type":Ljava/lang/String;
    .end local v37    # "where":Ljava/lang/StringBuilder;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v25

    .restart local v25    # "mccmnc":Ljava/lang/String;
    goto/16 :goto_0

    .line 346
    .restart local v28    # "plmn":Ljava/lang/String;
    .restart local v37    # "where":Ljava/lang/StringBuilder;
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 356
    .restart local v27    # "needHideSupl":Z
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 419
    .end local v27    # "needHideSupl":Z
    .end local v28    # "plmn":Ljava/lang/String;
    .restart local v4    # "mnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    .restart local v5    # "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    .restart local v7    # "mvnoType":Ljava/lang/String;
    .restart local v8    # "mvnoMatchData":Ljava/lang/String;
    .restart local v11    # "mnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    .restart local v12    # "mvnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    .restart local v16    # "apn":Ljava/lang/String;
    .restart local v17    # "apnList":Landroid/support/v7/preference/PreferenceGroup;
    .restart local v20    # "cursor":Landroid/database/Cursor;
    .restart local v23    # "key":Ljava/lang/String;
    .restart local v26    # "name":Ljava/lang/String;
    .restart local v36    # "type":Ljava/lang/String;
    :cond_f
    const/16 v32, 0x0

    .restart local v32    # "readOnly":Z
    goto :goto_4

    .line 429
    .restart local v18    # "bearer":I
    .restart local v19    # "bearerBitMask":I
    .restart local v21    # "fullBearer":I
    .restart local v24    # "localizedName":Ljava/lang/String;
    :cond_10
    const/16 v34, -0x1

    .restart local v34    # "subId":I
    goto :goto_5

    .line 441
    .restart local v31    # "radioTech":I
    :cond_11
    new-instance v3, Lcom/android/settings_ex/ApnPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ApnSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/android/settings_ex/ApnPreference;-><init>(Landroid/content/Context;)V

    .line 443
    .local v3, "pref":Lcom/android/settings_ex/ApnPreference;
    move/from16 v0, v32

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/ApnPreference;->setApnReadOnly(Z)V

    .line 444
    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/ApnPreference;->setKey(Ljava/lang/String;)V

    .line 445
    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 446
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 447
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/android/settings_ex/ApnPreference;->setPersistent(Z)V

    .line 448
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/ApnPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 450
    if-eqz v36, :cond_14

    const-string/jumbo v2, "mms"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string/jumbo v2, "ia"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_12
    const/16 v33, 0x0

    .line 453
    .local v33, "selectable":Z
    :goto_6
    move/from16 v0, v33

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/ApnPreference;->setSelectable(Z)V

    .line 455
    if-eqz v33, :cond_17

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ApnSettings;->mSelectedKey:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 457
    invoke-virtual {v3}, Lcom/android/settings_ex/ApnPreference;->setChecked()V

    .line 458
    const/16 v22, 0x1

    .line 459
    const-string/jumbo v2, "ApnSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "find select key = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " apn: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    move-object/from16 v2, p0

    .line 461
    invoke-direct/range {v2 .. v8}, Lcom/android/settings_ex/ApnSettings;->addApnToList(Lcom/android/settings_ex/ApnPreference;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :goto_7
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_3

    .line 450
    .end local v33    # "selectable":Z
    :cond_14
    const/16 v33, 0x1

    goto :goto_6

    .line 451
    :cond_15
    const-string/jumbo v2, "ims"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x0

    :goto_8
    move/from16 v33, v2

    goto :goto_6

    :cond_16
    const/4 v2, 0x1

    goto :goto_8

    .restart local v33    # "selectable":Z
    :cond_17
    move-object/from16 v9, p0

    move-object v10, v3

    move-object v13, v6

    move-object v14, v7

    move-object v15, v8

    .line 463
    invoke-direct/range {v9 .. v15}, Lcom/android/settings_ex/ApnSettings;->addApnToList(Lcom/android/settings_ex/ApnPreference;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 467
    .end local v3    # "pref":Lcom/android/settings_ex/ApnPreference;
    .end local v7    # "mvnoType":Ljava/lang/String;
    .end local v8    # "mvnoMatchData":Ljava/lang/String;
    .end local v16    # "apn":Ljava/lang/String;
    .end local v18    # "bearer":I
    .end local v19    # "bearerBitMask":I
    .end local v21    # "fullBearer":I
    .end local v23    # "key":Ljava/lang/String;
    .end local v24    # "localizedName":Ljava/lang/String;
    .end local v26    # "name":Ljava/lang/String;
    .end local v31    # "radioTech":I
    .end local v32    # "readOnly":Z
    .end local v33    # "selectable":Z
    .end local v34    # "subId":I
    .end local v36    # "type":Ljava/lang/String;
    :cond_18
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 469
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_19

    .line 470
    move-object v4, v5

    .line 471
    move-object v11, v12

    .line 476
    :cond_19
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, "preference$iterator":Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/settings_ex/ApnPreference;

    .line 477
    .local v29, "preference":Landroid/support/v7/preference/Preference;
    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_9

    .line 481
    .end local v29    # "preference":Landroid/support/v7/preference/Preference;
    :cond_1a
    if-nez v22, :cond_1b

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-lez v2, :cond_1b

    .line 482
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/ApnPreference;

    .line 483
    .restart local v3    # "pref":Lcom/android/settings_ex/ApnPreference;
    invoke-virtual {v3}, Lcom/android/settings_ex/ApnPreference;->setChecked()V

    .line 484
    invoke-virtual {v3}, Lcom/android/settings_ex/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings_ex/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 485
    const-string/jumbo v2, "ApnSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "set key to  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/android/settings_ex/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    .end local v3    # "pref":Lcom/android/settings_ex/ApnPreference;
    :cond_1b
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_a
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/settings_ex/ApnPreference;

    .line 489
    .restart local v29    # "preference":Landroid/support/v7/preference/Preference;
    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_a

    .line 327
    .end local v4    # "mnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    .end local v5    # "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    .end local v11    # "mnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    .end local v12    # "mvnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    .end local v17    # "apnList":Landroid/support/v7/preference/PreferenceGroup;
    .end local v29    # "preference":Landroid/support/v7/preference/Preference;
    .end local v30    # "preference$iterator":Ljava/util/Iterator;
    :cond_1c
    return-void
.end method

.method private fillOperatorIccidset()V
    .locals 2

    .prologue
    .line 311
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mIccidSet:Ljava/util/HashSet;

    .line 312
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mIccidSet:Ljava/util/HashSet;

    const-string/jumbo v1, "8991840"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mIccidSet:Ljava/util/HashSet;

    const-string/jumbo v1, "8991854"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mIccidSet:Ljava/util/HashSet;

    const-string/jumbo v1, "8991855"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mIccidSet:Ljava/util/HashSet;

    const-string/jumbo v1, "8991856"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mIccidSet:Ljava/util/HashSet;

    const-string/jumbo v1, "8991857"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mIccidSet:Ljava/util/HashSet;

    const-string/jumbo v1, "8991858"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mIccidSet:Ljava/util/HashSet;

    const-string/jumbo v1, "8991859"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 319
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mIccidSet:Ljava/util/HashSet;

    const-string/jumbo v1, "899186"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mIccidSet:Ljava/util/HashSet;

    const-string/jumbo v1, "8991870"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mIccidSet:Ljava/util/HashSet;

    const-string/jumbo v1, "8991871"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mIccidSet:Ljava/util/HashSet;

    const-string/jumbo v1, "8991872"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 323
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mIccidSet:Ljava/util/HashSet;

    const-string/jumbo v1, "8991873"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mIccidSet:Ljava/util/HashSet;

    const-string/jumbo v1, "8991874"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 310
    return-void
.end method

.method public static getLocalizedName(Landroid/content/Context;Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "index"    # I

    .prologue
    .line 551
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 552
    .local v3, "resName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 553
    .local v1, "localizedName":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 563
    .end local v1    # "localizedName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 554
    .restart local v1    # "localizedName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "string"

    .line 555
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 554
    invoke-virtual {v4, v3, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 557
    .local v2, "resId":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 558
    .local v1, "localizedName":Ljava/lang/String;
    const-string/jumbo v4, "ApnSettings"

    const-string/jumbo v5, "Replaced apn name with localized name"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 559
    .end local v1    # "localizedName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 560
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v4, "ApnSettings"

    const-string/jumbo v5, "Got execption while getting the localized apn name."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 180
    const-string/jumbo v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 182
    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v1

    .line 184
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v1
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 664
    const/4 v7, 0x0

    .line 666
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings_ex/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/ApnSettings;->getUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v8

    .line 667
    const-string/jumbo v5, "name ASC"

    move-object v4, v3

    .line 666
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 668
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 669
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 670
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 672
    .end local v7    # "key":Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 673
    return-object v7
.end method

.method private getUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 771
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 772
    .local v0, "subId":I
    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_0

    .line 773
    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 772
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 774
    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 776
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/subId/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private isOperatorIccId()Z
    .locals 3

    .prologue
    .line 495
    iget-object v2, p0, Lcom/android/settings_ex/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v2, :cond_1

    const-string/jumbo v0, ""

    .line 497
    .local v0, "iccid":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/ApnSettings;->mIccidSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 498
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 499
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 500
    const/4 v2, 0x1

    return v2

    .line 496
    .end local v0    # "iccid":Ljava/lang/String;
    .end local v1    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "iccid":Ljava/lang/String;
    goto :goto_0

    .line 503
    .restart local v1    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method private networkTypeToRilRidioTechnology(I)I
    .locals 1
    .param p1, "nt"    # I

    .prologue
    .line 507
    packed-switch p1, :pswitch_data_0

    .line 545
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 509
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 511
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 513
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 515
    :pswitch_4
    const/16 v0, 0x9

    return v0

    .line 517
    :pswitch_5
    const/16 v0, 0xa

    return v0

    .line 519
    :pswitch_6
    const/16 v0, 0xb

    return v0

    .line 521
    :pswitch_7
    const/4 v0, 0x5

    return v0

    .line 523
    :pswitch_8
    const/4 v0, 0x6

    return v0

    .line 525
    :pswitch_9
    const/4 v0, 0x7

    return v0

    .line 527
    :pswitch_a
    const/16 v0, 0x8

    return v0

    .line 529
    :pswitch_b
    const/16 v0, 0xc

    return v0

    .line 531
    :pswitch_c
    const/16 v0, 0xd

    return v0

    .line 533
    :pswitch_d
    const/16 v0, 0xe

    return v0

    .line 535
    :pswitch_e
    const/16 v0, 0xf

    return v0

    .line 537
    :pswitch_f
    const/16 v0, 0x10

    return v0

    .line 539
    :pswitch_10
    const/16 v0, 0x11

    return v0

    .line 541
    :pswitch_11
    const/16 v0, 0x12

    return v0

    .line 543
    :pswitch_12
    const/16 v0, 0x13

    return v0

    .line 507
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_b
        :pswitch_d
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method private restoreDefaultApn()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 678
    const/16 v1, 0x3e9

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ApnSettings;->showDialog(I)V

    .line 679
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnMode:Z

    .line 681
    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;

    if-nez v1, :cond_0

    .line 682
    new-instance v1, Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings_ex/ApnSettings;Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;)V

    iput-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;

    .line 685
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;

    if-eqz v1, :cond_1

    .line 686
    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_2

    .line 687
    :cond_1
    new-instance v1, Landroid/os/HandlerThread;

    .line 688
    const-string/jumbo v2, "Restore default APN Handler: Process Thread"

    .line 687
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 689
    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 690
    new-instance v1, Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;

    .line 691
    iget-object v2, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;

    .line 690
    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;-><init>(Lcom/android/settings_ex/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;

    .line 694
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;

    .line 695
    const/4 v2, 0x1

    .line 694
    invoke-virtual {v1, v2}, Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    :goto_0
    return v4

    .line 696
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalStateException;
    goto :goto_0
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 655
    iput-object p1, p0, Lcom/android/settings_ex/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 656
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 658
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 659
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "apn_id"

    iget-object v3, p0, Lcom/android/settings_ex/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    sget-object v2, Lcom/android/settings_ex/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/android/settings_ex/ApnSettings;->getUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 654
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 190
    const/16 v0, 0xc

    return v0
.end method

.method public getRestrictionEnforcedAdmin()Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    .locals 3

    .prologue
    .line 301
    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserHandle()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 302
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v2, "no_config_mobile_networks"

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v2, "no_config_mobile_networks"

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 305
    :cond_1
    sget-object v1, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    return-object v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 226
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 228
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0e00a1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 229
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->isUiRestricted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/ApnSettings;->mUnavailable:Z

    .line 230
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ApnSettings;->setHasOptionsMenu(Z)V

    .line 231
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_1

    .line 232
    new-instance v0, Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v7/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ApnSettings;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 234
    return-void

    .line 230
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 237
    :cond_1
    const v0, 0x7f08000a

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ApnSettings;->addPreferencesFromResource(I)V

    .line 225
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    .line 196
    const/4 v5, 0x0

    .line 195
    invoke-virtual {v4, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 197
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 199
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "sub_id"

    .line 200
    const/4 v6, -0x1

    .line 199
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 201
    .local v3, "subId":I
    invoke-direct {p0}, Lcom/android/settings_ex/ApnSettings;->fillOperatorIccidset()V

    .line 202
    const-string/jumbo v4, "ApnSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onCreate: subId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v4, Landroid/content/IntentFilter;

    .line 206
    const-string/jumbo v5, "android.intent.action.ANY_DATA_STATE"

    .line 205
    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/settings_ex/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 208
    iget-object v4, p0, Lcom/android/settings_ex/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ApnSettings;->setIfOnlyAvailableForAdmins(Z)V

    .line 213
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 214
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/ApnSettings;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 217
    const-string/jumbo v4, "carrier_config"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 216
    check-cast v2, Landroid/telephony/CarrierConfigManager;

    .line 218
    .local v2, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v2}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    .line 219
    .local v1, "b":Landroid/os/PersistableBundle;
    const-string/jumbo v4, "hide_ims_apn_bool"

    invoke-virtual {v1, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings_ex/ApnSettings;->mHideImsApn:Z

    .line 220
    const-string/jumbo v4, "allow_adding_apns_bool"

    invoke-virtual {v1, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings_ex/ApnSettings;->mAllowAddingApns:Z

    .line 221
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/ApnSettings;->mUserManager:Landroid/os/UserManager;

    .line 194
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 757
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    .line 758
    new-instance v0, Lcom/android/settings_ex/ApnSettings$2;

    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/ApnSettings$2;-><init>(Lcom/android/settings_ex/ApnSettings;Landroid/content/Context;)V

    .line 763
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e090a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 764
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 765
    return-object v0

    .line 767
    .end local v0    # "dialog":Landroid/app/ProgressDialog;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 583
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnSettings;->mUnavailable:Z

    if-nez v0, :cond_1

    .line 584
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnSettings;->mAllowAddingApns:Z

    if-eqz v0, :cond_0

    .line 586
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0902

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 585
    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 587
    const v1, 0x1080033

    .line 585
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 591
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e090b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 590
    const/4 v1, 0x2

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 592
    const v1, 0x1080055

    .line 590
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 595
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 582
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 289
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onDestroy()V

    .line 291
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 292
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ApnSettings;->removeDialog(I)V

    .line 293
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 294
    iput-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 295
    iput-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;

    .line 288
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 600
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 614
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 602
    :sswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/ApnSettings;->addNewApn()V

    .line 603
    return v1

    .line 606
    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings_ex/ApnSettings;->restoreDefaultApn()Z

    .line 607
    return v1

    .line 611
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->finish()V

    .line 612
    return v1

    .line 600
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 271
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onPause()V

    .line 273
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 274
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ApnSettings;->removeDialog(I)V

    .line 275
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 276
    iput-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 277
    iput-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;

    .line 280
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_1

    .line 281
    return-void

    .line 284
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 270
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 644
    const-string/jumbo v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreferenceChange(): Preference - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 645
    const-string/jumbo v2, ", newValue - "

    .line 644
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 645
    const-string/jumbo v2, ", newValue type - "

    .line 644
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 646
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 644
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 648
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/android/settings_ex/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 651
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 633
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 634
    .local v1, "pos":I
    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v3}, Lcom/android/settings_ex/ApnSettings;->getUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    int-to-long v4, v1

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 635
    .local v2, "url":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.EDIT"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/ApnSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    .end local v1    # "pos":I
    .end local v2    # "url":Landroid/net/Uri;
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 636
    :catch_0
    move-exception v0

    .line 637
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 248
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onResume()V

    .line 250
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 251
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ApnSettings;->removeDialog(I)V

    .line 252
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 253
    iput-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 254
    iput-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;

    .line 257
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_1

    .line 258
    return-void

    .line 261
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 263
    sget-boolean v0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v0, :cond_2

    .line 264
    invoke-direct {p0}, Lcom/android/settings_ex/ApnSettings;->fillList()V

    .line 266
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/ApnSettings;->mApnSettingsHidden:Z

    .line 247
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 242
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onStop()V

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/ApnSettings;->mApnSettingsHidden:Z

    .line 241
    return-void
.end method
