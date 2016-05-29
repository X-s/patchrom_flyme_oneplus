.class public Lcom/android/settings_ex/PrivacySettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/PrivacySettings$PrivacySearchIndexProvider;
    }
.end annotation


# static fields
.field private static final AUTO_RESTORE:Ljava/lang/String; = "auto_restore"

.field private static final BACKUP_CATEGORY:Ljava/lang/String; = "backup_category"

.field private static final BACKUP_DATA:Ljava/lang/String; = "backup_data"

.field private static final BACKUP_INACTIVE:Ljava/lang/String; = "backup_inactive"

.field private static final CLEAR_ALL_NETWORK:Ljava/lang/String; = "clear_all_network"

.field private static final CLEAR_ALL_SETTINGS:Ljava/lang/String; = "clear_all_settings"

.field private static final CONFIGURE_ACCOUNT:Ljava/lang/String; = "configure_account"

.field private static final DELETE_SETTINGS:Ljava/lang/String; = "com.oneplus.opbakcup.deletesettingsdb"

.field private static final DIALOG_CLEAR_ALL_NETWORK_BACKUP:I = 0x3

.field private static final DIALOG_CLEAR_ALL_SETTINGS_BACKUP:I = 0x4

.field private static final DIALOG_ERASE_BACKUP:I = 0x2

.field private static final DIALOG_FACTORY_CLEAR_DATA_BACKUP:I = 0x6

.field private static final DIALOG_FACTORY_RESET_BACKUP:I = 0x5

.field private static final FACTORY_DATA_RESET_KEY:Ljava/lang/String; = "factory_data_reset"

.field private static final FILE_BT_SUPPLICANT:Ljava/lang/String; = "/data/misc/bluetooth/wpa_supplicant.conf"

.field private static final FILE_WIFI_SUPPLICANT:Ljava/lang/String; = "/data/misc/wifi/wpa_supplicant.conf"

.field private static final GSETTINGS_PROVIDER:Ljava/lang/String; = "com.google.settings"

.field private static final KEYGUARD_REQUEST:I = 0x64

.field private static final KEY_PERSONAL_DATA:Ljava/lang/String; = "personal_data_category"

.field private static final PERSONAL_DATA_CATEGORY:Ljava/lang/String; = "personal_data_category"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final SETTINGS_FACTORY_PASSWORD_KEY:Ljava/lang/String; = "setting_factory_password"

.field private static final SETTING_PASSWORD_REQUEST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PrivacySettings"

.field private static mWifiConfigFile:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAutoRestore:Landroid/preference/SwitchPreference;

.field private mBackup:Landroid/preference/SwitchPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

.field mCheckPasswordListener:Landroid/content/DialogInterface$OnClickListener;

.field private mChecked:Z

.field private mClearAllNetworkPreference:Landroid/preference/Preference;

.field private mClearAllSettingsPreference:Landroid/preference/Preference;

.field private mConfigure:Landroid/preference/PreferenceScreen;

.field private mConfirmDialog:Lcom/oneplus/settings/RestorePwdDialog;

.field private mContext:Landroid/content/Context;

.field private mDialogType:I

.field private mEnabled:Z

.field private mFactoryPasswordSettingsPreference:Landroid/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

.field mLocalManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

.field mModifyPasswordListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPersonalPereference:Landroid/preference/PreferenceCategory;

.field private mPreInstallNeedSize:J

.field private mResetDialog:Landroid/app/Dialog;

.field private mResetNeedSize:J

.field private mUnlocking:Z

.field private mWfm:Landroid/net/wifi/WifiManager;

