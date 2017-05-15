.class public Lcom/oneplus/settings/storage/OPStorageSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPStorageSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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

.field private static final TAG:Ljava/lang/String; = "OPStorageSettings"


# instance fields
.field private handler:Landroid/os/Handler;

.field private isOTGEnable:Ljava/lang/String;

.field private isOtgRunning:Z

.field private isOtgSupport:Z

.field private isSupportOTG:Z

.field private mContext:Landroid/content/Context;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mOtgReadEnablePreference:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 294
    new-instance v0, Lcom/oneplus/settings/storage/OPStorageSettings$3;

    invoke-direct {v0}, Lcom/oneplus/settings/storage/OPStorageSettings$3;-><init>()V

    sput-object v0, Lcom/oneplus/settings/storage/OPStorageSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 42
    const-string v0, "false"

    iput-object v0, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->isOTGEnable:Ljava/lang/String;

    .line 43
    iput-boolean v1, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->isSupportOTG:Z

    .line 54
    iput-boolean v1, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->isOtgRunning:Z

    .line 55
    iput-boolean v1, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->isOtgSupport:Z

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/storage/OPStorageSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/storage/OPStorageSettings;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->isOtgSupport:Z

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/storage/OPStorageSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/storage/OPStorageSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/oneplus/settings/storage/OPStorageSettings;->handleOTGStatus(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/oneplus/settings/storage/OPStorageSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/storage/OPStorageSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->isOtgRunning:Z

    return p1
.end method

.method static synthetic access$300(Lcom/oneplus/settings/storage/OPStorageSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/storage/OPStorageSettings;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 278
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 279
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 280
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->mMountService:Landroid/os/storage/IMountService;

    .line 285
    .end local v0    # "service":Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 282
    .restart local v0    # "service":Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "ServiceManager"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 277
    .end local v0    # "service":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private handleOTGStatus(Z)V
    .locals 5
    .param p1, "status"    # Z

    .prologue
    const/4 v4, 0x1

    .line 157
    const-string v1, "OTG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleOTGStatus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    if-ne p1, v4, :cond_1

    .line 159
    const-string v1, "persist.sys.oem.otg_support"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :goto_0
    new-instance v0, Lcom/oneplus/settings/storage/OPStorageSettings$2;

    const-string v1, "otg_thread"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/storage/OPStorageSettings$2;-><init>(Lcom/oneplus/settings/storage/OPStorageSettings;Ljava/lang/String;)V

    .line 256
    .local v0, "otgthread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 258
    if-nez p1, :cond_0

    .line 260
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->mMountService:Landroid/os/storage/IMountService;

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->mMountService:Landroid/os/storage/IMountService;

    const-string v2, "/storage/UDiskA"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :cond_0
    :goto_1
    return-void

    .line 161
    .end local v0    # "otgthread":Ljava/lang/Thread;
    :cond_1
    const-string v1, "persist.sys.oem.otg_support"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 263
    .restart local v0    # "otgthread":Ljava/lang/Thread;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private updateView()V
    .locals 2

    .prologue
    .line 113
    const-string v0, "otg_read_enable"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/storage/OPStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->mOtgReadEnablePreference:Landroid/preference/SwitchPreference;

    .line 114
    iget-object v0, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->mOtgReadEnablePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 115
    iget-boolean v0, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->isSupportOTG:Z

    if-nez v0, :cond_0

    .line 116
    const-string v0, "otg_read_enable"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/storage/OPStorageSettings;->removePreference(Ljava/lang/String;)V

    .line 129
    :goto_0
    return-void

    .line 120
    :cond_0
    const-string v0, "persist.sys.oem.otg_support"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->isOTGEnable:Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->isOTGEnable:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->mOtgReadEnablePreference:Landroid/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->mOtgReadEnablePreference:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 291
    const/16 v0, 0xef

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v1, 0x7f080045

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/storage/OPStorageSettings;->addPreferencesFromResource(I)V

    .line 79
    invoke-virtual {p0}, Lcom/oneplus/settings/storage/OPStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->mContext:Landroid/content/Context;

    .line 81
    iget-object v1, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oem.otgSwitch.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->isSupportOTG:Z

    .line 82
    invoke-direct {p0}, Lcom/oneplus/settings/storage/OPStorageSettings;->updateView()V

    .line 83
    invoke-direct {p0}, Lcom/oneplus/settings/storage/OPStorageSettings;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 86
    .local v0, "mountService":Landroid/os/storage/IMountService;
    new-instance v1, Lcom/oneplus/settings/storage/OPStorageSettings$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/storage/OPStorageSettings$1;-><init>(Lcom/oneplus/settings/storage/OPStorageSettings;)V

    iput-object v1, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->handler:Landroid/os/Handler;

    .line 103
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 134
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "otg_read_enable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    iget-object v2, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->mOtgReadEnablePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    iput-boolean v0, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->isOtgSupport:Z

    .line 141
    :goto_0
    iget-boolean v1, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->isOtgRunning:Z

    if-nez v1, :cond_0

    .line 142
    iput-boolean v0, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->isOtgRunning:Z

    .line 143
    iget-boolean v1, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->isOtgSupport:Z

    invoke-direct {p0, v1}, Lcom/oneplus/settings/storage/OPStorageSettings;->handleOTGStatus(Z)V

    .line 151
    :cond_0
    :goto_1
    return v0

    .line 139
    :cond_1
    iput-boolean v1, p0, Lcom/oneplus/settings/storage/OPStorageSettings;->isOtgSupport:Z

    goto :goto_0

    :cond_2
    move v0, v1

    .line 151
    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 109
    return-void
.end method
