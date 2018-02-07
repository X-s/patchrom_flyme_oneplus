.class public Lcom/android/settings_ex/wifi/WifiSettings;
.super Lcom/android/settings_ex/RestrictedSettingsFragment;
.source "WifiSettings.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;
.implements Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;
.implements Lcom/android/settings_exlib/wifi/AccessPoint$AccessPointListener;
.implements Lcom/android/settings_ex/wifi/WifiDialog$WifiDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wifi/WifiSettings$1;,
        Lcom/android/settings_ex/wifi/WifiSettings$2;,
        Lcom/android/settings_ex/wifi/WifiSettings$SummaryProvider;
    }
.end annotation


# static fields
.field private static final EXTRA_ENABLE_NEXT_ON_CONNECT:Ljava/lang/String; = "wifi_enable_next_on_connect"

.field private static final EXTRA_START_CONNECT_SSID:Ljava/lang/String; = "wifi_start_connect_ssid"

.field private static final MENU_ID_ADVANCED:I = 0x5

.field private static final MENU_ID_CONFIGURE:I = 0xb

.field private static final MENU_ID_CONNECT:I = 0x7

.field private static final MENU_ID_DISCONNECT:I = 0xc

.field private static final MENU_ID_FORGET:I = 0x8

.field private static final MENU_ID_MODIFY:I = 0x9

.field private static final MENU_ID_P2P:I = 0xd

.field private static final MENU_ID_SCAN:I = 0x6

.field static final MENU_ID_WPS_PBC:I = 0x1

.field private static final MENU_ID_WPS_PIN:I = 0x2

.field private static final MENU_ID_WRITE_NFC:I = 0xa

.field private static final SAVED_WIFI_NFC_DIALOG_STATE:Ljava/lang/String; = "wifi_nfc_dlg_state"

.field private static final SAVE_DIALOG_ACCESS_POINT_STATE:Ljava/lang/String; = "wifi_ap_state"

.field private static final SAVE_DIALOG_MODE:Ljava/lang/String; = "dialog_mode"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final TAG:Ljava/lang/String; = "WifiSettings"

.field public static final WIFI_DIALOG_ID:I = 0x1

.field static final WPS_PBC_DIALOG_ID:I = 0x2

.field private static final WPS_PIN_DIALOG_ID:I = 0x3

.field private static final WRITE_NFC_DIALOG_ID:I = 0x6


# instance fields
.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mAddPreference:Landroid/support/v7/preference/Preference;

.field private mBgThread:Landroid/os/HandlerThread;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

.field private mDialogMode:I

.field private mDlgAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

.field private mEnableNextOnConnection:Z

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mListener:Ljava/lang/reflect/Field;

.field private mListenerObject:Ljava/lang/Object;

.field private mOpenSsid:Ljava/lang/String;

.field private mProgressHeader:Landroid/widget/ProgressBar;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mScanMenuItem:Landroid/view/MenuItem;

.field private mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

.field private mUserBadgeCache:Lcom/android/settings_exlib/wifi/AccessPointPreference$UserBadgeCache;

.field private mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

.field protected mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiNfcDialogSavedState:Landroid/os/Bundle;

.field private mWifiP2PMenuItem:Landroid/view/MenuItem;

.field private mWifiToNfcDialog:Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

.field private mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

.field private mWifiWapiCertNotinstalledDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1090
    new-instance v0, Lcom/android/settings_ex/wifi/WifiSettings$1;

    invoke-direct {v0}, Lcom/android/settings_ex/wifi/WifiSettings$1;-><init>()V

    .line 1089
    sput-object v0, Lcom/android/settings_ex/wifi/WifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    .line 1218
    new-instance v0, Lcom/android/settings_ex/wifi/WifiSettings$2;

    invoke-direct {v0}, Lcom/android/settings_ex/wifi/WifiSettings$2;-><init>()V

    .line 1217
    sput-object v0, Lcom/android/settings_ex/wifi/WifiSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 96
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 175
    const-string/jumbo v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 818
    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mListenerObject:Ljava/lang/Object;

    .line 819
    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mListener:Ljava/lang/reflect/Field;

    .line 174
    return-void
.end method

.method private addMessagePreference(I)V
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 917
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 918
    .local v0, "emptyTextView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 919
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 916
    return-void
.end method

