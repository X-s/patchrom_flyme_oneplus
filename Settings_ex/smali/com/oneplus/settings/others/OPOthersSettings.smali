.class public Lcom/oneplus/settings/others/OPOthersSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPOthersSettings.java"

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

.field private static final STORAGE_SETTINGS_KEY:Ljava/lang/String; = "storage_settings"

.field private static final TAG:Ljava/lang/String; = "OPOthersSettings"

.field private static final USER_ENJOY_PLAY_KEY:Ljava/lang/String; = "user_enjoy_plan"


# instance fields
.field private handler:Landroid/os/Handler;

.field private isOTGEnable:Ljava/lang/String;

.field private isOtgRunning:Z

.field private isOtgSupport:Z

.field private isSupportOTG:Z

.field private mContext:Landroid/content/Context;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mOtgReadEnablePreference:Landroid/preference/SwitchPreference;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStoragePreference:Landroid/preference/Preference;

.field private mUserPlanPreference:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 45
    const-string v0, "false"

    iput-object v0, p0, Lcom/oneplus/settings/others/OPOthersSettings;->isOTGEnable:Ljava/lang/String;

    .line 46
    iput-boolean v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->isSupportOTG:Z

    .line 61
    iput-boolean v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->isOtgRunning:Z

    .line 62
    iput-boolean v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->isOtgSupport:Z

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/others/OPOthersSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/others/OPOthersSettings;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/oneplus/settings/others/OPOthersSettings;->isOtgSupport:Z

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/others/OPOthersSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/others/OPOthersSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/oneplus/settings/others/OPOthersSettings;->handleOTGStatus(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/oneplus/settings/others/OPOthersSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/others/OPOthersSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->isOtgRunning:Z

    return p1
.end method

.method static synthetic access$300(Lcom/oneplus/settings/others/OPOthersSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/others/OPOthersSettings;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oneplus/settings/others/OPOthersSettings;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 329
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 330
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 331
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mMountService:Landroid/os/storage/IMountService;

    .line 336
    .end local v0    # "service":Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 333
    .restart local v0    # "service":Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "ServiceManager"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 328
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

    .line 208
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

    .line 209
    if-ne p1, v4, :cond_1

    .line 210
    const-string v1, "persist.sys.oem.otg_support"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :goto_0
    new-instance v0, Lcom/oneplus/settings/others/OPOthersSettings$2;

    const-string v1, "otg_thread"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/others/OPOthersSettings$2;-><init>(Lcom/oneplus/settings/others/OPOthersSettings;Ljava/lang/String;)V

    .line 307
    .local v0, "otgthread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 309
    if-nez p1, :cond_0

    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mMountService:Landroid/os/storage/IMountService;

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mMountService:Landroid/os/storage/IMountService;

    const-string v2, "/storage/UDiskA"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :cond_0
    :goto_1
    return-void

    .line 212
    .end local v0    # "otgthread":Ljava/lang/Thread;
    :cond_1
    const-string v1, "persist.sys.oem.otg_support"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 314
    .restart local v0    # "otgthread":Ljava/lang/Thread;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private updateView()V
    .locals 3

    .prologue
    .line 128
    const-string v0, "storage_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/others/OPOthersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mStoragePreference:Landroid/preference/Preference;

    .line 129
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zhuyang--mStoragePreference:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mStoragePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mStoragePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 132
    const-string v0, "otg_read_enable"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/others/OPOthersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mOtgReadEnablePreference:Landroid/preference/SwitchPreference;

    .line 133
    iget-object v0, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mOtgReadEnablePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 135
    const-string v0, "user_enjoy_plan"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/others/OPOthersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mUserPlanPreference:Landroid/preference/SwitchPreference;

    .line 136
    iget-object v0, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mUserPlanPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 138
    iget-boolean v0, p0, Lcom/oneplus/settings/others/OPOthersSettings;->isSupportOTG:Z

    if-nez v0, :cond_0

    .line 140
    const-string v0, "otg_read_enable"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/others/OPOthersSettings;->removePreference(Ljava/lang/String;)V

    .line 153
    :goto_0
    return-void

    .line 144
    :cond_0
    const-string v0, "persist.sys.oem.otg_support"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/others/OPOthersSettings;->isOTGEnable:Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/oneplus/settings/others/OPOthersSettings;->isOTGEnable:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mOtgReadEnablePreference:Landroid/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mOtgReadEnablePreference:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 342
    const/16 v0, 0xef

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v1, 0x7f080048

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/others/OPOthersSettings;->addPreferencesFromResource(I)V

    .line 90
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mContext:Landroid/content/Context;

    .line 91
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 93
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oem.otgSwitch.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->isSupportOTG:Z

    .line 94
    invoke-direct {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->updateView()V

    .line 95
    invoke-direct {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 98
    .local v0, "mountService":Landroid/os/storage/IMountService;
    new-instance v1, Lcom/oneplus/settings/others/OPOthersSettings$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/others/OPOthersSettings$1;-><init>(Lcom/oneplus/settings/others/OPOthersSettings;)V

    iput-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->handler:Landroid/os/Handler;

    .line 115
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 324
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 14
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 159
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "user_enjoy_plan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_join_user_plan_settings"

    iget-object v0, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mUserPlanPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 162
    iget-object v0, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mUserPlanPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 164
    .local v13, "intent":Landroid/content/Intent;
    const-string v0, "INTENT_START_ODM"

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v13, v1}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 171
    :goto_1
    const/4 v0, 0x1

    .line 202
    .end local v13    # "intent":Landroid/content/Intent;
    :goto_2
    return v0

    .line 160
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 167
    :cond_1
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 168
    .restart local v13    # "intent":Landroid/content/Intent;
    const-string v0, "INTENT_STOP_ODM"

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v13, v1}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 172
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "otg_read_enable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 175
    iget-object v0, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mOtgReadEnablePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/others/OPOthersSettings;->isOtgSupport:Z

    .line 180
    :goto_3
    iget-boolean v0, p0, Lcom/oneplus/settings/others/OPOthersSettings;->isOtgRunning:Z

    if-nez v0, :cond_3

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/others/OPOthersSettings;->isOtgRunning:Z

    .line 182
    iget-boolean v0, p0, Lcom/oneplus/settings/others/OPOthersSettings;->isOtgSupport:Z

    invoke-direct {p0, v0}, Lcom/oneplus/settings/others/OPOthersSettings;->handleOTGStatus(Z)V

    .line 186
    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    .line 178
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/others/OPOthersSettings;->isOtgSupport:Z

    goto :goto_3

    .line 188
    :cond_5
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "storage_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 189
    iget-object v0, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object v12

    .line 190
    .local v12, "disks":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/DiskInfo;>;"
    if-eqz v12, :cond_6

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 191
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 192
    .local v5, "args":Landroid/os/Bundle;
    const-string v0, "android.os.storage.extra.VOLUME_ID"

    const-string v1, "private"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-class v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/settings/others/OPOthersSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 199
    .end local v5    # "args":Landroid/os/Bundle;
    :goto_4
    const/4 v0, 0x1

    goto :goto_2

    .line 196
    :cond_6
    const-class v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p0

    invoke-virtual/range {v6 .. v11}, Lcom/oneplus/settings/others/OPOthersSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_4

    .line 202
    .end local v12    # "disks":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/DiskInfo;>;"
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 122
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mUserPlanPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_join_user_plan_settings"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 124
    return-void

    .line 122
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
