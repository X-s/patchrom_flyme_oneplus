.class public Lcom/android/settings_ex/deviceinfo/UsbSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "UsbSettings.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_CHARGING:Ljava/lang/String; = "usb_charging"

.field private static final KEY_MTP:Ljava/lang/String; = "usb_mtp"

.field private static final KEY_PTP:Ljava/lang/String; = "usb_ptp"

.field private static final KEY_SDCARD:Ljava/lang/String; = "usb_sdcard"

.field private static final TAG:Ljava/lang/String; = "UsbSettings"

.field private static final USB_FUNCTION_DEFAULT:Ljava/lang/String;


# instance fields
.field private isVisible:Z

.field private mCharging:Landroid/preference/CheckBoxPreference;

.field private mLastFunction:Ljava/lang/String;

.field private mMtp:Landroid/preference/CheckBoxPreference;

.field private mPtp:Landroid/preference/CheckBoxPreference;

.field private mSDCard:Landroid/preference/CheckBoxPreference;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUsbAccessoryMode:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private operateInprogress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const-string v0, "ro.sys.usb.default.config"

    const-string v1, "diag,serial_smd,serial_tty,rmnet_bam,mass_storage"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->USB_FUNCTION_DEFAULT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 67
    iput-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->operateInprogress:Z

    .line 73
    iput-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->isVisible:Z

    .line 76
    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 79
    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mLastFunction:Ljava/lang/String;

    .line 82
    new-instance v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;-><init>(Lcom/android/settings_ex/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 161
    new-instance v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;-><init>(Lcom/android/settings_ex/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/UsbSettings;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings_ex/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->operateInprogress:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/deviceinfo/UsbSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/UsbSettings;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->updateUsbFunctionState()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 127
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 128
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 131
    :cond_0
    const v2, 0x7f06006b

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->addPreferencesFromResource(I)V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 134
    const-string v2, "usb_mtp"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    .line 135
    const-string v2, "usb_ptp"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    .line 136
    const-string v2, "usb_charging"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCharging:Landroid/preference/CheckBoxPreference;

    .line 137
    const-string v2, "usb_sdcard"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    .line 139
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->isMassStorageEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 140
    const-string v2, "UsbSettings"

    const-string v3, "createPreferenceHierarchy mass_storage enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 145
    .local v1, "um":Landroid/os/UserManager;
    const-string v2, "no_usb_file_transfer"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 146
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 147
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 148
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 151
    :cond_2
    return-object v0
.end method

.method private isMassStorageEnabled()Z
    .locals 6

    .prologue
    .line 112
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 113
    .local v4, "volumes":[Landroid/os/storage/StorageVolume;
    move-object v0, v4

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 114
    .local v3, "v":Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 113
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    .end local v3    # "v":Landroid/os/storage/StorageVolume;
    :cond_1
    const/4 v5, 0x0

    return v5
.end method

.method private updateToggles(Ljava/lang/String;)V
    .locals 5
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 221
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mLastFunction:Ljava/lang/String;

    .line 223
    const-string v1, "mtp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 225
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 226
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 227
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCharging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 250
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 251
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_usb_file_transfer"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 252
    const-string v1, "UsbSettings"

    const-string v2, "USB is locked down"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 254
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 255
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 264
    :goto_1
    return-void

    .line 228
    .end local v0    # "um":Landroid/os/UserManager;
    :cond_0
    const-string v1, "ptp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 230
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 231
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 232
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCharging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 233
    :cond_1
    const-string v1, "mass_storage"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 234
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 235
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 236
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 237
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCharging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 238
    :cond_2
    const-string v1, "charging"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 239
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 240
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 241
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 242
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCharging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 244
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 245
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 246
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 247
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCharging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 256
    .restart local v0    # "um":Landroid/os/UserManager;
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->operateInprogress:Z

    if-nez v1, :cond_5

    .line 258
    const-string v1, "UsbSettings"

    const-string v2, "USB Normal Mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_1

    .line 261
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method private updateUsbFunctionState()V
    .locals 3

    .prologue
    .line 102
    const-string v1, "persist.sys.usb.config"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "functions":Ljava/lang/String;
    sget-object v1, Lcom/android/settings_ex/deviceinfo/UsbSettings;->USB_FUNCTION_DEFAULT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    sget-object v1, Lcom/android/settings_ex/deviceinfo/UsbSettings;->USB_FUNCTION_DEFAULT:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getShowStatus()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->isVisible:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 157
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 158
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 159
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 186
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->isVisible:Z

    .line 189
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 190
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 193
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 271
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 310
    :cond_0
    :goto_0
    return v4

    .line 276
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 277
    .local v1, "um":Landroid/os/UserManager;
    const-string v2, "no_usb_file_transfer"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 282
    sget-object v0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->USB_FUNCTION_DEFAULT:Ljava/lang/String;

    .line 283
    .local v0, "function":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_3

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 284
    const-string v0, "mtp"

    .line 302
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mLastFunction:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 304
    iput-boolean v4, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->operateInprogress:Z

    .line 305
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2, v0, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 308
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_4

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 286
    const-string v0, "ptp"

    goto :goto_1

    .line 287
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCharging:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_5

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCharging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 288
    const-string v0, "charging"

    goto :goto_1

    .line 289
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_6

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 290
    const-string v0, "mass_storage"

    goto :goto_1

    .line 298
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mLastFunction:Ljava/lang/String;

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 197
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->isVisible:Z

    .line 203
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 206
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 208
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 211
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->updateUsbFunctionState()V

    .line 212
    return-void
.end method
