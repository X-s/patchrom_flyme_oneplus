.class public Lcom/oneplus/settings/storage/OPStorageSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPStorageSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/storage/OPStorageSettings$1;
    }
.end annotation


# static fields
.field private static final FILE_CREATE_PATH_8974:Ljava/lang/String; = "/sys/devices/platform/xhci-hcd/usb1/1-1/1-1:1.0/"

.field private static final FILE_CREATE_PATH_8994:Ljava/lang/String; = "/sys/devices/soc.0/f9200000.ssusb/f9200000.dwc3/xhci-hcd.0.auto/usb1/1-1/1-1:1.0/"

.field private static final FILE_CREATE_PATH_8996:Ljava/lang/String; = "/sys/devices/soc/6a00000.ssusb/6a00000.dwc3/xhci-hcd.0.auto/usb1/1-1/1-1:1.0/"

.field private static final FILE_DEL_PATH_8974:Ljava/lang/String; = "/sys/devices/platform/xhci-hcd/"

.field private static final FILE_DEL_PATH_8994:Ljava/lang/String; = "/sys/devices/soc.0/f9200000.ssusb/f9200000.dwc3/xhci-hcd.0.auto/"

.field private static final FILE_DEL_PATH_8996:Ljava/lang/String; = "/sys/devices/soc/6a00000.ssusb/6a00000.dwc3/xhci-hcd.0.auto/"

.field private static final KEY_OTG_READ_KEY:Ljava/lang/String; = "otg_read_enable"

.field private static final MSG_SWITCHUPDATE:I = 0x2704

.field private static final OTG_STATE_8974:Ljava/lang/String; = "/sys/module/dwc3/parameters/otg_state"

.field private static final OTG_STATE_8994:Ljava/lang/String; = "/sys/module/dwc3/parameters/otg_state"

.field private static final OTG_STATE_8996:Ljava/lang/String; = "/sys/module/dwc3_msm/parameters/otg_state"

.field private static final OTG_STATE_PATH:Ljava/lang/String; = "/proc/otg_config/otg_status"

.field private static final OTG_SUPPORT_PROP:Ljava/lang/String; = "persist.sys.oem.otg_support"

.field private static final PLATFORM_PROP:Ljava/lang/String; = "ro.board.platform"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final STORAGE_SETTINGS_KEY:Ljava/lang/String; = "storage_settings"

.field private static final TAG:Ljava/lang/String; = "OPStorageSettings"


# instance fields
.field private handler:Landroid/os/Handler;

.field private isOTGEnable:Ljava/lang/String;

.field private isOtgRunning:Z

.field private isOtgSupport:Z

.field private isSupportOTG:Z

.field private mContext:Landroid/content/Context;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mOtgReadEnablePreference:Landroid/support/v14/preference/SwitchPreference;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStoragePreference:Landroid/support/v7/preference/Preference;


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/storage/OPStorageSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/settings/storage/OPStorageSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->isOtgSupport:Z

    return v0
.end method