.method static canModifyNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1136
    if-nez p1, :cond_0

    .line 1137
    return v10

    .line 1141
    :cond_0
    const-string/jumbo v11, "device_policy"

    .line 1140
    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 1145
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1146
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v11, "android.software.device_admin"

    invoke-virtual {v7, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    if-nez v3, :cond_1

    .line 1147
    return v9

    .line 1150
    :cond_1
    const/4 v5, 0x0

    .line 1151
    .local v5, "isConfigEligibleForLockdown":Z
    if-eqz v3, :cond_2

    .line 1152
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v0

    .line 1153
    .local v0, "deviceOwner":Landroid/content/ComponentName;
    if-eqz v0, :cond_2

    .line 1154
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerUserId()I

    move-result v2

    .line 1156
    .local v2, "deviceOwnerUserId":I
    :try_start_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    .line 1158
    .local v1, "deviceOwnerUid":I
    iget v11, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v11, :cond_3

    const/4 v5, 0x1

    .line 1164
    .end local v0    # "deviceOwner":Landroid/content/ComponentName;
    .end local v1    # "deviceOwnerUid":I
    .end local v2    # "deviceOwnerUserId":I
    :cond_2
    :goto_0
    if-nez v5, :cond_4

    .line 1165
    return v10

    .line 1158
    .restart local v0    # "deviceOwner":Landroid/content/ComponentName;
    .restart local v1    # "deviceOwnerUid":I
    .restart local v2    # "deviceOwnerUserId":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 1168
    .end local v0    # "deviceOwner":Landroid/content/ComponentName;
    .end local v1    # "deviceOwnerUid":I
    .end local v2    # "deviceOwnerUserId":I
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1170
    .local v8, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v11, "wifi_device_owner_configs_lockdown"

    .line 1169
    invoke-static {v8, v11, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_5

    move v6, v10

    .line 1171
    .local v6, "isLockdownFeatureEnabled":Z
    :goto_1
    if-eqz v6, :cond_6

    :goto_2
    return v9

    .end local v6    # "isLockdownFeatureEnabled":Z
    :cond_5
    move v6, v9

    .line 1169
    goto :goto_1

    .restart local v6    # "isLockdownFeatureEnabled":Z
    :cond_6
    move v9, v10

    .line 1171
    goto :goto_2

    .line 1159
    .end local v6    # "isLockdownFeatureEnabled":Z
    .end local v8    # "resolver":Landroid/content/ContentResolver;
    .restart local v0    # "deviceOwner":Landroid/content/ComponentName;
    .restart local v2    # "deviceOwnerUserId":I
    :catch_0
    move-exception v4

    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private changeNextButtonState(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 963
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 964
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 962
    :cond_0
    return-void
.end method

.method private initPreferenceListener()V
    .locals 4

    .prologue
    .line 848
    :try_start_0
    const-class v0, Landroid/support/v7/preference/PreferenceScreen;

    .line 849
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 850
    const-string/jumbo v2, "mListener"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mListener:Ljava/lang/reflect/Field;

    .line 851
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mListener:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 852
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mListener:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mListenerObject:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 846
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 853
    :catch_0
    move-exception v1

    .line 855
    .local v1, "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1125
    invoke-static {p0, p1}, Lcom/android/settings_ex/wifi/WifiSettings;->canModifyNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isPasspointWifi(Lcom/android/settings_exlib/wifi/AccessPoint;)Z
    .locals 4
    .param p1, "ap"    # Lcom/android/settings_exlib/wifi/AccessPoint;

    .prologue
    const/4 v1, 0x0

    .line 628
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 629
    invoke-virtual {p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 630
    .local v0, "entConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    if-eqz v0, :cond_0

    .line 631
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    .line 630
    :cond_0
    return v1

    .line 633
    .end local v0    # "entConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    :cond_1
    return v1
.end method

.method private releaseAccessPointListener()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 223
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    .line 224
    .local v4, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .line 225
    .local v3, "preferenceCount":I
    move v1, v3

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 226
    invoke-virtual {v4, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 227
    .local v2, "preference":Landroid/support/v7/preference/Preference;
    instance-of v5, v2, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;

    if-eqz v5, :cond_0

    .line 228
    check-cast v2, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;

    .end local v2    # "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;->getAccessPoint()Lcom/android/settings_exlib/wifi/AccessPoint;

    move-result-object v0

    .line 229
    .local v0, "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0, v6}, Lcom/android/settings_exlib/wifi/AccessPoint;->setListener(Lcom/android/settings_exlib/wifi/AccessPoint$AccessPointListener;)V

    .line 225
    .end local v0    # "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 222
    :cond_1
    return-void
.end method

.method private resetPreferenceListener()V
    .locals 4

    .prologue
    .line 836
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mListener:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mListenerObject:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 838
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mListener:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mListenerObject:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 835
    :cond_0
    :goto_0
    return-void

    .line 839
    :catch_0
    move-exception v0

    .line 841
    .local v0, "e1":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setOffMessage()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 861
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->isUiRestricted()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 862
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->isUiRestrictedByOnlyAdmin()Z

    move-result v7

    if-nez v7, :cond_0

    .line 863
    const v7, 0x7f0e0716

    invoke-direct {p0, v7}, Lcom/android/settings_ex/wifi/WifiSettings;->addMessagePreference(I)V

    .line 865
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 866
    return-void

    .line 869
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v4

    .line 870
    .local v4, "emptyTextView":Landroid/widget/TextView;
    if-nez v4, :cond_2

    .line 871
    return-void

    .line 874
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 875
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 876
    :cond_3
    return-void

    .line 879
    :cond_4
    const v8, 0x7f0e0714

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 884
    .local v2, "briefText":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 886
    .local v5, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v8, "wifi_scan_always_enabled"

    .line 885
    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_5

    .line 888
    .local v6, "wifiScanningMode":Z
    :goto_0
    if-nez v6, :cond_6

    .line 891
    sget-object v8, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 909
    :goto_1
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 911
    .local v1, "boldSpan":Landroid/text/Spannable;
    new-instance v8, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x1030044

    invoke-direct {v8, v9, v10}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 912
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/16 v10, 0x21

    .line 910
    invoke-interface {v1, v8, v7, v9, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 913
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 860
    return-void

    .end local v1    # "boldSpan":Landroid/text/Spannable;
    .end local v6    # "wifiScanningMode":Z
    :cond_5
    move v6, v7

    .line 885
    goto :goto_0

    .line 894
    .restart local v6    # "wifiScanningMode":Z
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 895
    .local v3, "contentBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 896
    const-string/jumbo v8, "\n\n"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    const v8, 0x7f0e06fa

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 898
    new-instance v8, Lcom/android/settings_ex/wifi/WifiSettings$7;

    invoke-direct {v8, p0}, Lcom/android/settings_ex/wifi/WifiSettings$7;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    invoke-static {v4, v3, v8}, Lcom/android/settings_ex/LinkifyUtils;->linkify(Landroid/widget/TextView;Ljava/lang/StringBuilder;Lcom/android/settings_ex/LinkifyUtils$OnClickListener;)Z

    goto :goto_1
.end method

.method private setPreferenceListenerNull()V
    .locals 4

    .prologue
    .line 821
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mListener:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 822
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->initPreferenceListener()V

    .line 825
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mListener:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    .line 827
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mListener:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 820
    :cond_1
    :goto_0
    return-void

    .line 828
    :catch_0
    move-exception v0

    .line 830
    .local v0, "e1":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private showDialog(Lcom/android/settings_exlib/wifi/AccessPoint;I)V
    .locals 4
    .param p1, "accessPoint"    # Lcom/android/settings_exlib/wifi/AccessPoint;
    .param p2, "dialogMode"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 606
    if-eqz p1, :cond_0

    .line 607
    invoke-virtual {p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 608
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 609
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 610
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_exlib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    .line 609
    invoke-static {v1, v2}, Lcom/android/settings_exlib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 611
    return-void

    .line 615
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    if-eqz v1, :cond_1

    .line 616
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->removeDialog(I)V

    .line 617
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    .line 621
    :cond_1
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 622
    iput p2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialogMode:I

    .line 624
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(I)V

    .line 605
    return-void
.end method


# virtual methods
.method addOptionsMenuItems(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 393
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/android/settings_exlib/wifi/WifiTracker;->isWifiEnabled()Z

    move-result v0

    .line 394
    .local v0, "wifiIsEnabled":Z
    const/4 v1, 0x6

    const v2, 0x7f0e0b84

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    .line 395
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 398
    const/16 v1, 0xd

    const v2, 0x7f0e070b

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiP2PMenuItem:Landroid/view/MenuItem;

    .line 399
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiP2PMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 402
    const/4 v1, 0x5

    const v2, 0x7f0e070d

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 404
    const/16 v1, 0xb

    const v2, 0x7f0e070e

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 405
    const v2, 0x7f020136

    .line 404
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 406
    const/4 v2, 0x1

    .line 404
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 392
    return-void
.end method

.method protected connect(I)V
    .locals 2
    .param p1, "networkId"    # I

    .prologue
    .line 1060
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x87

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1061
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 1059
    return-void
.end method

.method protected connect(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1055
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x87

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1056
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1054
    return-void
.end method

.method createWifiEnabler()Lcom/android/settings_ex/wifi/WifiEnabler;
    .locals 3

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 354
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    new-instance v1, Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/settings_ex/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings_ex/widget/SwitchBar;)V

    return-object v1
.end method

.method forget()V
    .locals 3

    .prologue
    .line 1032
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x89

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1033
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1034
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1038
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_exlib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1037
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    .line 1048
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->resumeScanning()V

    .line 1051
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 1031
    return-void

    .line 1041
    :cond_0
    const-string/jumbo v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to forget invalid network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    return-void

    .line 1045
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 1076
    const v0, 0x7f0e0d74

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 411
    const/16 v0, 0x67

    return v0
.end method

.method public onAccessPointChanged(Lcom/android/settings_exlib/wifi/AccessPoint;)V
    .locals 1
    .param p1, "accessPoint"    # Lcom/android/settings_exlib/wifi/AccessPoint;

    .prologue
    .line 1081
    invoke-virtual {p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;->refresh()V

    .line 1080
    return-void
.end method

.method public declared-synchronized onAccessPointsChanged()V
    .locals 17

    .prologue
    monitor-enter p0

    .line 693
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-nez v3, :cond_0

    monitor-exit p0

    return-void

    .line 694
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->isUiRestricted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 695
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->isUiRestrictedByOnlyAdmin()Z

    move-result v3

    if-nez v3, :cond_1

    .line 696
    const v3, 0x7f0e0716

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->addMessagePreference(I)V

    .line 698
    :cond_1
    const-string/jumbo v3, "WifiSettings"

    const-string/jumbo v4, "onAccessPointsChanged isUiRestricted ()"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 700
    return-void

    .line 702
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v16

    .line 704
    .local v16, "wifiState":I
    packed-switch v16, :pswitch_data_0

    :cond_3
    :goto_0
    monitor-exit p0

    .line 691
    return-void

    .line 708
    :pswitch_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/android/settings_exlib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v8

    .line 709
    .local v8, "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings_exlib/wifi/AccessPoint;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 711
    new-instance v10, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;

    sget-object v3, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-direct {v10, v3}, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;-><init>(Landroid/content/Context;)V

    .line 712
    .local v10, "headerMargin":Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;
    const/4 v3, -0x1

    invoke-virtual {v10, v3}, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;->setOrder(I)V

    .line 713
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 716
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->setPreferenceListenerNull()V

    .line 718
    const/4 v9, 0x0

    .line 719
    .local v9, "hasAvailableAccessPoints":Z
    const/4 v11, 0x0

    .line 720
    .local v11, "index":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 721
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "accessPoint$iterator":Ljava/util/Iterator;
    move v12, v11

    .end local v11    # "index":I
    .local v12, "index":I
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 723
    .local v2, "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->getLevel()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_e

    .line 725
    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, v2, Lcom/android/settings_exlib/wifi/AccessPoint;->foundInScanResult:Z

    if-eqz v3, :cond_5

    .line 730
    :cond_4
    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->getBssid()Ljava/lang/String;

    move-result-object v13

    .line 731
    .local v13, "key":Ljava/lang/String;
    const/4 v9, 0x1

    .line 733
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/wifi/WifiSettings;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v15

    .line 732
    check-cast v15, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;

    .line 734
    .local v15, "pref":Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;
    if-eqz v15, :cond_6

    .line 735
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "index":I
    .restart local v11    # "index":I
    invoke-virtual {v15, v12}, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;->setOrder(I)V

    .end local v13    # "key":Ljava/lang/String;
    .end local v15    # "pref":Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;
    :goto_2
    move v12, v11

    .end local v11    # "index":I
    .restart local v12    # "index":I
    goto :goto_1

    .line 726
    :cond_5
    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    if-nez v3, :cond_4

    move v11, v12

    .line 727
    .end local v12    # "index":I
    .restart local v11    # "index":I
    goto :goto_2

    .line 739
    .end local v11    # "index":I
    .restart local v12    # "index":I
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v15    # "pref":Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;
    :cond_6
    new-instance v1, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;

    .line 740
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mUserBadgeCache:Lcom/android/settings_exlib/wifi/AccessPointPreference$UserBadgeCache;

    const/4 v5, 0x0

    move-object/from16 v6, p0

    .line 739
    invoke-direct/range {v1 .. v6}, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;-><init>(Lcom/android/settings_exlib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settings_exlib/wifi/AccessPointPreference$UserBadgeCache;ZLandroid/app/Fragment;)V

    .line 741
    .local v1, "preference":Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;
    invoke-virtual {v1, v13}, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;->setKey(Ljava/lang/String;)V

    .line 742
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "index":I
    .restart local v11    # "index":I
    invoke-virtual {v1, v12}, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;->setOrder(I)V

    .line 744
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 745
    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 750
    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 751
    const-string/jumbo v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "preference = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 754
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->setListener(Lcom/android/settings_exlib/wifi/AccessPoint$AccessPointListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .end local v1    # "preference":Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;
    .end local v2    # "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    .end local v7    # "accessPoint$iterator":Ljava/util/Iterator;
    .end local v8    # "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings_exlib/wifi/AccessPoint;>;"
    .end local v9    # "hasAvailableAccessPoints":Z
    .end local v10    # "headerMargin":Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;
    .end local v11    # "index":I
    .end local v13    # "key":Ljava/lang/String;
    .end local v15    # "pref":Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;
    .end local v16    # "wifiState":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 746
    .restart local v1    # "preference":Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;
    .restart local v2    # "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    .restart local v7    # "accessPoint$iterator":Ljava/util/Iterator;
    .restart local v8    # "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings_exlib/wifi/AccessPoint;>;"
    .restart local v9    # "hasAvailableAccessPoints":Z
    .restart local v10    # "headerMargin":Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;
    .restart local v11    # "index":I
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v15    # "pref":Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;
    .restart local v16    # "wifiState":I
    :cond_9
    :try_start_4
    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSecurity()I

    move-result v3

    if-eqz v3, :cond_7

    .line 747
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    .line 748
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    goto :goto_3

    .line 758
    .end local v1    # "preference":Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;
    .end local v2    # "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    .end local v11    # "index":I
    .end local v13    # "key":Ljava/lang/String;
    .end local v15    # "pref":Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;
    .restart local v12    # "index":I
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->resetPreferenceListener()V

    .line 760
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 761
    if-nez v9, :cond_c

    .line 762
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 763
    new-instance v14, Lcom/android/settings_ex/wifi/WifiSettings$6;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v3}, Lcom/android/settings_ex/wifi/WifiSettings$6;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;Landroid/content/Context;)V

    .line 771
    .local v14, "pref":Landroid/support/v7/preference/Preference;
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 772
    const v3, 0x7f0e0715

    invoke-virtual {v14, v3}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 773
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 774
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 775
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 776
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    move v11, v12

    .line 782
    .end local v12    # "index":I
    .end local v14    # "pref":Landroid/support/v7/preference/Preference;
    .restart local v11    # "index":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    if-eqz v3, :cond_b

    .line 783
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 786
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiP2PMenuItem:Landroid/view/MenuItem;

    if-eqz v3, :cond_3

    .line 787
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiP2PMenuItem:Landroid/view/MenuItem;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 778
    .end local v11    # "index":I
    .restart local v12    # "index":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "index":I
    .restart local v11    # "index":I
    invoke-virtual {v3, v12}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 779
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 780
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto :goto_4

    .line 793
    .end local v7    # "accessPoint$iterator":Ljava/util/Iterator;
    .end local v8    # "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings_exlib/wifi/AccessPoint;>;"
    .end local v9    # "hasAvailableAccessPoints":Z
    .end local v10    # "headerMargin":Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;
    .end local v11    # "index":I
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 794
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto/16 :goto_0

    .line 798
    :pswitch_2
    const v3, 0x7f0e06ec

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->addMessagePreference(I)V

    .line 799
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto/16 :goto_0

    .line 803
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->setOffMessage()V

    .line 804
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 805
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    if-eqz v3, :cond_d

    .line 806
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 809
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiP2PMenuItem:Landroid/view/MenuItem;

    if-eqz v3, :cond_3

    .line 810
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiP2PMenuItem:Landroid/view/MenuItem;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .restart local v2    # "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    .restart local v7    # "accessPoint$iterator":Ljava/util/Iterator;
    .restart local v8    # "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings_exlib/wifi/AccessPoint;>;"
    .restart local v9    # "hasAvailableAccessPoints":Z
    .restart local v10    # "headerMargin":Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;
    .restart local v12    # "index":I
    :cond_e
    move v11, v12

    .end local v12    # "index":I
    .restart local v11    # "index":I
    goto/16 :goto_2

    .line 704
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 239
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 242
    new-instance v0, Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v2, p0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_exlib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZ)V

    .line 241
    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    .line 243
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->getManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 245
    new-instance v0, Lcom/android/settings_ex/wifi/WifiSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiSettings$3;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 260
    new-instance v0, Lcom/android/settings_ex/wifi/WifiSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiSettings$4;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 275
    new-instance v0, Lcom/android/settings_ex/wifi/WifiSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiSettings$5;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 290
    if-eqz p1, :cond_1

    .line 291
    const-string/jumbo v0, "dialog_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialogMode:I

    .line 292
    const-string/jumbo v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    const-string/jumbo v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 293
    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 297
    :cond_0
    const-string/jumbo v0, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    const-string/jumbo v0, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 298
    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    .line 305
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 306
    .local v9, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "wifi_enable_next_on_connect"

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableNextOnConnection:Z

    .line 308
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_2

    .line 309
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 311
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 310
    check-cast v7, Landroid/net/ConnectivityManager;

    .line 312
    .local v7, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v7, :cond_2

    .line 313
    invoke-virtual {v7, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 315
    .local v8, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 320
    .end local v7    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v8    # "info":Landroid/net/NetworkInfo;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 321
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    .line 322
    if-eqz v9, :cond_3

    .line 323
    const-string/jumbo v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_3
    const-string/jumbo v0, "wifi_start_connect_ssid"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 326
    const-string/jumbo v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string/jumbo v0, "wifi_start_connect_ssid"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    .line 328
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->onAccessPointsChanged()V

    .line 238
    :cond_4
    return-void
.end method

.method onAddNetworkPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1068
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x86

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1070
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 1071
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(Lcom/android/settings_exlib/wifi/AccessPoint;I)V

    .line 1067
    return-void
.end method

.method public onConnectedChanged()V
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->isConnected()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 952
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 542
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    if-nez v0, :cond_0

    .line 543
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 545
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 575
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 547
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    .line 556
    :goto_0
    return v2

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSecurity()I

    move-result v0

    if-nez v0, :cond_2

    .line 551
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 552
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 554
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-direct {p0, v0, v2}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(Lcom/android/settings_exlib/wifi/AccessPoint;I)V

    goto :goto_0

    .line 559
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->forget()V

    .line 560
    return v2

    .line 563
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(Lcom/android/settings_exlib/wifi/AccessPoint;I)V

    .line 564
    return v2

    .line 567
    :pswitch_4
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(I)V

    .line 568
    return v2

    .line 571
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 572
    return v2

    .line 545
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 189
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 190
    const v0, 0x7f0800a6

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 191
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    .line 192
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f02011b

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    .line 193
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f0e0706

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 195
    new-instance v0, Lcom/android/settings_exlib/wifi/AccessPointPreference$UserBadgeCache;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_exlib/wifi/AccessPointPreference$UserBadgeCache;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mUserBadgeCache:Lcom/android/settings_exlib/wifi/AccessPointPreference$UserBadgeCache;

    .line 197
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "WifiSettings"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    .line 198
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 188
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "info"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v5, 0x0

    .line 497
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/Preference;

    .line 499
    .local v2, "preference":Landroid/support/v7/preference/Preference;
    instance-of v3, v2, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;

    if-eqz v3, :cond_5

    .line 501
    check-cast v2, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;

    .end local v2    # "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;->getAccessPoint()Lcom/android/settings_exlib/wifi/AccessPoint;

    move-result-object v3

    .line 500
    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 502
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 503
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_exlib/wifi/AccessPoint;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 504
    const/4 v3, 0x7

    const v4, 0x7f0e070f

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 507
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 509
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 510
    return-void

    .line 513
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_exlib/wifi/AccessPoint;->isEphemeral()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 517
    :cond_2
    const/16 v3, 0x8

    const v4, 0x7f0e0711

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 522
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 523
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_exlib/wifi/AccessPoint;->isActive()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 524
    const/16 v3, 0xc

    const v4, 0x7f0e105e

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 528
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 529
    const/16 v3, 0x9

    const v4, 0x7f0e0712

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 530
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 531
    .local v1, "nfcAdapter":Landroid/nfc/NfcAdapter;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 532
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSecurity()I

    move-result v3

    if-eqz v3, :cond_5

    .line 534
    const/16 v3, 0xa

    const v4, 0x7f0e0713

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 496
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :cond_5
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1, "dialogId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 638
    packed-switch p1, :pswitch_data_0

    .line 683
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 640
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 641
    .local v3, "ap":Lcom/android/settings_exlib/wifi/AccessPoint;
    if-nez v3, :cond_0

    .line 642
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 643
    new-instance v3, Lcom/android/settings_exlib/wifi/AccessPoint;

    .end local v3    # "ap":Lcom/android/settings_exlib/wifi/AccessPoint;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v3, v0, v1}, Lcom/android/settings_exlib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 645
    .restart local v3    # "ap":Lcom/android/settings_exlib/wifi/AccessPoint;
    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 647
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 651
    :cond_0
    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 652
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 653
    const v1, 0x11200d0

    .line 652
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 655
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 656
    invoke-virtual {v3}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 655
    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v6

    .line 657
    .local v6, "hideForget":Z
    :cond_1
    if-nez v6, :cond_3

    invoke-direct {p0, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->isPasspointWifi(Lcom/android/settings_exlib/wifi/AccessPoint;)Z

    move-result v6

    .line 658
    .end local v6    # "hideForget":Z
    :goto_0
    const-string/jumbo v1, "WifiSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Passpoint hotspot ? "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->isPasspointWifi(Lcom/android/settings_exlib/wifi/AccessPoint;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "yes"

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    new-instance v0, Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v6, :cond_2

    move-object v3, v2

    .line 660
    .end local v3    # "ap":Lcom/android/settings_exlib/wifi/AccessPoint;
    :cond_2
    iget v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialogMode:I

    move-object v2, p0

    .line 659
    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/wifi/WifiDialog;-><init>(Landroid/content/Context;Lcom/android/settings_ex/wifi/WifiDialog$WifiDialogListener;Lcom/android/settings_exlib/wifi/AccessPoint;IZ)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    .line 665
    :goto_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    return-object v0

    .line 657
    .restart local v3    # "ap":Lcom/android/settings_exlib/wifi/AccessPoint;
    .restart local v6    # "hideForget":Z
    :cond_3
    const/4 v6, 0x1

    .local v6, "hideForget":Z
    goto :goto_0

    .line 658
    .end local v6    # "hideForget":Z
    :cond_4
    const-string/jumbo v0, "no"

    goto :goto_1

    .line 662
    :cond_5
    new-instance v0, Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialogMode:I

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/wifi/WifiDialog;-><init>(Landroid/content/Context;Lcom/android/settings_ex/wifi/WifiDialog$WifiDialogListener;Lcom/android/settings_exlib/wifi/AccessPoint;IZ)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    goto :goto_2

    .line 667
    .end local v3    # "ap":Lcom/android/settings_exlib/wifi/AccessPoint;
    :pswitch_2
    new-instance v0, Lcom/android/settings_ex/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/android/settings_ex/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    return-object v0

    .line 669
    :pswitch_3
    new-instance v0, Lcom/android/settings_ex/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/android/settings_ex/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    return-object v0

    .line 671
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    if-eqz v0, :cond_7

    .line 672
    new-instance v0, Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

    .line 673
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 674
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSecurity()I

    move-result v4

    .line 675
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 672
    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;-><init>(Landroid/content/Context;IILandroid/net/wifi/WifiManager;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

    .line 681
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

    return-object v0

    .line 676
    :cond_7
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_6

    .line 677
    new-instance v0, Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

    .line 678
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 677
    invoke-direct {v0, v1, v2, v4}, Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/net/wifi/WifiManager;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

    goto :goto_3

    .line 638
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 385
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/wifi/WifiSettings;->addOptionsMenuItems(Landroid/view/Menu;)V

    .line 386
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 381
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiWapiCertNotinstalledDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiWapiCertNotinstalledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiWapiCertNotinstalledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 207
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiWapiCertNotinstalledDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 216
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->releaseAccessPointListener()V

    .line 218
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onDestroy()V

    .line 202
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 334
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onDestroyView()V

    .line 336
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiEnabler;->teardownSwitchBar()V

    .line 333
    :cond_0
    return-void
.end method

.method public onForget(Lcom/android/settings_ex/wifi/WifiDialog;)V
    .locals 0
    .param p1, "dialog"    # Lcom/android/settings_ex/wifi/WifiDialog;

    .prologue
    .line 970
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->forget()V

    .line 969
    return-void
.end method

.method public onLevelChanged(Lcom/android/settings_exlib/wifi/AccessPoint;)V
    .locals 1
    .param p1, "accessPoint"    # Lcom/android/settings_exlib/wifi/AccessPoint;

    .prologue
    .line 1086
    invoke-virtual {p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;->onLevelChanged()V

    .line 1085
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v3, 0x7f0e0767

    const/4 v8, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v11, 0x1

    .line 438
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    return v6

    .line 440
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 492
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 442
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(I)V

    .line 443
    return v11

    .line 456
    :pswitch_2
    new-instance v10, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 457
    const-class v1, Lcom/android/settings_ex/Settings$WifiP2pSettingsActivity;

    .line 456
    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 458
    .local v10, "wifiDirectIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 459
    return v11

    .line 462
    .end local v10    # "wifiDirectIntent":Landroid/content/Intent;
    :pswitch_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(I)V

    .line 463
    return v11

    .line 465
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x88

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 466
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->forceScan()V

    .line 467
    return v11

    .line 469
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ex/SettingsActivity;

    if-eqz v0, :cond_1

    .line 470
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 471
    const-class v1, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, p0

    .line 470
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 478
    :goto_0
    return v11

    .line 474
    :cond_1
    const-class v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings_ex/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0

    .line 480
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ex/SettingsActivity;

    if-eqz v0, :cond_2

    .line 481
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 482
    const-class v1, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 483
    const v3, 0x7f0e0768

    move-object v4, v2

    move-object v5, p0

    .line 481
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 489
    :goto_1
    return v11

    .line 485
    :cond_2
    const-class v0, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    .line 486
    const v7, 0x7f0e0768

    move-object v4, p0

    move-object v5, p0

    move-object v9, v2

    .line 485
    invoke-virtual/range {v4 .. v9}, Lcom/android/settings_ex/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 440
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 372
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onPause()V

    .line 373
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiEnabler;->pause()V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->stopTracking()V

    .line 371
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 580
    instance-of v0, p1, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;

    if-eqz v0, :cond_4

    .line 581
    check-cast p1, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;

    .end local p1    # "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;->getAccessPoint()Lcom/android/settings_exlib/wifi/AccessPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 582
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    if-nez v0, :cond_0

    .line 583
    return v1

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSecurity()I

    move-result v0

    if-nez v0, :cond_1

    .line 589
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 592
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 593
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(Lcom/android/settings_exlib/wifi/AccessPoint;I)V

    .line 602
    :goto_0
    return v2

    .line 589
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 590
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 591
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 595
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-direct {p0, v0, v2}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(Lcom/android/settings_exlib/wifi/AccessPoint;I)V

    goto :goto_0

    .line 597
    .restart local p1    # "preference":Landroid/support/v7/preference/Preference;
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_5

    .line 598
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->onAddNetworkPressed()V

    goto :goto_0

    .line 600
    :cond_5
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 360
    .local v0, "activity":Landroid/app/Activity;
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onResume()V

    .line 361
    const-string/jumbo v1, "dummy"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->removePreference(Ljava/lang/String;)V

    .line 362
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    .line 366
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/android/settings_exlib/wifi/WifiTracker;->startTracking()V

    .line 367
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 358
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 416
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 419
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    const-string/jumbo v1, "dialog_mode"

    iget v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialogMode:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 421
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    if-eqz v1, :cond_0

    .line 422
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 423
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 424
    const-string/jumbo v1, "wifi_ap_state"

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 428
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 430
    .local v0, "savedState":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;->saveState(Landroid/os/Bundle;)V

    .line 431
    const-string/jumbo v1, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 415
    .end local v0    # "savedState":Landroid/os/Bundle;
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 343
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onStart()V

    .line 346
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->createWifiEnabler()Lcom/android/settings_ex/wifi/WifiEnabler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    .line 342
    return-void
.end method

.method public onSubmit(Lcom/android/settings_ex/wifi/WifiDialog;)V
    .locals 1
    .param p1, "dialog"    # Lcom/android/settings_ex/wifi/WifiDialog;

    .prologue
    .line 975
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiDialog;->getController()Lcom/android/settings_ex/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->submit(Lcom/android/settings_ex/wifi/WifiConfigController;)V

    .line 974
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 180
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 182
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 183
    const v1, 0x7f040211

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressHeader:Landroid/widget/ProgressBar;

    .line 179
    :cond_0
    return-void
.end method

.method public onWifiStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x0

    .line 930
    packed-switch p1, :pswitch_data_0

    .line 929
    :cond_0
    :goto_0
    return-void

    .line 932
    :pswitch_0
    const v0, 0x7f0e06eb

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->addMessagePreference(I)V

    .line 933
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto :goto_0

    .line 937
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->setOffMessage()V

    .line 938
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 940
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 941
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 943
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiP2PMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiP2PMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 930
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setProgressBarVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 923
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressHeader:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 924
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressHeader:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 922
    :cond_0
    return-void

    .line 924
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method submit(Lcom/android/settings_ex/wifi/WifiConfigController;)V
    .locals 6
    .param p1, "configController"    # Lcom/android/settings_ex/wifi/WifiConfigController;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 982
    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 984
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_1

    .line 985
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    if-eqz v2, :cond_0

    .line 986
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v2

    .line 985
    if-eqz v2, :cond_0

    .line 987
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    .line 1028
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/WifiTracker;->resumeScanning()V

    .line 980
    return-void

    .line 991
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    if-eqz v2, :cond_4

    .line 992
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSecurity()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 993
    const-string/jumbo v2, "WifiSettings"

    const-string/jumbo v3, "WAPI: WAPI_CERT Selected"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    iget v2, p1, Lcom/android/settings_ex/wifi/WifiConfigController;->mCert_Cnt:I

    if-nez v2, :cond_2

    .line 996
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 997
    const v3, 0x7f0e0905

    .line 996
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 998
    const v3, 0x1080027

    .line 996
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 999
    const v3, 0x7f0e0279

    .line 996
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1000
    const v3, 0x104000a

    .line 996
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1002
    .local v1, "dlgBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiWapiCertNotinstalledDialog:Landroid/app/AlertDialog;

    .line 1003
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiWapiCertNotinstalledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1005
    const-string/jumbo v2, "WifiSettings"

    const-string/jumbo v3, "WAPI: Certificates are not installed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    const-string/jumbo v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WAPI: configController.mCert_Cnt = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/settings_ex/wifi/WifiConfigController;->mCert_Cnt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    return-void

    .line 1009
    .end local v1    # "dlgBuilder":Landroid/app/AlertDialog$Builder;
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/WifiConfigController;->getMode()I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 1010
    const-string/jumbo v2, "WifiSettings"

    const-string/jumbo v3, "WAPI CERT issue Save"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, v0, v3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0

    .line 1013
    :cond_3
    const-string/jumbo v2, "WifiSettings"

    const-string/jumbo v3, "WAPI CERT issue Connect"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, v0, v3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1015
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    .line 1019
    :cond_4
    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/WifiConfigController;->getMode()I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 1020
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, v0, v3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0

    .line 1022
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, v0, v3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1023
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    if-eqz v2, :cond_0

    .line 1024
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0
.end method
