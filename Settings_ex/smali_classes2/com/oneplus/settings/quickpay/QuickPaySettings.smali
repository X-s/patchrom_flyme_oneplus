.class public Lcom/oneplus/settings/quickpay/QuickPaySettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "QuickPaySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/oneplus/settings/quickpay/QuickPayAnimPreference$OnPreferenceViewClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;
    }
.end annotation


# static fields
.field public static final CODE_REQUEST_FINGERPRINT:I = 0x1

.field private static final MY_USER_ID:I

.field public static final OP_HOME_LONG_ACTION_QUICKPAY:I = 0xb

.field public static final OP_QUICKPAY_DEFAULT_WAY:Ljava/lang/String; = "op_quickpay_default_way"

.field public static final OP_QUICKPAY_ENABLE:Ljava/lang/String; = "op_quickpay_enable"

.field public static final OP_QUICKPAY_SHOW:Ljava/lang/String; = "op_quickpay_show"

.field public static final sPayWaysKey:[Ljava/lang/String;

.field public static final sPayWaysValue:[I


# instance fields
.field private final KEY_FINGERPRINT_LONGPRESS_ACTION_FOR_QUICKPAY:Ljava/lang/String;

.field private final KEY_PREFERENCE_DIVIDER_LINE2:Ljava/lang/String;

.field private final KEY_QUICKPAY_INSTRUCTIONS:Ljava/lang/String;

.field private final KEY_QUICKPAY_SELECT_DEFAULT_WAY_CATEGORY:Ljava/lang/String;

.field private final KEY_QUICKPAY_UNINSTALL_APP_CATEGORY:Ljava/lang/String;

.field private final KEY_SWITCH_LOCKSCREEN:Ljava/lang/String;

.field private final KEY_SWITCH_UNLOCKSCREEN:Ljava/lang/String;

.field private final OP_FINGERPRINT_LONG_PRESS_ACTION:Ljava/lang/String;

.field private mActivity:Lcom/android/settings_ex/SettingsActivity;

.field private mAllPayWaysPreference:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/location/RadioButtonPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultLongPressOnHomeBehavior:I

.field private mFingerprintLongpressQuickpay:Landroid/support/v14/preference/SwitchPreference;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mHasFingerprint:Z

.field private mHomeKeyActionName:[Ljava/lang/String;

.field private mHomeKeyActionValue:[Ljava/lang/String;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mPayWaysKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPayWaysName:[Ljava/lang/String;

.field private mPayWaysNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPayWaysValueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mQuickPayAppsAddOrRemovedReceiver:Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;

.field private preference_divider_line2:Lcom/oneplus/settings/ui/OPPreferenceDivider;

.field private quickpay_instructions:Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;

.field private quickpay_select_default_way_category:Landroid/support/v7/preference/PreferenceCategory;

.field private quickpay_uninstall_app_category:Landroid/support/v7/preference/PreferenceCategory;

.field private switch_lockscreen:Landroid/support/v14/preference/SwitchPreference;

.field private switch_unlockscreen:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/quickpay/QuickPaySettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_unlockscreen:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/settings/quickpay/QuickPaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->updatePreferenceState()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/settings/quickpay/QuickPaySettings;Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->updateUnLockHomeAction(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->MY_USER_ID:I

    .line 70
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysKey:[Ljava/lang/String;

    .line 71
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysValue:[I

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 61
    const-string/jumbo v0, "op_fingerprint_long_press_action"

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->OP_FINGERPRINT_LONG_PRESS_ACTION:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, "op_fingerprint_longpress_action_for_quickpay"

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->KEY_FINGERPRINT_LONGPRESS_ACTION_FOR_QUICKPAY:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, "key_switch_lockscreen"

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->KEY_SWITCH_LOCKSCREEN:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, "key_switch_unlockscreen"

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->KEY_SWITCH_UNLOCKSCREEN:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, "key_quickpay_uninstall_app_category"

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->KEY_QUICKPAY_UNINSTALL_APP_CATEGORY:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "key_quickpay_select_default_way_category"

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->KEY_QUICKPAY_SELECT_DEFAULT_WAY_CATEGORY:Ljava/lang/String;

    .line 67
    const-string/jumbo v0, "key_quickpay_instructions"

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->KEY_QUICKPAY_INSTRUCTIONS:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, "preference_divider_line2"

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->KEY_PREFERENCE_DIVIDER_LINE2:Ljava/lang/String;

    .line 75
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    .line 88
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mAllPayWaysPreference:Ljava/util/List;

    .line 89
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    .line 90
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    .line 91
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    .line 52
    return-void
.end method

.method public static canShowQuickPay(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 440
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "op_quickpay_show"

    invoke-static {v5, v6, v7, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 441
    .local v3, "quickPayShow":I
    if-ne v3, v8, :cond_0

    .line 442
    return v8

    .line 444
    :cond_0
    const-string/jumbo v5, "com.tencent.mm"

    invoke-static {p0, v5}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 445
    .local v2, "installedWechat":Z
    const-string/jumbo v5, "com.eg.android.AlipayGphone"

    invoke-static {p0, v5}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 446
    .local v0, "installedAlipay":Z
    const-string/jumbo v5, "net.one97.paytm"

    invoke-static {p0, v5}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 447
    .local v1, "installedPaytm":Z
    if-nez v0, :cond_1

    if-nez v2, :cond_1

    if-eqz v1, :cond_2

    .line 448
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "op_quickpay_show"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v4

    .line 449
    .local v4, "ret":Z
    return v4

    .line 451
    .end local v4    # "ret":Z
    :cond_2
    return v7
.end method

.method private checkFingerPrint()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 152
    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v3, Lcom/oneplus/settings/quickpay/QuickPaySettings;->MY_USER_ID:I

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v1

    .line 153
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 154
    .local v0, "fingerprintCount":I
    if-lez v0, :cond_0

    .line 155
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHasFingerprint:Z

    .line 151
    :goto_0
    return-void

    .line 157
    :cond_0
    iput-boolean v4, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHasFingerprint:Z

    goto :goto_0
.end method

.method private getLongPressHomeActionIndexByValue(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 135
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionValue:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 136
    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionValue:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 137
    return v0

    .line 135
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static gotoQuickPaySettingsPage(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 461
    const/4 v1, 0x0

    .line 463
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.oneplus.action.QUICKPAY_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    .local v2, "intent":Landroid/content/Intent;
    :try_start_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "intent":Landroid/content/Intent;
    move-object v1, v2

    .line 460
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 465
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 466
    .end local v1    # "intent":Landroid/content/Intent;
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    const-string/jumbo v3, "QuickPaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No activity found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 465
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    move-object v1, v2

    .end local v2    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    goto :goto_1
.end method

.method private initHomeActionName()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings_ex/SettingsActivity;

    invoke-static {v0}, Lcom/oneplus/settings/OPButtonsSettings;->checkGMS(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionName:[Ljava/lang/String;

    .line 127
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionValue:[Ljava/lang/String;

    .line 124
    :goto_0
    return-void

    .line 129
    :cond_0
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionName:[Ljava/lang/String;

    .line 130
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionValue:[Ljava/lang/String;

    goto :goto_0
.end method

.method private initPayWayData()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 271
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 272
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 273
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 274
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings_ex/SettingsActivity;

    const-string/jumbo v1, "com.tencent.mm"

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    sget-object v1, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysKey:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    sget-object v1, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysValue:[I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    sget-object v1, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysKey:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    sget-object v1, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysValue:[I

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings_ex/SettingsActivity;

    const-string/jumbo v1, "com.eg.android.AlipayGphone"

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    sget-object v1, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysKey:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    sget-object v1, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysValue:[I

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    sget-object v1, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysKey:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    sget-object v1, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysValue:[I

    aget v1, v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings_ex/SettingsActivity;

    const-string/jumbo v1, "net.one97.paytm"

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    sget-object v1, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysKey:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    sget-object v1, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysValue:[I

    aget v1, v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_2
    return-void
.end method

.method private initPreference()V
    .locals 2

    .prologue
    .line 169
    const v0, 0x7f080054

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->addPreferencesFromResource(I)V

    .line 171
    const-string/jumbo v0, "key_switch_lockscreen"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_lockscreen:Landroid/support/v14/preference/SwitchPreference;

    .line 172
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_lockscreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 173
    const-string/jumbo v0, "key_switch_unlockscreen"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_unlockscreen:Landroid/support/v14/preference/SwitchPreference;

    .line 174
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_unlockscreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 175
    const-string/jumbo v0, "op_fingerprint_longpress_action_for_quickpay"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mFingerprintLongpressQuickpay:Landroid/support/v14/preference/SwitchPreference;

    .line 176
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mFingerprintLongpressQuickpay:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 178
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_lockscreen:Landroid/support/v14/preference/SwitchPreference;

    const v1, 0x7f0e040a

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 180
    const-string/jumbo v0, "key_switch_unlockscreen"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->removePreference(Ljava/lang/String;)V

    .line 186
    :goto_0
    const-string/jumbo v0, "key_quickpay_uninstall_app_category"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_uninstall_app_category:Landroid/support/v7/preference/PreferenceCategory;

    .line 187
    const-string/jumbo v0, "key_quickpay_select_default_way_category"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_select_default_way_category:Landroid/support/v7/preference/PreferenceCategory;

    .line 188
    const-string/jumbo v0, "key_quickpay_instructions"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_instructions:Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;

    .line 189
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_instructions:Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->setViewOnClick(Lcom/oneplus/settings/quickpay/QuickPayAnimPreference$OnPreferenceViewClickListener;)V

    .line 190
    const-string/jumbo v0, "preference_divider_line2"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPPreferenceDivider;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->preference_divider_line2:Lcom/oneplus/settings/ui/OPPreferenceDivider;

    .line 168
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_lockscreen:Landroid/support/v14/preference/SwitchPreference;

    const v1, 0x7f0e03ad

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 183
    const-string/jumbo v0, "op_fingerprint_longpress_action_for_quickpay"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private refreshQuickPayEnableUI(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 298
    const-string/jumbo v0, "preference_divider_line2"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->removePreference(Ljava/lang/String;)V

    .line 299
    if-nez p1, :cond_0

    .line 300
    const-string/jumbo v0, "key_quickpay_select_default_way_category"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->removePreference(Ljava/lang/String;)V

    .line 301
    const-string/jumbo v0, "key_quickpay_uninstall_app_category"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->removePreference(Ljava/lang/String;)V

    .line 297
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 304
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_select_default_way_category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 305
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->preference_divider_line2:Lcom/oneplus/settings/ui/OPPreferenceDivider;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 307
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_uninstall_app_category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0
.end method

.method private showConfirmChangeHomeAction(ZI)V
    .locals 7
    .param p1, "state"    # Z
    .param p2, "longPressHomeActionIndex"    # I

    .prologue
    const/4 v6, 0x0

    .line 359
    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionName:[Ljava/lang/String;

    array-length v3, v3

    if-lt p2, v3, :cond_0

    .line 360
    const-string/jumbo v3, "QuickPaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "longPressHomeActionIndex is out of max length.longPressHomeActionIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return-void

    .line 363
    :cond_0
    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionName:[Ljava/lang/String;

    aget-object v2, v3, p2

    .line 364
    .local v2, "longPressHomeActionName":Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings_ex/SettingsActivity;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 365
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings_ex/SettingsActivity;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v6

    const v5, 0x7f0e03b4

    invoke-virtual {v3, v5, v4}, Lcom/android/settings_ex/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 366
    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings_ex/SettingsActivity;

    const v4, 0x7f0e04a8

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/oneplus/settings/quickpay/QuickPaySettings$1;

    invoke-direct {v4, p0, p1}, Lcom/oneplus/settings/quickpay/QuickPaySettings$1;-><init>(Lcom/oneplus/settings/quickpay/QuickPaySettings;Z)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 374
    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings_ex/SettingsActivity;

    const v4, 0x7f0e04a9

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/oneplus/settings/quickpay/QuickPaySettings$2;

    invoke-direct {v4, p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings$2;-><init>(Lcom/oneplus/settings/quickpay/QuickPaySettings;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 380
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 381
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 382
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 358
    return-void
.end method

.method private updateLockHomeAction(Z)V
    .locals 5
    .param p1, "state"    # Z

    .prologue
    .line 400
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    .line 401
    .local v2, "value":I
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "op_quickpay_enable"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    .line 402
    .local v1, "ret":Z
    const/4 v0, 0x0

    .line 403
    .local v0, "enable":Z
    sget-object v3, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 404
    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_unlockscreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 408
    .end local v0    # "enable":Z
    :goto_1
    invoke-direct {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->refreshQuickPayEnableUI(Z)V

    .line 399
    return-void

    .line 400
    .end local v1    # "ret":Z
    .end local v2    # "value":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "value":I
    goto :goto_0

    .line 404
    .restart local v0    # "enable":Z
    .restart local v1    # "ret":Z
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 406
    :cond_2
    if-nez p1, :cond_3

    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mFingerprintLongpressQuickpay:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .local v0, "enable":Z
    goto :goto_1

    .local v0, "enable":Z
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private updatePreferenceState()V
    .locals 15

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->initPayWayData()V

    .line 195
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10e0062

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    iput v11, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mDefaultLongPressOnHomeBehavior:I

    .line 196
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "op_quickpay_default_way"

    const/4 v13, -0x1

    const/4 v14, 0x0

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 197
    .local v0, "defaultQuickPayWay":I
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "key_home_long_press_action"

    iget v13, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mDefaultLongPressOnHomeBehavior:I

    const/4 v14, 0x0

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 198
    .local v6, "longPressHomeAction":I
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "op_fingerprint_long_press_action"

    iget v13, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mDefaultLongPressOnHomeBehavior:I

    const/4 v14, 0x0

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 199
    .local v5, "longPressFingerprintAction":I
    iget-object v11, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_select_default_way_category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v11}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 200
    iget-object v11, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mAllPayWaysPreference:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 201
    iget-object v11, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_7

    .line 202
    const-string/jumbo v11, "key_quickpay_uninstall_app_category"

    invoke-virtual {p0, v11}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->removePreference(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_select_default_way_category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 204
    const/4 v4, 0x0

    .line 205
    .local v4, "isChecked":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v11, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_1

    .line 206
    new-instance v8, Lcom/android/settings_ex/location/RadioButtonPreference;

    iget-object v11, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings_ex/SettingsActivity;

    invoke-direct {v8, v11}, Lcom/android/settings_ex/location/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 207
    .local v8, "p":Lcom/android/settings_ex/location/RadioButtonPreference;
    iget-object v11, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/android/settings_ex/location/RadioButtonPreference;->setKey(Ljava/lang/String;)V

    .line 208
    iget-object v11, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v8, v11}, Lcom/android/settings_ex/location/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v11, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v0, v11, :cond_0

    .line 210
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 211
    const/4 v4, 0x1

    .line 213
    :cond_0
    invoke-virtual {v8, p0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 214
    iget-object v11, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mAllPayWaysPreference:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v11, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_select_default_way_category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v11, v8}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 205
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 217
    .end local v8    # "p":Lcom/android/settings_ex/location/RadioButtonPreference;
    :cond_1
    iget-object v11, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mAllPayWaysPreference:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_2

    if-eqz v4, :cond_6

    .line 227
    .end local v3    # "i":I
    .end local v4    # "isChecked":Z
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "op_quickpay_enable"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 228
    .local v9, "quickPayState":I
    const/4 v11, 0x1

    if-ne v9, v11, :cond_9

    .line 229
    iget-boolean v11, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHasFingerprint:Z

    if-nez v11, :cond_8

    .line 230
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 231
    const-string/jumbo v12, "op_quickpay_enable"

    const/4 v13, 0x0

    .line 230
    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 232
    iget-object v11, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_lockscreen:Landroid/support/v14/preference/SwitchPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 233
    const/4 v9, 0x0

    .line 241
    :goto_2
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "buttons_show_on_screen_navkeys"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_a

    const/4 v7, 0x1

    .line 243
    .local v7, "onScreenNavKeysEnabled":Z
    :goto_3
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "buttons_force_home_enabled"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_b

    const/4 v2, 0x1

    .line 245
    .local v2, "forceHomeEnabled":Z
    :goto_4
    if-eqz v7, :cond_c

    if-eqz v7, :cond_d

    move v10, v2

    .line 246
    :goto_5
    const/4 v1, 0x0

    .line 247
    .local v1, "enable":Z
    iget-object v11, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_lockscreen:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v11, :cond_3

    sget-object v11, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v11}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 258
    :cond_3
    :goto_6
    iget-object v11, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mFingerprintLongpressQuickpay:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v11, :cond_5

    sget-object v11, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v11}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 259
    const/16 v11, 0xb

    if-ne v5, v11, :cond_13

    .line 260
    iget-object v11, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mFingerprintLongpressQuickpay:Landroid/support/v14/preference/SwitchPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 264
    :goto_7
    iget-object v11, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mFingerprintLongpressQuickpay:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v11}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v11

    if-nez v11, :cond_4

    const/4 v11, 0x1

    if-ne v9, v11, :cond_14

    :cond_4
    const/4 v1, 0x1

    .line 266
    :cond_5
    :goto_8
    invoke-direct {p0, v1}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->refreshQuickPayEnableUI(Z)V

    .line 193
    return-void

    .line 218
    .end local v1    # "enable":Z
    .end local v2    # "forceHomeEnabled":Z
    .end local v7    # "onScreenNavKeysEnabled":Z
    .end local v9    # "quickPayState":I
    .restart local v3    # "i":I
    .restart local v4    # "isChecked":Z
    :cond_6
    iget-object v11, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mAllPayWaysPreference:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings_ex/location/RadioButtonPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 219
    const/4 v11, -0x1

    if-ne v0, v11, :cond_2

    .line 220
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "op_quickpay_default_way"

    iget-object v11, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    const/4 v14, 0x0

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v12, v13, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 224
    .end local v3    # "i":I
    .end local v4    # "isChecked":Z
    :cond_7
    const-string/jumbo v11, "key_quickpay_select_default_way_category"

    invoke-virtual {p0, v11}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->removePreference(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_uninstall_app_category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_1

    .line 235
    .restart local v9    # "quickPayState":I
    :cond_8
    iget-object v11, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_lockscreen:Landroid/support/v14/preference/SwitchPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_2

    .line 238
    :cond_9
    iget-object v11, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_lockscreen:Landroid/support/v14/preference/SwitchPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_2

    .line 241
    :cond_a
    const/4 v7, 0x0

    .restart local v7    # "onScreenNavKeysEnabled":Z
    goto/16 :goto_3

    .line 243
    :cond_b
    const/4 v2, 0x0

    .restart local v2    # "forceHomeEnabled":Z
    goto/16 :goto_4

    .line 245
    :cond_c
    const/4 v10, 0x1

    .local v10, "solidHomeButtonEnabled":Z
    goto/16 :goto_5

    .end local v10    # "solidHomeButtonEnabled":Z
    :cond_d
    const/4 v10, 0x0

    .restart local v10    # "solidHomeButtonEnabled":Z
    goto/16 :goto_5

    .line 248
    .end local v10    # "solidHomeButtonEnabled":Z
    .restart local v1    # "enable":Z
    :cond_e
    const/16 v11, 0xb

    if-ne v6, v11, :cond_11

    if-eqz v10, :cond_11

    .line 249
    iget-object v11, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_unlockscreen:Landroid/support/v14/preference/SwitchPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 256
    :cond_f
    :goto_9
    iget-object v11, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_unlockscreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v11}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v11

    if-nez v11, :cond_10

    const/4 v11, 0x1

    if-ne v9, v11, :cond_12

    :cond_10
    const/4 v1, 0x1

    goto/16 :goto_6

    .line 251
    :cond_11
    iget-object v11, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_unlockscreen:Landroid/support/v14/preference/SwitchPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 252
    if-nez v10, :cond_f

    goto :goto_9

    .line 256
    :cond_12
    const/4 v1, 0x0

    goto/16 :goto_6

    .line 262
    :cond_13
    iget-object v11, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mFingerprintLongpressQuickpay:Landroid/support/v14/preference/SwitchPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_7

    .line 264
    :cond_14
    const/4 v1, 0x0

    goto/16 :goto_8
.end method

.method private updateUnLockFingerprintLongpressAction(Z)V
    .locals 5
    .param p1, "state"    # Z

    .prologue
    .line 386
    if-eqz p1, :cond_0

    const/16 v2, 0xb

    .line 387
    .local v2, "value":I
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "op_fingerprint_long_press_action"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    .line 388
    .local v1, "ret":Z
    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_lockscreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 389
    .local v0, "enable":Z
    :goto_1
    invoke-direct {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->refreshQuickPayEnableUI(Z)V

    .line 385
    return-void

    .line 386
    .end local v0    # "enable":Z
    .end local v1    # "ret":Z
    .end local v2    # "value":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "value":I
    goto :goto_0

    .line 388
    .restart local v1    # "ret":Z
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private updateUnLockHomeAction(Z)V
    .locals 5
    .param p1, "state"    # Z

    .prologue
    .line 393
    if-eqz p1, :cond_0

    const/16 v2, 0xb

    .line 394
    .local v2, "value":I
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "key_home_long_press_action"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    .line 395
    .local v1, "ret":Z
    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_lockscreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 396
    .local v0, "enable":Z
    :goto_1
    invoke-direct {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->refreshQuickPayEnableUI(Z)V

    .line 392
    return-void

    .line 393
    .end local v0    # "enable":Z
    .end local v1    # "ret":Z
    .end local v2    # "value":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "value":I
    goto :goto_0

    .line 395
    .restart local v1    # "ret":Z
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 472
    const/16 v0, 0x270f

    return v0
.end method

.method public gotoFingerprintEnrollIntroduction(I)V
    .locals 3
    .param p1, "requstCode"    # I

    .prologue
    .line 412
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 413
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings_ex"

    const-class v2, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    invoke-virtual {p0, v0, p1}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 411
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings_ex/SettingsActivity;

    .line 121
    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->initHomeActionName()V

    .line 118
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 419
    packed-switch p1, :pswitch_data_0

    .line 431
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 418
    return-void

    .line 421
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->checkFingerPrint()V

    .line 422
    iget-boolean v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHasFingerprint:Z

    if-eqz v1, :cond_0

    .line 423
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "op_quickpay_enable"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 424
    .local v0, "ret":Z
    invoke-direct {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->refreshQuickPayEnableUI(Z)V

    goto :goto_0

    .line 419
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 101
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    .line 102
    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->initHomeActionName()V

    .line 103
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 100
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 111
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 113
    new-instance v0, Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;-><init>(Lcom/oneplus/settings/quickpay/QuickPaySettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickPayAppsAddOrRemovedReceiver:Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;

    .line 114
    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->initPreference()V

    .line 107
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_instructions:Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->stopAnim()V

    .line 164
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickPayAppsAddOrRemovedReceiver:Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 165
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 162
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 331
    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_lockscreen:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_2

    .line 332
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 333
    .local v2, "state":Z
    if-eqz v2, :cond_0

    iget-boolean v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHasFingerprint:Z

    if-eqz v3, :cond_1

    .line 337
    :cond_0
    invoke-direct {p0, v2}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->updateLockHomeAction(Z)V

    .line 338
    return v7

    .line 334
    :cond_1
    invoke-virtual {p0, v7}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->gotoFingerprintEnrollIntroduction(I)V

    .line 335
    return v6

    .line 339
    .end local v2    # "state":Z
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_unlockscreen:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_4

    .line 340
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 341
    .restart local v2    # "state":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "key_home_long_press_action"

    iget v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mDefaultLongPressOnHomeBehavior:I

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 342
    .local v1, "longPressHomeAction":I
    invoke-direct {p0, v1}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getLongPressHomeActionIndexByValue(I)I

    move-result v0

    .line 343
    .local v0, "index":I
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 344
    invoke-direct {p0, v2, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->showConfirmChangeHomeAction(ZI)V

    .line 345
    return v6

    .line 347
    :cond_3
    invoke-direct {p0, v2}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->updateUnLockHomeAction(Z)V

    .line 348
    return v7

    .line 350
    .end local v0    # "index":I
    .end local v1    # "longPressHomeAction":I
    .end local v2    # "state":Z
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_4
    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mFingerprintLongpressQuickpay:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_5

    .line 351
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 352
    .restart local v2    # "state":Z
    invoke-direct {p0, v2}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->updateUnLockFingerprintLongpressAction(Z)V

    .line 353
    return v7

    .line 355
    .end local v2    # "state":Z
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_5
    return v6
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 10
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 314
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, "key":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 316
    iget-object v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 317
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "op_quickpay_default_way"

    iget-object v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 318
    iget-object v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mAllPayWaysPreference:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "p$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/location/RadioButtonPreference;

    .line 319
    .local v2, "p":Lcom/android/settings_ex/location/RadioButtonPreference;
    invoke-virtual {v2, v8}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_1

    .end local v2    # "p":Lcom/android/settings_ex/location/RadioButtonPreference;
    :cond_0
    move-object v4, p1

    .line 321
    check-cast v4, Lcom/android/settings_ex/location/RadioButtonPreference;

    .line 322
    .local v4, "rbp":Lcom/android/settings_ex/location/RadioButtonPreference;
    invoke-virtual {v4, v9}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 323
    return v9

    .line 315
    .end local v3    # "p$iterator":Ljava/util/Iterator;
    .end local v4    # "rbp":Lcom/android/settings_ex/location/RadioButtonPreference;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    :cond_2
    return v8
.end method

.method public onPreferenceViewClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 477
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_instructions:Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->playOrStopAnim()V

    .line 476
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 145
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 146
    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->checkFingerPrint()V

    .line 147
    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->updatePreferenceState()V

    .line 148
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickPayAppsAddOrRemovedReceiver:Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;

    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    return-void
.end method