.method static synthetic -set0(Lcom/oneplus/settings/storage/OPStorageSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->isOtgRunning:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/settings/storage/OPStorageSettings;Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/settings/storage/OPStorageSettings;->handleOTGStatus(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 330
    new-instance v0, Lcom/oneplus/settings/storage/OPStorageSettings$1;

    invoke-direct {v0}, Lcom/oneplus/settings/storage/OPStorageSettings$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/storage/OPStorageSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 53
    const-string/jumbo v0, "false"

    iput-object v0, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->isOTGEnable:Ljava/lang/String;

    .line 54
    iput-boolean v1, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->isSupportOTG:Z

    .line 65
    iput-boolean v1, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->isOtgRunning:Z

    .line 66
    iput-boolean v1, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->isOtgSupport:Z

    .line 47
    return-void
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    monitor-enter p0

    .line 313
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 314
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 315
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 316
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->mMountService:Landroid/os/storage/IMountService;

    .line 321
    .end local v0    # "service":Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 318
    .restart local v0    # "service":Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string/jumbo v1, "ServiceManager"

    const-string/jumbo v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "service":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private handleOTGStatus(Z)V
    .locals 6
    .param p1, "status"    # Z

    .prologue
    .line 193
    const-string/jumbo v2, "OTG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleOTGStatus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    if-eqz p1, :cond_1

    .line 195
    const-string/jumbo v2, "persist.sys.oem.otg_support"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :goto_0
    new-instance v1, Lcom/oneplus/settings/storage/OPStorageSettings$3;

    const-string/jumbo v2, "otg_thread"

    invoke-direct {v1, p0, v2}, Lcom/oneplus/settings/storage/OPStorageSettings$3;-><init>(Lcom/oneplus/settings/storage/OPStorageSettings;Ljava/lang/String;)V

    .line 292
    .local v1, "otgthread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 294
    if-nez p1, :cond_0

    .line 296
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->mMountService:Landroid/os/storage/IMountService;

    if-eqz v2, :cond_0

    .line 297
    iget-object v2, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->mMountService:Landroid/os/storage/IMountService;

    const-string/jumbo v3, "/storage/UDiskA"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :cond_0
    :goto_1
    return-void

    .line 197
    .end local v1    # "otgthread":Ljava/lang/Thread;
    :cond_1
    const-string/jumbo v2, "persist.sys.oem.otg_support"

    const-string/jumbo v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 299
    .restart local v1    # "otgthread":Ljava/lang/Thread;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method private updateView()V
    .locals 3

    .prologue
    .line 132
    const-string/jumbo v0, "storage_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/storage/OPStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->mStoragePreference:Landroid/support/v7/preference/Preference;

    .line 133
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "zhuyang--mStoragePreference:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->mStoragePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->mStoragePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 136
    const-string/jumbo v0, "otg_read_enable"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/storage/OPStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->mOtgReadEnablePreference:Landroid/support/v14/preference/SwitchPreference;

    .line 137
    iget-object v0, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->mOtgReadEnablePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 151
    const-string/jumbo v0, "otg_read_enable"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/storage/OPStorageSettings;->removePreference(Ljava/lang/String;)V

    .line 130
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 327
    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const v1, 0x7f08005e

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/storage/OPStorageSettings;->addPreferencesFromResource(I)V

    .line 96
    invoke-virtual {p0}, Lcom/oneplus/settings/storage/OPStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->mContext:Landroid/content/Context;

    .line 98
    iget-object v1, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 100
    iget-object v1, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "oem.otgSwitch.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->isSupportOTG:Z

    .line 101
    invoke-direct {p0}, Lcom/oneplus/settings/storage/OPStorageSettings;->updateView()V

    .line 102
    invoke-direct {p0}, Lcom/oneplus/settings/storage/OPStorageSettings;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 105
    .local v0, "mountService":Landroid/os/storage/IMountService;
    new-instance v1, Lcom/oneplus/settings/storage/OPStorageSettings$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/storage/OPStorageSettings$2;-><init>(Lcom/oneplus/settings/storage/OPStorageSettings;)V

    iput-object v1, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->handler:Landroid/os/Handler;

    .line 90
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 309
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 14
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v11, 0x0

    const/4 v3, -0x1

    const/4 v13, 0x1

    const/4 v4, 0x0

    .line 158
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "otg_read_enable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->mOtgReadEnablePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iput-boolean v13, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->isOtgSupport:Z

    .line 165
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->isOtgRunning:Z

    if-nez v0, :cond_0

    .line 166
    iput-boolean v13, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->isOtgRunning:Z

    .line 167
    iget-boolean v0, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->isOtgSupport:Z

    invoke-direct {p0, v0}, Lcom/oneplus/settings/storage/OPStorageSettings;->handleOTGStatus(Z)V

    .line 171
    :cond_0
    return v13

    .line 163
    :cond_1
    iput-boolean v4, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->isOtgSupport:Z

    goto :goto_0

    .line 173
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "storage_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 174
    iget-object v0, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object v12

    .line 175
    .local v12, "disks":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/DiskInfo;>;"
    if-eqz v12, :cond_3

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 176
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 177
    .local v5, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "android.os.storage.extra.VOLUME_ID"

    const-string/jumbo v1, "private"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-class v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/settings/storage/OPStorageSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 184
    .end local v5    # "args":Landroid/os/Bundle;
    :goto_1
    return v13

    .line 181
    :cond_3
    const-class v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    move-object v6, p0

    move-object v7, p0

    move v9, v3

    move v10, v4

    invoke-virtual/range {v6 .. v11}, Lcom/oneplus/settings/storage/OPStorageSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 187
    .end local v12    # "disks":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/DiskInfo;>;"
    :cond_4
    return v4
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 125
    return-void
.end method
