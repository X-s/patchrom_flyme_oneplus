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
    .line 1092
    new-instance v0, Lcom/android/settings_ex/wifi/WifiSettings$1;

    invoke-direct {v0}, Lcom/android/settings_ex/wifi/WifiSettings$1;-><init>()V

    .line 1091
    sput-object v0, Lcom/android/settings_ex/wifi/WifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    .line 1220
    new-instance v0, Lcom/android/settings_ex/wifi/WifiSettings$2;

    invoke-direct {v0}, Lcom/android/settings_ex/wifi/WifiSettings$2;-><init>()V

    .line 1219
    sput-object v0, Lcom/android/settings_ex/wifi/WifiSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 98
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    const-string/jumbo v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 820
    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mListenerObject:Ljava/lang/Object;

    .line 821
    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mListener:Ljava/lang/reflect/Field;

    .line 176
    return-void
.end method

.method private addMessagePreference(I)V
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 919
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 920
    .local v0, "emptyTextView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 921
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 918
    return-void
.end method

.method static canModifyNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1138
    if-nez p1, :cond_0

    .line 1139
    return v10

    .line 1143
    :cond_0
    const-string/jumbo v11, "device_policy"

    .line 1142
    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 1147
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1148
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v11, "android.software.device_admin"

    invoke-virtual {v7, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    if-nez v3, :cond_1

    .line 1149
    return v9

    .line 1152
    :cond_1
    const/4 v5, 0x0

    .line 1153
    .local v5, "isConfigEligibleForLockdown":Z
    if-eqz v3, :cond_2

    .line 1154
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v0

    .line 1155
    .local v0, "deviceOwner":Landroid/content/ComponentName;
    if-eqz v0, :cond_2

    .line 1156
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerUserId()I

    move-result v2

    .line 1158
    .local v2, "deviceOwnerUserId":I
    :try_start_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    .line 1160
    .local v1, "deviceOwnerUid":I
    iget v11, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v11, :cond_3

    const/4 v5, 0x1

    .line 1166
    .end local v0    # "deviceOwner":Landroid/content/ComponentName;
    .end local v1    # "deviceOwnerUid":I
    .end local v2    # "deviceOwnerUserId":I
    :cond_2
    :goto_0
    if-nez v5, :cond_4

    .line 1167
    return v10

    .line 1160
    .restart local v0    # "deviceOwner":Landroid/content/ComponentName;
    .restart local v1    # "deviceOwnerUid":I
    .restart local v2    # "deviceOwnerUserId":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 1170
    .end local v0    # "deviceOwner":Landroid/content/ComponentName;
    .end local v1    # "deviceOwnerUid":I
    .end local v2    # "deviceOwnerUserId":I
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1172
    .local v8, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v11, "wifi_device_owner_configs_lockdown"

    .line 1171
    invoke-static {v8, v11, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_5

    move v6, v10

    .line 1173
    .local v6, "isLockdownFeatureEnabled":Z
    :goto_1
    if-eqz v6, :cond_6

    :goto_2
    return v9

    .end local v6    # "isLockdownFeatureEnabled":Z
    :cond_5
    move v6, v9

    .line 1171
    goto :goto_1

    .restart local v6    # "isLockdownFeatureEnabled":Z
    :cond_6
    move v9, v10

    .line 1173
    goto :goto_2

    .line 1161
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
    .line 965
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 966
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 964
    :cond_0
    return-void
.end method

.method private initPreferenceListener()V
    .locals 4

    .prologue
    .line 850
    :try_start_0
    const-class v0, Landroid/support/v7/preference/PreferenceScreen;

    .line 851
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 852
    const-string/jumbo v2, "mListener"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mListener:Ljava/lang/reflect/Field;

    .line 853
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mListener:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 854
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mListener:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mListenerObject:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 855
    :catch_0
    move-exception v1

    .line 857
    .local v1, "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1127
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

    .line 630
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 631
    invoke-virtual {p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 632
    .local v0, "entConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    if-eqz v0, :cond_0

    .line 633
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    .line 632
    :cond_0
    return v1

    .line 635
    .end local v0    # "entConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    :cond_1
    return v1
.end method

.method private releaseAccessPointListener()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 225
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    .line 226
    .local v4, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .line 227
    .local v3, "preferenceCount":I
    move v1, v3

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 228
    invoke-virtual {v4, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 229
    .local v2, "preference":Landroid/support/v7/preference/Preference;
    instance-of v5, v2, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;

    if-eqz v5, :cond_0

    .line 230
    check-cast v2, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;

    .end local v2    # "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;->getAccessPoint()Lcom/android/settings_exlib/wifi/AccessPoint;

    move-result-object v0

    .line 231
    .local v0, "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0, v6}, Lcom/android/settings_exlib/wifi/AccessPoint;->setListener(Lcom/android/settings_exlib/wifi/AccessPoint$AccessPointListener;)V

    .line 227
    .end local v0    # "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 224
    :cond_1
    return-void
.end method

.method private resetPreferenceListener()V
    .locals 4

    .prologue
    .line 838
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mListener:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mListenerObject:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 840
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mListener:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mListenerObject:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 837
    :cond_0
    :goto_0
    return-void

    .line 841
    :catch_0
    move-exception v0

    .line 843
    .local v0, "e1":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setOffMessage()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 863
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->isUiRestricted()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 864
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->isUiRestrictedByOnlyAdmin()Z

    move-result v7

    if-nez v7, :cond_0

    .line 865
    const v7, 0x7f0e0744

    invoke-direct {p0, v7}, Lcom/android/settings_ex/wifi/WifiSettings;->addMessagePreference(I)V

    .line 867
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 868
    return-void

    .line 871
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v4

    .line 872
    .local v4, "emptyTextView":Landroid/widget/TextView;
    if-nez v4, :cond_2

    .line 873
    return-void

    .line 876
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 877
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 878
    :cond_3
    return-void

    .line 881
    :cond_4
    const v8, 0x7f0e0742

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 886
    .local v2, "briefText":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 888
    .local v5, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v8, "wifi_scan_always_enabled"

    .line 887
    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_5

    .line 890
    .local v6, "wifiScanningMode":Z
    :goto_0
    if-nez v6, :cond_6

    .line 893
    sget-object v8, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 911
    :goto_1
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 913
    .local v1, "boldSpan":Landroid/text/Spannable;
    new-instance v8, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x1030044

    invoke-direct {v8, v9, v10}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 914
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/16 v10, 0x21

    .line 912
    invoke-interface {v1, v8, v7, v9, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 915
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 862
    return-void

    .end local v1    # "boldSpan":Landroid/text/Spannable;
    .end local v6    # "wifiScanningMode":Z
    :cond_5
    move v6, v7

    .line 887
    goto :goto_0

    .line 896
    .restart local v6    # "wifiScanningMode":Z
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 897
    .local v3, "contentBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 898
    const-string/jumbo v8, "\n\n"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    const v8, 0x7f0e0728

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 900
    new-instance v8, Lcom/android/settings_ex/wifi/WifiSettings$7;

    invoke-direct {v8, p0}, Lcom/android/settings_ex/wifi/WifiSettings$7;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    invoke-static {v4, v3, v8}, Lcom/android/settings_ex/LinkifyUtils;->linkify(Landroid/widget/TextView;Ljava/lang/StringBuilder;Lcom/android/settings_ex/LinkifyUtils$OnClickListener;)Z

    goto :goto_1
.end method

.method private setPreferenceListenerNull()V
    .locals 4

    .prologue
    .line 823
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mListener:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 824
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->initPreferenceListener()V

    .line 827
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mListener:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    .line 829
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mListener:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 822
    :cond_1
    :goto_0
    return-void

    .line 830
    :catch_0
    move-exception v0

    .line 832
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

    .line 608
    if-eqz p1, :cond_0

    .line 609
    invoke-virtual {p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 610
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 611
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 612
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_exlib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    .line 611
    invoke-static {v1, v2}, Lcom/android/settings_exlib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 613
    return-void

    .line 617
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    if-eqz v1, :cond_1

    .line 618
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->removeDialog(I)V

    .line 619
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    .line 623
    :cond_1
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 624
    iput p2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialogMode:I

    .line 626
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(I)V

    .line 607
    return-void
.end method


# virtual methods
.method addOptionsMenuItems(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 395
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/android/settings_exlib/wifi/WifiTracker;->isWifiEnabled()Z

    move-result v0

    .line 396
    .local v0, "wifiIsEnabled":Z
    const/4 v1, 0x6

    const v2, 0x7f0e0bb2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    .line 397
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 400
    const/16 v1, 0xd

    const v2, 0x7f0e0739

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiP2PMenuItem:Landroid/view/MenuItem;

    .line 401
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiP2PMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 404
    const/4 v1, 0x5

    const v2, 0x7f0e073b

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 406
    const/16 v1, 0xb

    const v2, 0x7f0e073c

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 407
    const v2, 0x7f020137

    .line 406
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 408
    const/4 v2, 0x1

    .line 406
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 394
    return-void
.end method

.method protected connect(I)V
    .locals 2
    .param p1, "networkId"    # I

    .prologue
    .line 1062
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x87

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1063
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 1061
    return-void
.end method

.method protected connect(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1057
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x87

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1058
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1056
    return-void
.end method

.method createWifiEnabler()Lcom/android/settings_ex/wifi/WifiEnabler;
    .locals 3

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 356
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
    .line 1034
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x89

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1035
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1036
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1040
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_exlib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1039
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    .line 1050
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->resumeScanning()V

    .line 1053
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 1033
    return-void

    .line 1043
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

    .line 1044
    return-void

    .line 1047
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
    .line 1078
    const v0, 0x7f0e0da2

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 413
    const/16 v0, 0x67

    return v0
.end method

.method public onAccessPointChanged(Lcom/android/settings_exlib/wifi/AccessPoint;)V
    .locals 1
    .param p1, "accessPoint"    # Lcom/android/settings_exlib/wifi/AccessPoint;

    .prologue
    .line 1083
    invoke-virtual {p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;->refresh()V

    .line 1082
    return-void
.end method

.method public declared-synchronized onAccessPointsChanged()V
    .locals 17

    .prologue
    monitor-enter p0

    .line 695
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-nez v3, :cond_0

    monitor-exit p0

    return-void

    .line 696
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->isUiRestricted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 697
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->isUiRestrictedByOnlyAdmin()Z

    move-result v3

    if-nez v3, :cond_1

    .line 698
    const v3, 0x7f0e0744

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->addMessagePreference(I)V

    .line 700
    :cond_1
    const-string/jumbo v3, "WifiSettings"

    const-string/jumbo v4, "onAccessPointsChanged isUiRestricted ()"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 702
    return-void

    .line 704
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v16

    .line 706
    .local v16, "wifiState":I
    packed-switch v16, :pswitch_data_0

    :cond_3
    :goto_0
    monitor-exit p0

    .line 693
    return-void

    .line 710
    :pswitch_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/android/settings_exlib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v8

    .line 711
    .local v8, "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings_exlib/wifi/AccessPoint;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 713
    new-instance v10, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;

    sget-object v3, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-direct {v10, v3}, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;-><init>(Landroid/content/Context;)V

    .line 714
    .local v10, "headerMargin":Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;
    const/4 v3, -0x1

    invoke-virtual {v10, v3}, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;->setOrder(I)V

    .line 715
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 718
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->setPreferenceListenerNull()V

    .line 720
    const/4 v9, 0x0

    .line 721
    .local v9, "hasAvailableAccessPoints":Z
    const/4 v11, 0x0

    .line 722
    .local v11, "index":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 723
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

    .line 725
    .local v2, "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->getLevel()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_e

    .line 727
    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, v2, Lcom/android/settings_exlib/wifi/AccessPoint;->foundInScanResult:Z

    if-eqz v3, :cond_5

    .line 732
    :cond_4
    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->getBssid()Ljava/lang/String;

    move-result-object v13

    .line 733
    .local v13, "key":Ljava/lang/String;
    const/4 v9, 0x1

    .line 735
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/wifi/WifiSettings;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v15

    .line 734
    check-cast v15, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;

    .line 736
    .local v15, "pref":Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;
    if-eqz v15, :cond_6

    .line 737
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

    .line 728
    :cond_5
    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    if-nez v3, :cond_4

    move v11, v12

    .line 729
    .end local v12    # "index":I
    .restart local v11    # "index":I
    goto :goto_2

    .line 741
    .end local v11    # "index":I
    .restart local v12    # "index":I
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v15    # "pref":Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;
    :cond_6
    new-instance v1, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;

    .line 742
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mUserBadgeCache:Lcom/android/settings_exlib/wifi/AccessPointPreference$UserBadgeCache;

    const/4 v5, 0x0

    move-object/from16 v6, p0

    .line 741
    invoke-direct/range {v1 .. v6}, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;-><init>(Lcom/android/settings_exlib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settings_exlib/wifi/AccessPointPreference$UserBadgeCache;ZLandroid/app/Fragment;)V

    .line 743
    .local v1, "preference":Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;
    invoke-virtual {v1, v13}, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;->setKey(Ljava/lang/String;)V

    .line 744
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "index":I
    .restart local v11    # "index":I
    invoke-virtual {v1, v12}, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;->setOrder(I)V

    .line 746
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

    .line 747
    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 752
    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 753
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

    .line 755
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 756
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

    .line 748
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

    .line 749
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    .line 750
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    goto :goto_3

    .line 760
    .end local v1    # "preference":Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;
    .end local v2    # "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    .end local v11    # "index":I
    .end local v13    # "key":Ljava/lang/String;
    .end local v15    # "pref":Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;
    .restart local v12    # "index":I
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->resetPreferenceListener()V

    .line 762
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 763
    if-nez v9, :cond_c

    .line 764
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 765
    new-instance v14, Lcom/android/settings_ex/wifi/WifiSettings$6;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v3}, Lcom/android/settings_ex/wifi/WifiSettings$6;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;Landroid/content/Context;)V

    .line 773
    .local v14, "pref":Landroid/support/v7/preference/Preference;
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 774
    const v3, 0x7f0e0743

    invoke-virtual {v14, v3}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 775
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 776
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 777
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 778
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    move v11, v12

    .line 784
    .end local v12    # "index":I
    .end local v14    # "pref":Landroid/support/v7/preference/Preference;
    .restart local v11    # "index":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    if-eqz v3, :cond_b

    .line 785
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 788
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiP2PMenuItem:Landroid/view/MenuItem;

    if-eqz v3, :cond_3

    .line 789
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiP2PMenuItem:Landroid/view/MenuItem;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 780
    .end local v11    # "index":I
    .restart local v12    # "index":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "index":I
    .restart local v11    # "index":I
    invoke-virtual {v3, v12}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 781
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 782
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto :goto_4

    .line 795
    .end local v7    # "accessPoint$iterator":Ljava/util/Iterator;
    .end local v8    # "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings_exlib/wifi/AccessPoint;>;"
    .end local v9    # "hasAvailableAccessPoints":Z
    .end local v10    # "headerMargin":Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;
    .end local v11    # "index":I
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 796
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto/16 :goto_0

    .line 800
    :pswitch_2
    const v3, 0x7f0e071a

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->addMessagePreference(I)V

    .line 801
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto/16 :goto_0

    .line 805
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->setOffMessage()V

    .line 806
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 807
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    if-eqz v3, :cond_d

    .line 808
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 811
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiP2PMenuItem:Landroid/view/MenuItem;

    if-eqz v3, :cond_3

    .line 812
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

    .line 706
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

    .line 241
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 244
    new-instance v0, Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v2, p0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_exlib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZ)V

    .line 243
    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    .line 245
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->getManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 247
    new-instance v0, Lcom/android/settings_ex/wifi/WifiSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiSettings$3;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 262
    new-instance v0, Lcom/android/settings_ex/wifi/WifiSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiSettings$4;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 277
    new-instance v0, Lcom/android/settings_ex/wifi/WifiSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiSettings$5;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 292
    if-eqz p1, :cond_1

    .line 293
    const-string/jumbo v0, "dialog_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialogMode:I

    .line 294
    const-string/jumbo v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    const-string/jumbo v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 295
    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 299
    :cond_0
    const-string/jumbo v0, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    const-string/jumbo v0, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 300
    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    .line 307
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 308
    .local v9, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "wifi_enable_next_on_connect"

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableNextOnConnection:Z

    .line 310
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_2

    .line 311
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 312
    check-cast v7, Landroid/net/ConnectivityManager;

    .line 314
    .local v7, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v7, :cond_2

    .line 315
    invoke-virtual {v7, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 317
    .local v8, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 322
    .end local v7    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v8    # "info":Landroid/net/NetworkInfo;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 323
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    .line 324
    if-eqz v9, :cond_3

    .line 325
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

    .line 327
    :cond_3
    const-string/jumbo v0, "wifi_start_connect_ssid"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 328
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

    .line 329
    const-string/jumbo v0, "wifi_start_connect_ssid"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    .line 330
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->onAccessPointsChanged()V

    .line 240
    :cond_4
    return-void
.end method

.method onAddNetworkPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1070
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x86

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1072
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 1073
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(Lcom/android/settings_exlib/wifi/AccessPoint;I)V

    .line 1069
    return-void
.end method

.method public onConnectedChanged()V
    .locals 1

    .prologue
    .line 955
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->isConnected()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 954
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 544
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    if-nez v0, :cond_0

    .line 545
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 547
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 577
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 549
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 550
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    .line 558
    :goto_0
    return v2

    .line 551
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSecurity()I

    move-result v0

    if-nez v0, :cond_2

    .line 553
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 554
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 556
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-direct {p0, v0, v2}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(Lcom/android/settings_exlib/wifi/AccessPoint;I)V

    goto :goto_0

    .line 561
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->forget()V

    .line 562
    return v2

    .line 565
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(Lcom/android/settings_exlib/wifi/AccessPoint;I)V

    .line 566
    return v2

    .line 569
    :pswitch_4
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(I)V

    .line 570
    return v2

    .line 573
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 574
    return v2

    .line 547
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
    .line 191
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 192
    const v0, 0x7f0800a7

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 193
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    .line 194
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f02011c

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    .line 195
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f0e0734

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 197
    new-instance v0, Lcom/android/settings_exlib/wifi/AccessPointPreference$UserBadgeCache;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_exlib/wifi/AccessPointPreference$UserBadgeCache;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mUserBadgeCache:Lcom/android/settings_exlib/wifi/AccessPointPreference$UserBadgeCache;

    .line 199
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "WifiSettings"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    .line 200
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 190
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "info"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v5, 0x0

    .line 499
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/Preference;

    .line 501
    .local v2, "preference":Landroid/support/v7/preference/Preference;
    instance-of v3, v2, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;

    if-eqz v3, :cond_5

    .line 503
    check-cast v2, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;

    .end local v2    # "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;->getAccessPoint()Lcom/android/settings_exlib/wifi/AccessPoint;

    move-result-object v3

    .line 502
    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 504
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 505
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_exlib/wifi/AccessPoint;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 506
    const/4 v3, 0x7

    const v4, 0x7f0e073d

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 509
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 511
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 512
    return-void

    .line 515
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_exlib/wifi/AccessPoint;->isEphemeral()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 519
    :cond_2
    const/16 v3, 0x8

    const v4, 0x7f0e073f

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 524
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 525
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_exlib/wifi/AccessPoint;->isActive()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 526
    const/16 v3, 0xc

    const v4, 0x7f0e108c

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 530
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 531
    const/16 v3, 0x9

    const v4, 0x7f0e0740

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 532
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 533
    .local v1, "nfcAdapter":Landroid/nfc/NfcAdapter;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 534
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSecurity()I

    move-result v3

    if-eqz v3, :cond_5

    .line 536
    const/16 v3, 0xa

    const v4, 0x7f0e0741

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 498
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

    .line 640
    packed-switch p1, :pswitch_data_0

    .line 685
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 642
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 643
    .local v3, "ap":Lcom/android/settings_exlib/wifi/AccessPoint;
    if-nez v3, :cond_0

    .line 644
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 645
    new-instance v3, Lcom/android/settings_exlib/wifi/AccessPoint;

    .end local v3    # "ap":Lcom/android/settings_exlib/wifi/AccessPoint;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v3, v0, v1}, Lcom/android/settings_exlib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 647
    .restart local v3    # "ap":Lcom/android/settings_exlib/wifi/AccessPoint;
    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 649
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 653
    :cond_0
    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 654
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 655
    const v1, 0x11200ce

    .line 654
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 657
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 658
    invoke-virtual {v3}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 657
    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v6

    .line 659
    .local v6, "hideForget":Z
    :cond_1
    if-nez v6, :cond_3

    invoke-direct {p0, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->isPasspointWifi(Lcom/android/settings_exlib/wifi/AccessPoint;)Z

    move-result v6

    .line 660
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

    .line 661
    new-instance v0, Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v6, :cond_2

    move-object v3, v2

    .line 662
    .end local v3    # "ap":Lcom/android/settings_exlib/wifi/AccessPoint;
    :cond_2
    iget v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialogMode:I

    move-object v2, p0

    .line 661
    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/wifi/WifiDialog;-><init>(Landroid/content/Context;Lcom/android/settings_ex/wifi/WifiDialog$WifiDialogListener;Lcom/android/settings_exlib/wifi/AccessPoint;IZ)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    .line 667
    :goto_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    return-object v0

    .line 659
    .restart local v3    # "ap":Lcom/android/settings_exlib/wifi/AccessPoint;
    .restart local v6    # "hideForget":Z
    :cond_3
    const/4 v6, 0x1

    .local v6, "hideForget":Z
    goto :goto_0

    .line 660
    .end local v6    # "hideForget":Z
    :cond_4
    const-string/jumbo v0, "no"

    goto :goto_1

    .line 664
    :cond_5
    new-instance v0, Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialogMode:I

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/wifi/WifiDialog;-><init>(Landroid/content/Context;Lcom/android/settings_ex/wifi/WifiDialog$WifiDialogListener;Lcom/android/settings_exlib/wifi/AccessPoint;IZ)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    goto :goto_2

    .line 669
    .end local v3    # "ap":Lcom/android/settings_exlib/wifi/AccessPoint;
    :pswitch_2
    new-instance v0, Lcom/android/settings_ex/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/android/settings_ex/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    return-object v0

    .line 671
    :pswitch_3
    new-instance v0, Lcom/android/settings_ex/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/android/settings_ex/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    return-object v0

    .line 673
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    if-eqz v0, :cond_7

    .line 674
    new-instance v0, Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

    .line 675
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 676
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSecurity()I

    move-result v4

    .line 677
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 674
    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;-><init>(Landroid/content/Context;IILandroid/net/wifi/WifiManager;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

    .line 683
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

    return-object v0

    .line 678
    :cond_7
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_6

    .line 679
    new-instance v0, Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

    .line 680
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 679
    invoke-direct {v0, v1, v2, v4}, Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/net/wifi/WifiManager;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

    goto :goto_3

    .line 640
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
    .line 385
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 387
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/wifi/WifiSettings;->addOptionsMenuItems(Landroid/view/Menu;)V

    .line 388
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 383
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiWapiCertNotinstalledDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiWapiCertNotinstalledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiWapiCertNotinstalledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 209
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiWapiCertNotinstalledDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 218
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->releaseAccessPointListener()V

    .line 220
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onDestroy()V

    .line 204
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 336
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onDestroyView()V

    .line 338
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiEnabler;->teardownSwitchBar()V

    .line 335
    :cond_0
    return-void
.end method

.method public onForget(Lcom/android/settings_ex/wifi/WifiDialog;)V
    .locals 0
    .param p1, "dialog"    # Lcom/android/settings_ex/wifi/WifiDialog;

    .prologue
    .line 972
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->forget()V

    .line 971
    return-void
.end method

.method public onLevelChanged(Lcom/android/settings_exlib/wifi/AccessPoint;)V
    .locals 1
    .param p1, "accessPoint"    # Lcom/android/settings_exlib/wifi/AccessPoint;

    .prologue
    .line 1088
    invoke-virtual {p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;->onLevelChanged()V

    .line 1087
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v3, 0x7f0e0795

    const/4 v8, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v11, 0x1

    .line 440
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    return v6

    .line 442
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 494
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 444
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(I)V

    .line 445
    return v11

    .line 458
    :pswitch_2
    new-instance v10, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 459
    const-class v1, Lcom/android/settings_ex/Settings$WifiP2pSettingsActivity;

    .line 458
    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 460
    .local v10, "wifiDirectIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 461
    return v11

    .line 464
    .end local v10    # "wifiDirectIntent":Landroid/content/Intent;
    :pswitch_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(I)V

    .line 465
    return v11

    .line 467
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x88

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 468
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->forceScan()V

    .line 469
    return v11

    .line 471
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ex/SettingsActivity;

    if-eqz v0, :cond_1

    .line 472
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 473
    const-class v1, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, p0

    .line 472
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 480
    :goto_0
    return v11

    .line 476
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

    .line 482
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ex/SettingsActivity;

    if-eqz v0, :cond_2

    .line 483
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 484
    const-class v1, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 485
    const v3, 0x7f0e0796

    move-object v4, v2

    move-object v5, p0

    .line 483
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 491
    :goto_1
    return v11

    .line 487
    :cond_2
    const-class v0, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    .line 488
    const v7, 0x7f0e0796

    move-object v4, p0

    move-object v5, p0

    move-object v9, v2

    .line 487
    invoke-virtual/range {v4 .. v9}, Lcom/android/settings_ex/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 442
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
    .line 374
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onPause()V

    .line 375
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiEnabler;->pause()V

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->stopTracking()V

    .line 373
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 582
    instance-of v0, p1, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;

    if-eqz v0, :cond_4

    .line 583
    check-cast p1, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;

    .end local p1    # "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;->getAccessPoint()Lcom/android/settings_exlib/wifi/AccessPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 584
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    if-nez v0, :cond_0

    .line 585
    return v1

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSecurity()I

    move-result v0

    if-nez v0, :cond_1

    .line 591
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 594
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 595
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(Lcom/android/settings_exlib/wifi/AccessPoint;I)V

    .line 604
    :goto_0
    return v2

    .line 591
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 592
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 593
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 597
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-direct {p0, v0, v2}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(Lcom/android/settings_exlib/wifi/AccessPoint;I)V

    goto :goto_0

    .line 599
    .restart local p1    # "preference":Landroid/support/v7/preference/Preference;
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_5

    .line 600
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->onAddNetworkPressed()V

    goto :goto_0

    .line 602
    :cond_5
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 362
    .local v0, "activity":Landroid/app/Activity;
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onResume()V

    .line 363
    const-string/jumbo v1, "dummy"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->removePreference(Ljava/lang/String;)V

    .line 364
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    if-eqz v1, :cond_0

    .line 365
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/android/settings_exlib/wifi/WifiTracker;->startTracking()V

    .line 369
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 360
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 418
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 421
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    const-string/jumbo v1, "dialog_mode"

    iget v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialogMode:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 423
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    if-eqz v1, :cond_0

    .line 424
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 425
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 426
    const-string/jumbo v1, "wifi_ap_state"

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 430
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 431
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 432
    .local v0, "savedState":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;->saveState(Landroid/os/Bundle;)V

    .line 433
    const-string/jumbo v1, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 417
    .end local v0    # "savedState":Landroid/os/Bundle;
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 345
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onStart()V

    .line 348
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->createWifiEnabler()Lcom/android/settings_ex/wifi/WifiEnabler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    .line 344
    return-void
.end method

.method public onSubmit(Lcom/android/settings_ex/wifi/WifiDialog;)V
    .locals 1
    .param p1, "dialog"    # Lcom/android/settings_ex/wifi/WifiDialog;

    .prologue
    .line 977
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiDialog;->getController()Lcom/android/settings_ex/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->submit(Lcom/android/settings_ex/wifi/WifiConfigController;)V

    .line 976
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 182
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 184
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 185
    const v1, 0x7f040219

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressHeader:Landroid/widget/ProgressBar;

    .line 181
    :cond_0
    return-void
.end method

.method public onWifiStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x0

    .line 932
    packed-switch p1, :pswitch_data_0

    .line 931
    :cond_0
    :goto_0
    return-void

    .line 934
    :pswitch_0
    const v0, 0x7f0e0719

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->addMessagePreference(I)V

    .line 935
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto :goto_0

    .line 939
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->setOffMessage()V

    .line 940
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 942
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 943
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 945
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiP2PMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiP2PMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 932
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
    .line 925
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressHeader:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 926
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressHeader:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 924
    :cond_0
    return-void

    .line 926
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

    .line 984
    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 986
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_1

    .line 987
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    if-eqz v2, :cond_0

    .line 988
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v2

    .line 987
    if-eqz v2, :cond_0

    .line 989
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    .line 1030
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/WifiTracker;->resumeScanning()V

    .line 982
    return-void

    .line 993
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    if-eqz v2, :cond_4

    .line 994
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSecurity()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 995
    const-string/jumbo v2, "WifiSettings"

    const-string/jumbo v3, "WAPI: WAPI_CERT Selected"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    iget v2, p1, Lcom/android/settings_ex/wifi/WifiConfigController;->mCert_Cnt:I

    if-nez v2, :cond_2

    .line 998
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 999
    const v3, 0x7f0e0933

    .line 998
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1000
    const v3, 0x1080027

    .line 998
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1001
    const v3, 0x7f0e0279

    .line 998
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1002
    const v3, 0x104000a

    .line 998
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1004
    .local v1, "dlgBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiWapiCertNotinstalledDialog:Landroid/app/AlertDialog;

    .line 1005
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiWapiCertNotinstalledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1007
    const-string/jumbo v2, "WifiSettings"

    const-string/jumbo v3, "WAPI: Certificates are not installed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
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

    .line 1009
    return-void

    .line 1011
    .end local v1    # "dlgBuilder":Landroid/app/AlertDialog$Builder;
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/WifiConfigController;->getMode()I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 1012
    const-string/jumbo v2, "WifiSettings"

    const-string/jumbo v3, "WAPI CERT issue Save"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, v0, v3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0

    .line 1015
    :cond_3
    const-string/jumbo v2, "WifiSettings"

    const-string/jumbo v3, "WAPI CERT issue Connect"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, v0, v3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1017
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    .line 1021
    :cond_4
    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/WifiConfigController;->getMode()I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 1022
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, v0, v3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0

    .line 1024
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, v0, v3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1025
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    if-eqz v2, :cond_0

    .line 1026
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0
.end method