.field private preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 727
    new-instance v0, Lcom/android/settings_ex/PrivacySettings$PrivacySearchIndexProvider;

    invoke-direct {v0}, Lcom/android/settings_ex/PrivacySettings$PrivacySearchIndexProvider;-><init>()V

    sput-object v0, Lcom/android/settings_ex/PrivacySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 137
    iput-boolean v1, p0, Lcom/android/settings_ex/PrivacySettings;->mChecked:Z

    .line 139
    iput-wide v2, p0, Lcom/android/settings_ex/PrivacySettings;->mPreInstallNeedSize:J

    .line 140
    iput-wide v2, p0, Lcom/android/settings_ex/PrivacySettings;->mResetNeedSize:J

    .line 325
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/PrivacySettings;->mKeyStore:Landroid/security/KeyStore;

    .line 326
    iput-boolean v1, p0, Lcom/android/settings_ex/PrivacySettings;->mUnlocking:Z

    .line 360
    new-instance v0, Lcom/android/settings_ex/PrivacySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/PrivacySettings$1;-><init>(Lcom/android/settings_ex/PrivacySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/PrivacySettings;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 677
    new-instance v0, Lcom/android/settings_ex/PrivacySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/PrivacySettings$2;-><init>(Lcom/android/settings_ex/PrivacySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/PrivacySettings;->mHandler:Landroid/os/Handler;

    .line 961
    new-instance v0, Lcom/android/settings_ex/PrivacySettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/PrivacySettings$3;-><init>(Lcom/android/settings_ex/PrivacySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/PrivacySettings;->mCheckPasswordListener:Landroid/content/DialogInterface$OnClickListener;

    .line 991
    new-instance v0, Lcom/android/settings_ex/PrivacySettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/PrivacySettings$4;-><init>(Lcom/android/settings_ex/PrivacySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/PrivacySettings;->mModifyPasswordListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/PrivacySettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/PrivacySettings;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/PrivacySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/PrivacySettings;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/settings_ex/PrivacySettings;->showEraseBackupDialog()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/PrivacySettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/PrivacySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/settings_ex/PrivacySettings;->modifyPassword(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/PrivacySettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/PrivacySettings;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/settings_ex/PrivacySettings;->confirmPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/PrivacySettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/PrivacySettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/settings_ex/PrivacySettings;->savePassword(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/PrivacySettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/PrivacySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/settings_ex/PrivacySettings;->setBackupEnabled(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/PrivacySettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/PrivacySettings;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/PrivacySettings;)Landroid/app/backup/IBackupManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/PrivacySettings;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-static {p0}, Lcom/android/settings_ex/PrivacySettings;->getNonVisibleKeys(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/PrivacySettings;)Lcom/oneplus/settings/RestorePwdDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/PrivacySettings;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/PrivacySettings;->mConfirmDialog:Lcom/oneplus/settings/RestorePwdDialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/PrivacySettings;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/PrivacySettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/settings_ex/PrivacySettings;->checkPassword(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/PrivacySettings;ZLandroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/PrivacySettings;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/PrivacySettings;->checkPasswordDialog(ZLandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_ex/PrivacySettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/PrivacySettings;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/settings_ex/PrivacySettings;->mChecked:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings_ex/PrivacySettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/PrivacySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/settings_ex/PrivacySettings;->mChecked:Z

    return p1
.end method

.method private checkPassword(Ljava/lang/String;)Z
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const v3, 0x7f090027

    const/4 v1, 0x0

    .line 890
    invoke-direct {p0}, Lcom/android/settings_ex/PrivacySettings;->getPassword()Ljava/lang/String;

    move-result-object v0

    .line 891
    .local v0, "password":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 892
    invoke-direct {p0, v3}, Lcom/android/settings_ex/PrivacySettings;->showHint(I)V

    .line 902
    :goto_0
    return v1

    .line 895
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 896
    :cond_1
    const-string v0, "0000"

    .line 898
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 899
    const/4 v1, 0x1

    goto :goto_0

    .line 901
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/settings_ex/PrivacySettings;->showHint(I)V

    goto :goto_0
.end method

.method private checkPasswordDialog(ZLandroid/content/DialogInterface$OnClickListener;)V
    .locals 6
    .param p1, "again"    # Z
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 876
    new-instance v0, Lcom/oneplus/settings/RestorePwdDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v3, p2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/settings/RestorePwdDialog;-><init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;ZI)V

    iput-object v0, p0, Lcom/android/settings_ex/PrivacySettings;->mConfirmDialog:Lcom/oneplus/settings/RestorePwdDialog;

    .line 878
    iget-object v0, p0, Lcom/android/settings_ex/PrivacySettings;->mConfirmDialog:Lcom/oneplus/settings/RestorePwdDialog;

    invoke-virtual {v0}, Lcom/oneplus/settings/RestorePwdDialog;->show()V

    .line 880
    return-void
.end method

.method private confirmPassword()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const v4, 0x7f090026

    .line 940
    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings;->mConfirmDialog:Lcom/oneplus/settings/RestorePwdDialog;

    if-nez v3, :cond_1

    .line 941
    invoke-direct {p0, v4}, Lcom/android/settings_ex/PrivacySettings;->showHint(I)V

    move-object v0, v2

    .line 953
    :cond_0
    :goto_0
    return-object v0

    .line 944
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings;->mConfirmDialog:Lcom/oneplus/settings/RestorePwdDialog;

    invoke-virtual {v3}, Lcom/oneplus/settings/RestorePwdDialog;->getPassWord()Ljava/lang/String;

    move-result-object v0

    .line 945
    .local v0, "newPassword":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings;->mConfirmDialog:Lcom/oneplus/settings/RestorePwdDialog;

    invoke-virtual {v3}, Lcom/oneplus/settings/RestorePwdDialog;->getNewPassWord()Ljava/lang/String;

    move-result-object v1

    .line 947
    .local v1, "newPasswordConfirm":Ljava/lang/String;
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 948
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 952
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/settings_ex/PrivacySettings;->showHint(I)V

    move-object v0, v2

    .line 953
    goto :goto_0
.end method

.method private enableWifi(Z)I
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 629
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 630
    .local v3, "supplicantFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 633
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    :cond_0
    :goto_0
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/data/com.android.settings_ex/databases/search_index.db"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 641
    .local v1, "searchFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 644
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 651
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 652
    .local v0, "manager":Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_3

    .line 654
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings_ex/PrivacySettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    .line 662
    :goto_2
    iget-object v4, p0, Lcom/android/settings_ex/PrivacySettings;->mWfm:Landroid/net/wifi/WifiManager;

    if-nez v4, :cond_2

    .line 663
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/PrivacySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/android/settings_ex/PrivacySettings;->mWfm:Landroid/net/wifi/WifiManager;

    .line 665
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/PrivacySettings;->mWfm:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_4

    .line 666
    iget-object v4, p0, Lcom/android/settings_ex/PrivacySettings;->mWfm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 667
    .local v2, "state":I
    iget-object v4, p0, Lcom/android/settings_ex/PrivacySettings;->mWfm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 673
    .end local v2    # "state":I
    :goto_3
    return v2

    .line 656
    :cond_3
    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/PrivacySettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    .line 658
    iget-object v4, p0, Lcom/android/settings_ex/PrivacySettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    goto :goto_2

    .line 670
    :cond_4
    const-string v4, "PrivacySettings"

    const-string v5, "Failed to fetch WifiManager instance"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v2, 0x4

    goto :goto_3

    .line 634
    .end local v0    # "manager":Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;
    .end local v1    # "searchFile":Ljava/io/File;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 645
    .restart local v1    # "searchFile":Ljava/io/File;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method private static getNonVisibleKeys(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 765
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 766
    .local v3, "nonVisibleKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "backup"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 768
    .local v0, "backupManager":Landroid/app/backup/IBackupManager;
    const/4 v2, 0x0

    .line 770
    .local v2, "isServiceActive":Z
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v0, v4}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 777
    :goto_0
    if-eqz v2, :cond_2

    .line 778
    const-string v4, "backup_inactive"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    :goto_1
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    const-string v5, "no_factory_reset"

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 786
    const-string v4, "personal_data_category"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.google.settings"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    if-nez v4, :cond_1

    .line 791
    const-string v4, "backup_category"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    :cond_1
    return-object v3

    .line 772
    :catch_0
    move-exception v1

    .line 773
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "PrivacySettings"

    const-string v5, "Failed querying backup manager service activity status. Assuming it is inactive."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 780
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v4, "auto_restore"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    const-string v4, "configure_account"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    const-string v4, "backup_data"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getPassword()Ljava/lang/String;
    .locals 3

    .prologue
    .line 910
    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_factory_reset_password"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 912
    .local v0, "pwd":Ljava/lang/String;
    return-object v0
.end method

.method private modifyPassword(Z)V
    .locals 6
    .param p1, "again"    # Z

    .prologue
    const/4 v2, 0x2

    .line 883
    new-instance v0, Lcom/oneplus/settings/RestorePwdDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings;->mModifyPasswordListener:Landroid/content/DialogInterface$OnClickListener;

    move v4, p1

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/settings/RestorePwdDialog;-><init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;ZI)V

    iput-object v0, p0, Lcom/android/settings_ex/PrivacySettings;->mConfirmDialog:Lcom/oneplus/settings/RestorePwdDialog;

    .line 885
    iget-object v0, p0, Lcom/android/settings_ex/PrivacySettings;->mConfirmDialog:Lcom/oneplus/settings/RestorePwdDialog;

    invoke-virtual {v0}, Lcom/oneplus/settings/RestorePwdDialog;->show()V

    .line 886
    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 4
    .param p1, "request"    # I

    .prologue
    .line 331
    const/4 v1, 0x0

    .line 332
    .local v1, "message":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 333
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 335
    .local v0, "lock":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    invoke-virtual {v0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->lockMode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 343
    const v3, 0x7f0905be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 346
    :goto_0
    const v3, 0x7f0900a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v3}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivityExt(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    return v3

    .line 337
    :pswitch_0
    const v3, 0x7f0905bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 338
    goto :goto_0

    .line 340
    :pswitch_1
    const v3, 0x7f0905c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 341
    goto :goto_0

    .line 335
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private runKeyguardConfirmations(I)Z
    .locals 4
    .param p1, "request"    # I

    .prologue
    .line 827
    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 834
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 835
    .local v0, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    invoke-virtual {v0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->isPasswordLockMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 837
    const/4 v2, 0x0

    const v3, 0x7f090030

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->confirmPassword(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 841
    :goto_0
    return v2

    :cond_0
    const v2, 0x7f090bce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f090556

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_0
.end method

.method private savePassword(Ljava/lang/String;)V
    .locals 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 921
    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_factory_reset_password"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 927
    invoke-direct {p0}, Lcom/android/settings_ex/PrivacySettings;->getPassword()Ljava/lang/String;

    move-result-object v0

    .line 928
    .local v0, "pwd":Ljava/lang/String;
    const-string v1, "0000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 937
    :goto_0
    return-void

    .line 932
    :cond_0
    const-string v1, "setting_factory_password"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f090035

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private setBackupEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 705
    iget-object v1, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    .line 707
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 715
    iget-object v1, p0, Lcom/android/settings_ex/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 716
    iget-object v1, p0, Lcom/android/settings_ex/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 717
    :goto_0
    return-void

    .line 708
    :catch_0
    move-exception v0

    .line 709
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/settings_ex/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;

    if-nez p1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 710
    iget-object v1, p0, Lcom/android/settings_ex/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    if-nez p1, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    move v1, v3

    .line 709
    goto :goto_1

    :cond_2
    move v2, v3

    .line 710
    goto :goto_2
.end method

.method private setConfigureSummary(Ljava/lang/String;)V
    .locals 2
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 458
    if-eqz p1, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/settings_ex/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 464
    :goto_0
    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    const v1, 0x7f090873

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private showClearAllNetworkDialog()V
    .locals 3

    .prologue
    .line 403
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/settings_ex/PrivacySettings;->mDialogType:I

    .line 404
    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090880

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 407
    .local v0, "msg":Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09087f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/PrivacySettings;->mResetDialog:Landroid/app/Dialog;

    .line 412
    return-void
.end method

.method private showClearAllSettingsDialog()V
    .locals 3

    .prologue
    .line 416
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/settings_ex/PrivacySettings;->mDialogType:I

    .line 417
    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090b8f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 419
    .local v0, "msg":Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09087f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/PrivacySettings;->mResetDialog:Landroid/app/Dialog;

    .line 424
    return-void
.end method

.method private showEraseBackupDialog()V
    .locals 3

    .prologue
    .line 391
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings_ex/PrivacySettings;->mDialogType:I

    .line 392
    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090880

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 395
    .local v0, "msg":Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09087f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/PrivacySettings;->mResetDialog:Landroid/app/Dialog;

    .line 399
    return-void
.end method

.method private showHint(I)V
    .locals 3
    .param p1, "stringID"    # I

    .prologue
    .line 957
    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 959
    return-void
.end method

.method private updateConfigureSummary()V
    .locals 3

    .prologue
    .line 468
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v2}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, "transport":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, v1}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, "summary":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    .end local v0    # "summary":Ljava/lang/String;
    .end local v1    # "transport":Ljava/lang/String;
    :goto_0
    return-void

    .line 471
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private updateToggles()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 430
    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 432
    .local v5, "res":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 433
    .local v0, "backupEnabled":Z
    const/4 v1, 0x0

    .line 434
    .local v1, "configIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 436
    .local v2, "configSummary":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v0

    .line 437
    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v6

    .line 438
    .local v6, "transport":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7, v6}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 439
    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7, v6}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 444
    .end local v6    # "transport":Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 446
    iget-object v10, p0, Lcom/android/settings_ex/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    const-string v7, "backup_auto_restore"

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_0

    move v7, v8

    :goto_1
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 448
    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 450
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    move v3, v8

    .line 452
    .local v3, "configureEnabled":Z
    :goto_2
    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 453
    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 454
    invoke-direct {p0, v2}, Lcom/android/settings_ex/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V

    .line 455
    return-void

    .line 440
    .end local v3    # "configureEnabled":Z
    :catch_0
    move-exception v4

    .line 442
    .local v4, "e":Landroid/os/RemoteException;
    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_0
    move v7, v9

    .line 446
    goto :goto_1

    :cond_1
    move v3, v9

    .line 450
    goto :goto_2
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 721
    const v0, 0x7f090a22

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 849
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 851
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 853
    const/16 v0, 0x38

    if-eq p1, v0, :cond_1

    .line 855
    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->finish()V

    .line 873
    :cond_0
    :goto_0
    return-void

    .line 860
    :cond_1
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 864
    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, -0x2

    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 483
    iget v3, p0, Lcom/android/settings_ex/PrivacySettings;->mDialogType:I

    if-ne v3, v9, :cond_4

    .line 485
    if-ne p2, v5, :cond_3

    .line 486
    invoke-direct {p0, v6}, Lcom/android/settings_ex/PrivacySettings;->setBackupEnabled(Z)V

    .line 491
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/PrivacySettings;->updateConfigureSummary()V

    .line 613
    :cond_1
    :goto_1
    iput v6, p0, Lcom/android/settings_ex/PrivacySettings;->mDialogType:I

    .line 615
    :cond_2
    return-void

    .line 487
    :cond_3
    if-ne p2, v7, :cond_0

    .line 489
    invoke-direct {p0, v8}, Lcom/android/settings_ex/PrivacySettings;->setBackupEnabled(Z)V

    goto :goto_0

    .line 492
    :cond_4
    iget v3, p0, Lcom/android/settings_ex/PrivacySettings;->mDialogType:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 494
    iget v3, p0, Lcom/android/settings_ex/PrivacySettings;->mDialogType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_6

    .line 496
    if-ne p2, v5, :cond_2

    .line 500
    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings;->mConfirmDialog:Lcom/oneplus/settings/RestorePwdDialog;

    invoke-virtual {v3}, Lcom/oneplus/settings/RestorePwdDialog;->getPassWord()Ljava/lang/String;

    move-result-object v2

    .line 501
    .local v2, "passwordString":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 505
    invoke-direct {p0, v2}, Lcom/android/settings_ex/PrivacySettings;->checkPassword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 507
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 508
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "actionid"

    invoke-virtual {v1, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 509
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.settings_ex"

    const-string v4, "com.android.settings_ex.SettingsMainFragement"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 511
    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 519
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_5
    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings;->mCheckPasswordListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v8, v3}, Lcom/android/settings_ex/PrivacySettings;->checkPasswordDialog(ZLandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    .line 522
    .end local v2    # "passwordString":Ljava/lang/String;
    :cond_6
    iget v3, p0, Lcom/android/settings_ex/PrivacySettings;->mDialogType:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    .line 530
    iget v3, p0, Lcom/android/settings_ex/PrivacySettings;->mDialogType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 532
    if-ne p2, v5, :cond_7

    .line 557
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 558
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "ONEPLUS_ACTION_RESET_SETTINGS_INTENT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 602
    invoke-direct {p0, v6}, Lcom/android/settings_ex/PrivacySettings;->enableWifi(Z)I

    .line 603
    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x9c4

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 606
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_7
    if-ne p2, v7, :cond_1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 171
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->isOwner()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings_ex/PrivacySettings;->mEnabled:Z

    .line 172
    iget-boolean v7, p0, Lcom/android/settings_ex/PrivacySettings;->mEnabled:Z

    if-nez v7, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mActivity:Landroid/app/Activity;

    .line 178
    const v7, 0x7f060050

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/PrivacySettings;->addPreferencesFromResource(I)V

    .line 179
    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 180
    .local v5, "screen":Landroid/preference/PreferenceScreen;
    const-string v7, "backup"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 183
    const-string v7, "backup_data"

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;

    .line 184
    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;

    iget-object v8, p0, Lcom/android/settings_ex/PrivacySettings;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 186
    const-string v7, "auto_restore"

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    .line 187
    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    iget-object v8, p0, Lcom/android/settings_ex/PrivacySettings;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 189
    const-string v7, "configure_account"

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    .line 192
    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings_ex/PrivacySettings;->getNonVisibleKeys(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    .line 193
    .local v3, "keysToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    .line 194
    .local v6, "screenPreferenceCount":I
    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 195
    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    .line 196
    .local v4, "preference":Landroid/preference/Preference;
    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 197
    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 194
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 200
    .end local v4    # "preference":Landroid/preference/Preference;
    :cond_3
    const-string v7, "backup_category"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 201
    .local v0, "backupCategory":Landroid/preference/PreferenceCategory;
    if-eqz v0, :cond_5

    .line 202
    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    .line 204
    .local v1, "backupCategoryPreferenceCount":I
    add-int/lit8 v2, v1, -0x1

    :goto_2
    if-ltz v2, :cond_5

    .line 205
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    .line 206
    .restart local v4    # "preference":Landroid/preference/Preference;
    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 207
    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 204
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 231
    .end local v1    # "backupCategoryPreferenceCount":I
    .end local v4    # "preference":Landroid/preference/Preference;
    :cond_5
    const-string v7, "personal_data_category"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    iput-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mPersonalPereference:Landroid/preference/PreferenceCategory;

    .line 233
    const-string v7, "clear_all_settings"

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mClearAllSettingsPreference:Landroid/preference/Preference;

    .line 234
    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mPersonalPereference:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/android/settings_ex/PrivacySettings;->mClearAllSettingsPreference:Landroid/preference/Preference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 236
    invoke-direct {p0}, Lcom/android/settings_ex/PrivacySettings;->updateToggles()V

    .line 243
    const/16 v7, 0x38

    invoke-direct {p0, v7}, Lcom/android/settings_ex/PrivacySettings;->runKeyguardConfirmation(I)Z

    move-result v7

    if-nez v7, :cond_0

    goto/16 :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 800
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/preference/Preference;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 805
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 812
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setting_factory_password"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 261
    iget-object v1, p0, Lcom/android/settings_ex/PrivacySettings;->mClearAllSettingsPreference:Landroid/preference/Preference;

    if-ne v1, p2, :cond_0

    .line 263
    invoke-direct {p0}, Lcom/android/settings_ex/PrivacySettings;->showClearAllSettingsDialog()V

    .line 296
    :goto_0
    return v0

    .line 267
    :cond_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setting_factory_password"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/settings_ex/PrivacySettings;->mDialogType:I

    .line 271
    iput-boolean v3, p0, Lcom/android/settings_ex/PrivacySettings;->mChecked:Z

    .line 272
    iget-object v1, p0, Lcom/android/settings_ex/PrivacySettings;->mModifyPasswordListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v3, v1}, Lcom/android/settings_ex/PrivacySettings;->checkPasswordDialog(ZLandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 276
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "factory_data_reset"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 278
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/settings_ex/PrivacySettings;->mDialogType:I

    .line 279
    iget-object v1, p0, Lcom/android/settings_ex/PrivacySettings;->mCheckPasswordListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v3, v1}, Lcom/android/settings_ex/PrivacySettings;->checkPasswordDialog(ZLandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 296
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 302
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 305
    iget-boolean v1, p0, Lcom/android/settings_ex/PrivacySettings;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 306
    invoke-direct {p0}, Lcom/android/settings_ex/PrivacySettings;->updateToggles()V

    .line 313
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/PrivacySettings;->getPassword()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "pwd":Ljava/lang/String;
    const-string v1, "0000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 323
    :goto_0
    return-void

    .line 318
    :cond_1
    const-string v1, "setting_factory_password"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f090035

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/settings_ex/PrivacySettings;->mResetDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/PrivacySettings;->mResetDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/settings_ex/PrivacySettings;->mResetDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 355
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/PrivacySettings;->mResetDialog:Landroid/app/Dialog;

    .line 356
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/PrivacySettings;->mDialogType:I

    .line 357
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStop()V

    .line 358
    return-void
.end method
