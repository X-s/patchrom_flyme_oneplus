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
.field private final KEY_PREFERENCE_DIVIDER_LINE2:Ljava/lang/String;

.field private final KEY_QUICKPAY_INSTRUCTIONS:Ljava/lang/String;

.field private final KEY_QUICKPAY_SELECT_DEFAULT_WAY_CATEGORY:Ljava/lang/String;

.field private final KEY_QUICKPAY_UNINSTALL_APP_CATEGORY:Ljava/lang/String;

.field private final KEY_SWITCH_LOCKSCREEN:Ljava/lang/String;

.field private final KEY_SWITCH_UNLOCKSCREEN:Ljava/lang/String;

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

    .line 69
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysKey:[Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a009b

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

    .line 62
    const-string/jumbo v0, "key_switch_lockscreen"

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->KEY_SWITCH_LOCKSCREEN:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, "key_switch_unlockscreen"

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->KEY_SWITCH_UNLOCKSCREEN:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, "key_quickpay_uninstall_app_category"

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->KEY_QUICKPAY_UNINSTALL_APP_CATEGORY:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, "key_quickpay_select_default_way_category"

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->KEY_QUICKPAY_SELECT_DEFAULT_WAY_CATEGORY:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "key_quickpay_instructions"

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->KEY_QUICKPAY_INSTRUCTIONS:Ljava/lang/String;

    .line 67
    const-string/jumbo v0, "preference_divider_line2"

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->KEY_PREFERENCE_DIVIDER_LINE2:Ljava/lang/String;

    .line 74
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    .line 86
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mAllPayWaysPreference:Ljava/util/List;

    .line 87
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    .line 88
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    .line 89
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

    .line 394
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "op_quickpay_show"

    invoke-static {v5, v6, v7, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 395
    .local v3, "quickPayShow":I
    if-ne v3, v8, :cond_0

    .line 396
    return v8

    .line 398
    :cond_0
    const-string/jumbo v5, "com.tencent.mm"

    invoke-static {p0, v5}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 399
    .local v2, "installedWechat":Z
    const-string/jumbo v5, "com.eg.android.AlipayGphone"

    invoke-static {p0, v5}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 400
    .local v0, "installedAlipay":Z
    const-string/jumbo v5, "net.one97.paytm"

    invoke-static {p0, v5}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 401
    .local v1, "installedPaytm":Z
    if-nez v0, :cond_1

    if-nez v2, :cond_1

    if-eqz v1, :cond_2

    .line 402
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "op_quickpay_show"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v4

    .line 403
    .local v4, "ret":Z
    return v4

    .line 405
    .end local v4    # "ret":Z
    :cond_2
    return v7
.end method

.method private checkFingerPrint()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 150
    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v3, Lcom/oneplus/settings/quickpay/QuickPaySettings;->MY_USER_ID:I

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v1

    .line 151
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 152
    .local v0, "fingerprintCount":I
    if-lez v0, :cond_0

    .line 153
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHasFingerprint:Z

    .line 149
    :goto_0
    return-void

    .line 155
    :cond_0
    iput-boolean v4, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHasFingerprint:Z

    goto :goto_0
.end method

.method private getLongPressHomeActionIndexByValue(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 133
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionValue:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionValue:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 135
    return v0

    .line 133
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static gotoQuickPaySettingsPage(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 415
    const/4 v1, 0x0

    .line 417
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.oneplus.action.QUICKPAY_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    .local v2, "intent":Landroid/content/Intent;
    :try_start_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "intent":Landroid/content/Intent;
    move-object v1, v2

    .line 414
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 419
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 420
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

    .line 419
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
    .line 123
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings_ex/SettingsActivity;

    invoke-static {v0}, Lcom/oneplus/settings/OPButtonsSettings;->checkGMS(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionName:[Ljava/lang/String;

    .line 125
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionValue:[Ljava/lang/String;

    .line 122
    :goto_0
    return-void

    .line 127
    :cond_0
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0095

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionName:[Ljava/lang/String;

    .line 128
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0096

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

    .line 245
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 246
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 247
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 248
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings_ex/SettingsActivity;

    const-string/jumbo v1, "com.tencent.mm"

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    sget-object v1, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysKey:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    sget-object v1, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysValue:[I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    sget-object v1, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysKey:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    sget-object v1, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysValue:[I

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings_ex/SettingsActivity;

    const-string/jumbo v1, "com.eg.android.AlipayGphone"

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    sget-object v1, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysKey:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    sget-object v1, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysValue:[I

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    sget-object v1, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysKey:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    sget-object v1, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysValue:[I

    aget v1, v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings_ex/SettingsActivity;

    const-string/jumbo v1, "net.one97.paytm"

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    sget-object v1, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysKey:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    sget-object v1, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysValue:[I

    aget v1, v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_2
    return-void
.end method

.method private initPreference()V
    .locals 1

    .prologue
    .line 167
    const v0, 0x7f080053

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->addPreferencesFromResource(I)V

    .line 168
    const-string/jumbo v0, "key_switch_lockscreen"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_lockscreen:Landroid/support/v14/preference/SwitchPreference;

    .line 169
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_lockscreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 170
    const-string/jumbo v0, "key_switch_unlockscreen"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_unlockscreen:Landroid/support/v14/preference/SwitchPreference;

    .line 171
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_unlockscreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 172
    const-string/jumbo v0, "key_quickpay_uninstall_app_category"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_uninstall_app_category:Landroid/support/v7/preference/PreferenceCategory;

    .line 173
    const-string/jumbo v0, "key_quickpay_select_default_way_category"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_select_default_way_category:Landroid/support/v7/preference/PreferenceCategory;

    .line 174
    const-string/jumbo v0, "key_quickpay_instructions"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_instructions:Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;

    .line 175
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_instructions:Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->setViewOnClick(Lcom/oneplus/settings/quickpay/QuickPayAnimPreference$OnPreferenceViewClickListener;)V

    .line 176
    const-string/jumbo v0, "preference_divider_line2"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPPreferenceDivider;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->preference_divider_line2:Lcom/oneplus/settings/ui/OPPreferenceDivider;

    .line 166
    return-void
.end method

.method private refreshQuickPayEnableUI(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 272
    const-string/jumbo v0, "preference_divider_line2"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->removePreference(Ljava/lang/String;)V

    .line 273
    if-nez p1, :cond_0

    .line 274
    const-string/jumbo v0, "key_quickpay_select_default_way_category"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->removePreference(Ljava/lang/String;)V

    .line 275
    const-string/jumbo v0, "key_quickpay_uninstall_app_category"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->removePreference(Ljava/lang/String;)V

    .line 271
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 278
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_select_default_way_category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 279
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->preference_divider_line2:Lcom/oneplus/settings/ui/OPPreferenceDivider;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 281
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

    .line 329
    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionName:[Ljava/lang/String;

    aget-object v2, v3, p2

    .line 330
    .local v2, "longPressHomeActionName":Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings_ex/SettingsActivity;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 331
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings_ex/SettingsActivity;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v6

    const v5, 0x7f0e03b4

    invoke-virtual {v3, v5, v4}, Lcom/android/settings_ex/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 332
    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings_ex/SettingsActivity;

    const v4, 0x7f0e0479

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/oneplus/settings/quickpay/QuickPaySettings$1;

    invoke-direct {v4, p0, p1}, Lcom/oneplus/settings/quickpay/QuickPaySettings$1;-><init>(Lcom/oneplus/settings/quickpay/QuickPaySettings;Z)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 340
    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings_ex/SettingsActivity;

    const v4, 0x7f0e047a

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/oneplus/settings/quickpay/QuickPaySettings$2;

    invoke-direct {v4, p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings$2;-><init>(Lcom/oneplus/settings/quickpay/QuickPaySettings;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 346
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 347
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 348
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 328
    return-void
.end method

.method private updateLockHomeAction(Z)V
    .locals 5
    .param p1, "state"    # Z

    .prologue
    .line 359
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    .line 360
    .local v2, "value":I
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "op_quickpay_enable"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    .line 361
    .local v1, "ret":Z
    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_unlockscreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 362
    .local v0, "enable":Z
    :goto_1
    invoke-direct {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->refreshQuickPayEnableUI(Z)V

    .line 358
    return-void

    .line 359
    .end local v0    # "enable":Z
    .end local v1    # "ret":Z
    .end local v2    # "value":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "value":I
    goto :goto_0

    .line 361
    .restart local v1    # "ret":Z
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private updatePreferenceState()V
    .locals 15

    .prologue
    const/4 v14, -0x1

    const/4 v1, 0x1

    const/4 v11, 0x0

    .line 180
    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->initPayWayData()V

    .line 181
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x10e0062

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    iput v10, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mDefaultLongPressOnHomeBehavior:I

    .line 182
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v12, "op_quickpay_default_way"

    invoke-static {v10, v12, v14, v11}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 183
    .local v0, "defaultQuickPayWay":I
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v12, "key_home_long_press_action"

    iget v13, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mDefaultLongPressOnHomeBehavior:I

    invoke-static {v10, v12, v13, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 184
    .local v5, "longPressHomeAction":I
    iget-object v10, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_select_default_way_category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v10}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 185
    iget-object v10, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mAllPayWaysPreference:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 186
    iget-object v10, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_6

    .line 187
    const-string/jumbo v10, "key_quickpay_uninstall_app_category"

    invoke-virtual {p0, v10}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->removePreference(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    iget-object v12, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_select_default_way_category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v10, v12}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 189
    const/4 v4, 0x0

    .line 190
    .local v4, "isChecked":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v10, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_1

    .line 191
    new-instance v7, Lcom/android/settings_ex/location/RadioButtonPreference;

    iget-object v10, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings_ex/SettingsActivity;

    invoke-direct {v7, v10}, Lcom/android/settings_ex/location/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 192
    .local v7, "p":Lcom/android/settings_ex/location/RadioButtonPreference;
    iget-object v10, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v10}, Lcom/android/settings_ex/location/RadioButtonPreference;->setKey(Ljava/lang/String;)V

    .line 193
    iget-object v10, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v7, v10}, Lcom/android/settings_ex/location/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v10, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v0, v10, :cond_0

    .line 195
    invoke-virtual {v7, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 196
    const/4 v4, 0x1

    .line 198
    :cond_0
    invoke-virtual {v7, p0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 199
    iget-object v10, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mAllPayWaysPreference:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v10, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_select_default_way_category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v10, v7}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 190
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 202
    .end local v7    # "p":Lcom/android/settings_ex/location/RadioButtonPreference;
    :cond_1
    iget-object v10, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mAllPayWaysPreference:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_2

    if-eqz v4, :cond_5

    .line 212
    .end local v3    # "i":I
    .end local v4    # "isChecked":Z
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v12, "op_quickpay_enable"

    invoke-static {v10, v12, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 213
    .local v8, "quickPayState":I
    if-ne v8, v1, :cond_8

    .line 214
    iget-boolean v10, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHasFingerprint:Z

    if-nez v10, :cond_7

    .line 215
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v12, "op_quickpay_enable"

    invoke-static {v10, v12, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 216
    iget-object v10, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_lockscreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 217
    const/4 v8, 0x0

    .line 225
    :goto_2
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v12, "buttons_show_on_screen_navkeys"

    invoke-static {v10, v12, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_9

    const/4 v6, 0x1

    .line 227
    .local v6, "onScreenNavKeysEnabled":Z
    :goto_3
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v12, "buttons_force_home_enabled"

    invoke-static {v10, v12, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_a

    const/4 v2, 0x1

    .line 229
    .local v2, "forceHomeEnabled":Z
    :goto_4
    if-eqz v6, :cond_b

    if-eqz v6, :cond_c

    move v9, v2

    .line 231
    :goto_5
    const/16 v10, 0xb

    if-ne v5, v10, :cond_d

    if-eqz v9, :cond_d

    .line 232
    iget-object v10, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_unlockscreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 239
    :cond_3
    :goto_6
    iget-object v10, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_unlockscreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_4

    if-ne v8, v1, :cond_e

    .line 240
    .local v1, "enable":Z
    :cond_4
    :goto_7
    invoke-direct {p0, v1}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->refreshQuickPayEnableUI(Z)V

    .line 179
    return-void

    .line 203
    .end local v1    # "enable":Z
    .end local v2    # "forceHomeEnabled":Z
    .end local v6    # "onScreenNavKeysEnabled":Z
    .end local v8    # "quickPayState":I
    .restart local v3    # "i":I
    .restart local v4    # "isChecked":Z
    :cond_5
    iget-object v10, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mAllPayWaysPreference:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v10, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 204
    if-ne v0, v14, :cond_2

    .line 205
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "op_quickpay_default_way"

    iget-object v10, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v12, v13, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 209
    .end local v3    # "i":I
    .end local v4    # "isChecked":Z
    :cond_6
    const-string/jumbo v10, "key_quickpay_select_default_way_category"

    invoke-virtual {p0, v10}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->removePreference(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    iget-object v12, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_uninstall_app_category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v10, v12}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_1

    .line 219
    .restart local v8    # "quickPayState":I
    :cond_7
    iget-object v10, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_lockscreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_2

    .line 222
    :cond_8
    iget-object v10, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_lockscreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_2

    .line 225
    :cond_9
    const/4 v6, 0x0

    .restart local v6    # "onScreenNavKeysEnabled":Z
    goto :goto_3

    .line 227
    :cond_a
    const/4 v2, 0x0

    .restart local v2    # "forceHomeEnabled":Z
    goto :goto_4

    .line 229
    :cond_b
    const/4 v9, 0x1

    .local v9, "solidHomeButtonEnabled":Z
    goto :goto_5

    .end local v9    # "solidHomeButtonEnabled":Z
    :cond_c
    const/4 v9, 0x0

    .restart local v9    # "solidHomeButtonEnabled":Z
    goto :goto_5

    .line 234
    .end local v9    # "solidHomeButtonEnabled":Z
    :cond_d
    iget-object v10, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_unlockscreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 235
    if-nez v9, :cond_3

    .line 236
    iget-object v10, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_unlockscreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_6

    :cond_e
    move v1, v11

    .line 239
    goto :goto_7
.end method

.method private updateUnLockHomeAction(Z)V
    .locals 5
    .param p1, "state"    # Z

    .prologue
    .line 352
    if-eqz p1, :cond_0

    const/16 v2, 0xb

    .line 353
    .local v2, "value":I
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "key_home_long_press_action"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    .line 354
    .local v1, "ret":Z
    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_lockscreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 355
    .local v0, "enable":Z
    :goto_1
    invoke-direct {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->refreshQuickPayEnableUI(Z)V

    .line 351
    return-void

    .line 352
    .end local v0    # "enable":Z
    .end local v1    # "ret":Z
    .end local v2    # "value":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "value":I
    goto :goto_0

    .line 354
    .restart local v1    # "ret":Z
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 426
    const/16 v0, 0x270f

    return v0
.end method

.method public gotoFingerprintEnrollIntroduction(I)V
    .locals 3
    .param p1, "requstCode"    # I

    .prologue
    .line 366
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 367
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings_ex"

    const-class v2, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    invoke-virtual {p0, v0, p1}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 365
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings_ex/SettingsActivity;

    .line 119
    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->initHomeActionName()V

    .line 116
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 373
    packed-switch p1, :pswitch_data_0

    .line 385
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 372
    return-void

    .line 375
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->checkFingerPrint()V

    .line 376
    iget-boolean v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHasFingerprint:Z

    if-eqz v1, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "op_quickpay_enable"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 378
    .local v0, "ret":Z
    invoke-direct {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->refreshQuickPayEnableUI(Z)V

    goto :goto_0

    .line 373
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 99
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    .line 100
    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->initHomeActionName()V

    .line 101
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 98
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 109
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 111
    new-instance v0, Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;-><init>(Lcom/oneplus/settings/quickpay/QuickPaySettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickPayAppsAddOrRemovedReceiver:Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;

    .line 112
    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->initPreference()V

    .line 105
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_instructions:Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->stopAnim()V

    .line 162
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickPayAppsAddOrRemovedReceiver:Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 163
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 160
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 305
    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_lockscreen:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_2

    .line 306
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 307
    .local v2, "state":Z
    if-eqz v2, :cond_0

    iget-boolean v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHasFingerprint:Z

    if-eqz v3, :cond_1

    .line 311
    :cond_0
    invoke-direct {p0, v2}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->updateLockHomeAction(Z)V

    .line 312
    return v7

    .line 308
    :cond_1
    invoke-virtual {p0, v7}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->gotoFingerprintEnrollIntroduction(I)V

    .line 309
    return v6

    .line 313
    .end local v2    # "state":Z
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_unlockscreen:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_4

    .line 314
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 315
    .restart local v2    # "state":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "key_home_long_press_action"

    iget v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mDefaultLongPressOnHomeBehavior:I

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 316
    .local v1, "longPressHomeAction":I
    invoke-direct {p0, v1}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getLongPressHomeActionIndexByValue(I)I

    move-result v0

    .line 317
    .local v0, "index":I
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 318
    invoke-direct {p0, v2, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->showConfirmChangeHomeAction(ZI)V

    .line 319
    return v6

    .line 321
    :cond_3
    invoke-direct {p0, v2}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->updateUnLockHomeAction(Z)V

    .line 322
    return v7

    .line 325
    .end local v0    # "index":I
    .end local v1    # "longPressHomeAction":I
    .end local v2    # "state":Z
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_4
    return v6
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 10
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 288
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "key":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 290
    iget-object v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 291
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

    .line 292
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

    .line 293
    .local v2, "p":Lcom/android/settings_ex/location/RadioButtonPreference;
    invoke-virtual {v2, v8}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_1

    .end local v2    # "p":Lcom/android/settings_ex/location/RadioButtonPreference;
    :cond_0
    move-object v4, p1

    .line 295
    check-cast v4, Lcom/android/settings_ex/location/RadioButtonPreference;

    .line 296
    .local v4, "rbp":Lcom/android/settings_ex/location/RadioButtonPreference;
    invoke-virtual {v4, v9}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 297
    return v9

    .line 289
    .end local v3    # "p$iterator":Ljava/util/Iterator;
    .end local v4    # "rbp":Lcom/android/settings_ex/location/RadioButtonPreference;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    :cond_2
    return v8
.end method

.method public onPreferenceViewClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_instructions:Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->playOrStopAnim()V

    .line 430
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 143
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 144
    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->checkFingerPrint()V

    .line 145
    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->updatePreferenceState()V

    .line 146
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickPayAppsAddOrRemovedReceiver:Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;

    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    return-void
.end method
