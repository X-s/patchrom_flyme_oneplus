.class public Lcom/android/settings_ex/ApnSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ApnSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ApnSettings$2;,
        Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;,
        Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;
    }
.end annotation


# static fields
.field public static final APN_ID:Ljava/lang/String; = "apn_id"

.field private static final APN_INDEX:I = 0x2

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

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 98
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 118
    new-instance v0, Lcom/android/settings_ex/ApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ApnSettings$1;-><init>(Lcom/android/settings_ex/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 476
    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p0, "x0"    # Landroid/content/Intent;

    .prologue
    .line 66
    invoke-static {p0}, Lcom/android/settings_ex/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnMode:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 66
    sput-boolean p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/ApnSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ApnSettings;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings_ex/ApnSettings;->fillList()V

    return-void
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/settings_ex/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/ApnSettings;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ApnSettings;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ApnSettings;->getUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
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
    .line 335
    .local p2, "mnoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    .local p3, "mvnoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    if-eqz p4, :cond_1

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 336
    invoke-static {p4, p5, p6}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    iput-object p5, p0, Lcom/android/settings_ex/ApnSettings;->mMvnoType:Ljava/lang/String;

    .line 340
    iput-object p6, p0, Lcom/android/settings_ex/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addNewApn()V
    .locals 4

    .prologue
    .line 378
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 379
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings_ex/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 381
    .local v1, "subId":I
    :goto_0
    const-string v2, "sub_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 382
    iget-object v2, p0, Lcom/android/settings_ex/ApnSettings;->mMvnoType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 383
    const-string v2, "mvno_type"

    iget-object v3, p0, Lcom/android/settings_ex/ApnSettings;->mMvnoType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    const-string v2, "mvno_match_data"

    iget-object v3, p0, Lcom/android/settings_ex/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 387
    return-void

    .line 379
    .end local v1    # "subId":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private fillList()V
    .locals 33

    .prologue
    .line 241
    const/16 v24, 0x0

    .line 242
    .local v24, "isSelectedKeyMatch":Z
    const-string v2, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/telephony/TelephonyManager;

    .line 243
    .local v31, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v2, :cond_3

    const-string v26, ""

    .line 245
    .local v26, "mccmnc":Ljava/lang/String;
    :goto_0
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mccmnc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" AND NOT (type=\'ia\' AND (apn=\"\" OR apn IS NULL))"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 250
    .local v5, "where":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v13, "_id"

    aput-object v13, v4, v6

    const/4 v6, 0x1

    const-string v13, "name"

    aput-object v13, v4, v6

    const/4 v6, 0x2

    const-string v13, "apn"

    aput-object v13, v4, v6

    const/4 v6, 0x3

    const-string v13, "type"

    aput-object v13, v4, v6

    const/4 v6, 0x4

    const-string v13, "mvno_type"

    aput-object v13, v4, v6

    const/4 v6, 0x5

    const-string v13, "mvno_match_data"

    aput-object v13, v4, v6

    const/4 v6, 0x6

    const-string v13, "read_only"

    aput-object v13, v4, v6

    const/4 v6, 0x0

    const-string v7, "name ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 254
    .local v22, "cursor":Landroid/database/Cursor;
    if-eqz v22, :cond_b

    .line 255
    const/4 v10, 0x0

    .line 256
    .local v10, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ApnSettings;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v2, :cond_0

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ApnSettings;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v10

    .line 260
    :cond_0
    const-string v2, "apn_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ApnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/PreferenceGroup;

    .line 261
    .local v21, "apnList":Landroid/preference/PreferenceGroup;
    invoke-virtual/range {v21 .. v21}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 263
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v8, "mnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v9, "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v15, "mnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v16, "mvnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/ApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 269
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    .line 272
    :goto_1
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_7

    .line 273
    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 274
    .local v27, "name":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 275
    .local v20, "apn":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 276
    .local v25, "key":Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 277
    .local v32, "type":Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 278
    .local v11, "mvnoType":Ljava/lang/String;
    const/4 v2, 0x5

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 279
    .local v12, "mvnoMatchData":Ljava/lang/String;
    const/4 v2, 0x6

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/16 v29, 0x1

    .line 281
    .local v29, "readOnly":Z
    :goto_2
    new-instance v7, Lcom/android/settings_ex/ApnPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/android/settings_ex/ApnPreference;-><init>(Landroid/content/Context;)V

    .line 283
    .local v7, "pref":Lcom/android/settings_ex/ApnPreference;
    move/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/android/settings_ex/ApnPreference;->setApnReadOnly(Z)V

    .line 284
    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Lcom/android/settings_ex/ApnPreference;->setKey(Ljava/lang/String;)V

    .line 285
    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Lcom/android/settings_ex/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 286
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/android/settings_ex/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 287
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Lcom/android/settings_ex/ApnPreference;->setPersistent(Z)V

    .line 288
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/android/settings_ex/ApnPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 290
    if-eqz v32, :cond_1

    const-string v2, "mms"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "ia"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_1
    const/16 v30, 0x1

    .line 292
    .local v30, "selectable":Z
    :goto_3
    move/from16 v0, v30

    invoke-virtual {v7, v0}, Lcom/android/settings_ex/ApnPreference;->setSelectable(Z)V

    .line 293
    if-eqz v30, :cond_6

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ApnSettings;->mSelectedKey:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 295
    invoke-virtual {v7}, Lcom/android/settings_ex/ApnPreference;->setChecked()V

    .line 296
    const/16 v24, 0x1

    .line 297
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "find select key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " apn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v6, p0

    .line 299
    invoke-direct/range {v6 .. v12}, Lcom/android/settings_ex/ApnSettings;->addApnToList(Lcom/android/settings_ex/ApnPreference;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :goto_4
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 243
    .end local v5    # "where":Ljava/lang/String;
    .end local v7    # "pref":Lcom/android/settings_ex/ApnPreference;
    .end local v8    # "mnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    .end local v9    # "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    .end local v10    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v11    # "mvnoType":Ljava/lang/String;
    .end local v12    # "mvnoMatchData":Ljava/lang/String;
    .end local v15    # "mnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    .end local v16    # "mvnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    .end local v20    # "apn":Ljava/lang/String;
    .end local v21    # "apnList":Landroid/preference/PreferenceGroup;
    .end local v22    # "cursor":Landroid/database/Cursor;
    .end local v25    # "key":Ljava/lang/String;
    .end local v26    # "mccmnc":Ljava/lang/String;
    .end local v27    # "name":Ljava/lang/String;
    .end local v29    # "readOnly":Z
    .end local v30    # "selectable":Z
    .end local v32    # "type":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getIccOperatorNumericForData(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    .line 279
    .restart local v5    # "where":Ljava/lang/String;
    .restart local v8    # "mnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    .restart local v9    # "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    .restart local v10    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .restart local v11    # "mvnoType":Ljava/lang/String;
    .restart local v12    # "mvnoMatchData":Ljava/lang/String;
    .restart local v15    # "mnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    .restart local v16    # "mvnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    .restart local v20    # "apn":Ljava/lang/String;
    .restart local v21    # "apnList":Landroid/preference/PreferenceGroup;
    .restart local v22    # "cursor":Landroid/database/Cursor;
    .restart local v25    # "key":Ljava/lang/String;
    .restart local v26    # "mccmnc":Ljava/lang/String;
    .restart local v27    # "name":Ljava/lang/String;
    .restart local v32    # "type":Ljava/lang/String;
    :cond_4
    const/16 v29, 0x0

    goto/16 :goto_2

    .line 290
    .restart local v7    # "pref":Lcom/android/settings_ex/ApnPreference;
    .restart local v29    # "readOnly":Z
    :cond_5
    const/16 v30, 0x0

    goto :goto_3

    .restart local v30    # "selectable":Z
    :cond_6
    move-object/from16 v13, p0

    move-object v14, v7

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    .line 301
    invoke-direct/range {v13 .. v19}, Lcom/android/settings_ex/ApnSettings;->addApnToList(Lcom/android/settings_ex/ApnPreference;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 305
    .end local v7    # "pref":Lcom/android/settings_ex/ApnPreference;
    .end local v11    # "mvnoType":Ljava/lang/String;
    .end local v12    # "mvnoMatchData":Ljava/lang/String;
    .end local v20    # "apn":Ljava/lang/String;
    .end local v25    # "key":Ljava/lang/String;
    .end local v27    # "name":Ljava/lang/String;
    .end local v29    # "readOnly":Z
    .end local v30    # "selectable":Z
    .end local v32    # "type":Ljava/lang/String;
    :cond_7
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 307
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 308
    move-object v8, v9

    .line 309
    move-object/from16 v15, v16

    .line 314
    :cond_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/preference/Preference;

    .line 315
    .local v28, "preference":Landroid/preference/Preference;
    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 319
    .end local v28    # "preference":Landroid/preference/Preference;
    :cond_9
    if-nez v24, :cond_a

    invoke-virtual/range {v21 .. v21}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-lez v2, :cond_a

    .line 320
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings_ex/ApnPreference;

    .line 321
    .restart local v7    # "pref":Lcom/android/settings_ex/ApnPreference;
    invoke-virtual {v7}, Lcom/android/settings_ex/ApnPreference;->setChecked()V

    .line 322
    invoke-virtual {v7}, Lcom/android/settings_ex/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings_ex/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 323
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set key to  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Lcom/android/settings_ex/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .end local v7    # "pref":Lcom/android/settings_ex/ApnPreference;
    :cond_a
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_6
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/preference/Preference;

    .line 327
    .restart local v28    # "preference":Landroid/preference/Preference;
    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_6

    .line 330
    .end local v8    # "mnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    .end local v9    # "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    .end local v10    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v15    # "mnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    .end local v16    # "mvnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    .end local v21    # "apnList":Landroid/preference/PreferenceGroup;
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v28    # "preference":Landroid/preference/Preference;
    :cond_b
    return-void
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 138
    const-string v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 140
    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 142
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 418
    const/4 v7, 0x0

    .line 420
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings_ex/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/ApnSettings;->getUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 422
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 423
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 424
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 426
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 427
    return-object v7
.end method

.method private getUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 509
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 510
    .local v0, "subId":I
    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 514
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/subId/"

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

.method private restoreDefaultApn()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 431
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ApnSettings;->showDialog(I)V

    .line 432
    sput-boolean v3, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnMode:Z

    .line 434
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;

    if-nez v0, :cond_0

    .line 435
    new-instance v0, Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings_ex/ApnSettings;Lcom/android/settings_ex/ApnSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    .line 440
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Restore default APN Handler: Process Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 442
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 443
    new-instance v0, Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;

    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;-><init>(Lcom/android/settings_ex/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;

    .line 447
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;->sendEmptyMessage(I)Z

    .line 449
    return v3
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 409
    iput-object p1, p0, Lcom/android/settings_ex/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 410
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 412
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 413
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "apn_id"

    iget-object v3, p0, Lcom/android/settings_ex/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    sget-object v2, Lcom/android/settings_ex/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/android/settings_ex/ApnSettings;->getUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 415
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 148
    const/16 v0, 0xc

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 178
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 180
    invoke-static {}, Landroid/util/OpFeatures;->isBlackModeOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 182
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x3030415

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTheme(I)V

    .line 187
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 188
    .local v0, "empty":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 189
    const v1, 0x7f0c0869

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 190
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mUm:Landroid/os/UserManager;

    const-string v2, "no_config_mobile_networks"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_3

    .line 195
    :cond_1
    iput-boolean v4, p0, Lcom/android/settings_ex/ApnSettings;->mUnavailable:Z

    .line 196
    new-instance v1, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ApnSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 203
    :goto_1
    return-void

    .line 184
    .end local v0    # "empty":Landroid/widget/TextView;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x3030429

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0

    .line 200
    .restart local v0    # "empty":Landroid/widget/TextView;
    :cond_3
    const v1, 0x7f080008

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ApnSettings;->addPreferencesFromResource(I)V

    .line 202
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 159
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "subscription"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 163
    .local v1, "subId":I
    const-string v2, "user"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/settings_ex/ApnSettings;->mUm:Landroid/os/UserManager;

    .line 165
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/settings_ex/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 168
    iget-object v2, p0, Lcom/android/settings_ex/ApnSettings;->mUm:Landroid/os/UserManager;

    const-string v3, "no_config_mobile_networks"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 169
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnSettings;->setHasOptionsMenu(Z)V

    .line 172
    :cond_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 173
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ApnSettings;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 174
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 499
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    .line 500
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 501
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c06dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 502
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 505
    .end local v0    # "dialog":Landroid/app/ProgressDialog;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 349
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnSettings;->mUnavailable:Z

    if-nez v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c06d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v2, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020034

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 355
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c06de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080055

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 360
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 361
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 233
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 235
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 238
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 365
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 374
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 367
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/ApnSettings;->addNewApn()V

    goto :goto_0

    .line 371
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings_ex/ApnSettings;->restoreDefaultApn()Z

    goto :goto_0

    .line 365
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 222
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 224
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 398
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange(): Preference - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 402
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/android/settings_ex/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 405
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 391
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 392
    .local v0, "pos":I
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v0

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 393
    .local v1, "url":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 394
    const/4 v2, 0x1

    return v2
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 207
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 209
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 215
    sget-boolean v0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v0, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/android/settings_ex/ApnSettings;->fillList()V

    goto :goto_0
.end method
