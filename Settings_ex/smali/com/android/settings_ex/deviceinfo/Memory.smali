.class public Lcom/android/settings_ex/deviceinfo/Memory;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "Memory.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/deviceinfo/Memory$ConfirmClearCacheFragment;,
        Lcom/android/settings_ex/deviceinfo/Memory$ClearCacheObserver;
    }
.end annotation


# static fields
.field private static final DLG_CONFIRM_UNMOUNT:I = 0x1

.field private static final DLG_ERROR_UNMOUNT:I = 0x2

.field private static final ENV_SECONDARY_STORAGE:Ljava/lang/String; = "SECONDARY_STORAGE"

.field private static final KEY_PREFERENCE_DIVIDER:Ljava/lang/String; = "preference_divider"

.field private static final KEY_USB_CONNECT_PC:Ljava/lang/String; = "usb_connect_pc"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "MemorySettings"

.field private static final TAG_CONFIRM_CLEAR_CACHE:Ljava/lang/String; = "confirmClearCache"

.field private static sClickedMountPoint:Ljava/lang/String;

.field private static sLastClickedMountToggle:Landroid/preference/Preference;


# instance fields
.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mPreferenceDivider:Lcom/android/settings_ex/ui/OPPreferenceDivider;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolume:Landroid/os/storage/StorageVolume;

.field private mUSBConnectPC:Landroid/preference/Preference;

.field private mUnmountHandler:Landroid/os/Handler;

.field private mUnmountPreference:Landroid/preference/Preference;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 635
    new-instance v0, Lcom/android/settings_ex/deviceinfo/Memory$7;

    invoke-direct {v0}, Lcom/android/settings_ex/deviceinfo/Memory$7;-><init>()V

    sput-object v0, Lcom/android/settings_ex/deviceinfo/Memory;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 99
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    .line 213
    new-instance v0, Lcom/android/settings_ex/deviceinfo/Memory$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/Memory$1;-><init>(Lcom/android/settings_ex/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mUnmountPreference:Landroid/preference/Preference;

    .line 367
    new-instance v0, Lcom/android/settings_ex/deviceinfo/Memory$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/Memory$2;-><init>(Lcom/android/settings_ex/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mUnmountHandler:Landroid/os/Handler;

    .line 387
    new-instance v0, Lcom/android/settings_ex/deviceinfo/Memory$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/Memory$3;-><init>(Lcom/android/settings_ex/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    .line 596
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/deviceinfo/Memory;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/Memory;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/deviceinfo/Memory;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/Memory;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->unmount()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/deviceinfo/Memory;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/Memory;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->mount()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/deviceinfo/Memory;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/Memory;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mUnmountPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/deviceinfo/Memory;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/Memory;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/deviceinfo/Memory;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/Memory;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mUSBConnectPC:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/deviceinfo/Memory;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/Memory;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->doUnmount()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings_ex/deviceinfo/Memory;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/Memory;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->onCacheCleared()V

    return-void
.end method

.method private addCategory(Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;)V
    .locals 1
    .param p1, "category"    # Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 185
    invoke-virtual {p1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->init()V

    .line 186
    return-void
.end method

.method private doUnmount()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 489
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings_ex/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 490
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0904fb

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 496
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 498
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    sget-object v2, Lcom/android/settings_ex/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 499
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mUnmountPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 500
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mUnmountPreference:Landroid/preference/Preference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 502
    :cond_0
    sget-object v2, Lcom/android/settings_ex/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    const v3, 0x7f090511

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/deviceinfo/Memory;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 503
    sget-object v2, Lcom/android/settings_ex/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    const v3, 0x7f090512

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/deviceinfo/Memory;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 504
    sget-object v2, Lcom/android/settings_ex/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :cond_1
    :goto_1
    return-void

    .line 493
    .end local v1    # "mountService":Landroid/os/storage/IMountService;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090510

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 505
    .restart local v1    # "mountService":Landroid/os/storage/IMountService;
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/deviceinfo/Memory;->showDialogInner(I)V

    .line 508
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mUnmountPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_1

    .line 509
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mUnmountPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

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

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    .line 285
    .end local v0    # "service":Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 282
    .restart local v0    # "service":Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "MemorySettings"

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

.method private hasAppsAccessingStorage()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 520
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 521
    .local v0, "mountService":Landroid/os/storage/IMountService;
    sget-object v2, Lcom/android/settings_ex/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v1

    .line 522
    .local v1, "stUsers":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 536
    :cond_0
    return v3
.end method

.method private isMassStorageEnabled()Z
    .locals 3

    .prologue
    .line 190
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 191
    .local v1, "volumes":[Landroid/os/storage/StorageVolume;
    invoke-static {v1}, Landroid/os/storage/StorageManager;->getPrimaryVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 192
    .local v0, "primary":Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private mount()V
    .locals 3

    .prologue
    .line 556
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 558
    .local v0, "mountService":Landroid/os/storage/IMountService;
    if-eqz v0, :cond_0

    .line 559
    :try_start_0
    sget-object v1, Lcom/android/settings_ex/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    .line 566
    :goto_0
    return-void

    .line 561
    :cond_0
    const-string v1, "MemorySettings"

    const-string v2, "Mount service is null, can\'t mount"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 563
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private onCacheCleared()V
    .locals 3

    .prologue
    .line 569
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    .line 570
    .local v0, "category":Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->onCacheCleared()V

    goto :goto_0

    .line 572
    .end local v0    # "category":Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    return-void
.end method

.method private showDialogInner(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 515
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/Memory;->removeDialog(I)V

    .line 516
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/Memory;->showDialog(I)V

    .line 517
    return-void
.end method

.method private unmount()V
    .locals 3

    .prologue
    .line 542
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->hasAppsAccessingStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/Memory;->showDialogInner(I)V

    .line 553
    :goto_0
    return-void

    .line 546
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->doUnmount()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 548
    :catch_0
    move-exception v0

    .line 550
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MemorySettings"

    const-string v2, "Is MountService running?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    .line 103
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 107
    .local v1, "context":Landroid/content/Context;
    const-string v10, "usb"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/deviceinfo/Memory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/usb/UsbManager;

    iput-object v10, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 109
    invoke-static {v1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 110
    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v11, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v10, v11}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 112
    const v10, 0x7f06001c

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/deviceinfo/Memory;->addPreferencesFromResource(I)V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 117
    .local v6, "parentPreference":Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildForInternal(Landroid/content/Context;)Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings_ex/deviceinfo/Memory;->addCategory(Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;)V

    .line 122
    new-instance v10, Lcom/android/settings_ex/ui/OPPreferenceDivider;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/settings_ex/ui/OPPreferenceDivider;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mPreferenceDivider:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    .line 123
    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mPreferenceDivider:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    const-string v11, "preference_divider"

    invoke-virtual {v10, v11}, Lcom/android/settings_ex/ui/OPPreferenceDivider;->setKey(Ljava/lang/String;)V

    .line 124
    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mPreferenceDivider:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    invoke-virtual {v6, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 126
    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v10}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v7

    .line 127
    .local v7, "storageVolumes":[Landroid/os/storage/StorageVolume;
    move-object v0, v7

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_5

    aget-object v9, v0, v3

    .line 131
    .local v9, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v10

    if-nez v10, :cond_2

    .line 134
    const-string v10, "persist.sys.isUICCEnabled"

    invoke-static {v10, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 135
    .local v8, "uiccStatus":Z
    const-string v10, "persist.sys.isUsbOtgEnabled"

    invoke-static {v10, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 138
    .local v4, "isOtgSupported":Z
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "volume.isEmulated : .....123"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 140
    invoke-static {v9, v1}, Lcom/android/settings_ex/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_0

    if-eqz v8, :cond_1

    :cond_0
    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v10

    const-string v11, "uicc1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 142
    :cond_1
    const-string v10, "MemorySettings"

    const-string v11, "Hardware has UICC disabled, Hiding UICC UI"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v4    # "isOtgSupported":Z
    .end local v8    # "uiccStatus":Z
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 145
    .restart local v4    # "isOtgSupported":Z
    .restart local v8    # "uiccStatus":Z
    :cond_3
    invoke-static {v9, v1}, Lcom/android/settings_ex/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_4

    if-nez v4, :cond_4

    .line 146
    const-string v10, "MemorySettings"

    const-string v11, "Hardware has USB OTG not supported, Hiding OTG UI"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 154
    :cond_4
    const-string v10, "SECONDARY_STORAGE"

    invoke-static {v10}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, "dev":Ljava/lang/String;
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dev name : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 157
    if-eqz v2, :cond_5

    .line 158
    invoke-static {v1, v9}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildForPhysical(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings_ex/deviceinfo/Memory;->addCategory(Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;)V

    .line 175
    .end local v2    # "dev":Ljava/lang/String;
    .end local v4    # "isOtgSupported":Z
    .end local v8    # "uiccStatus":Z
    .end local v9    # "volume":Landroid/os/storage/StorageVolume;
    :cond_5
    new-instance v10, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mUSBConnectPC:Landroid/preference/Preference;

    .line 176
    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mUSBConnectPC:Landroid/preference/Preference;

    const-string v11, "usb_connect_pc"

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 177
    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mUSBConnectPC:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090b69

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mUSBConnectPC:Landroid/preference/Preference;

    invoke-virtual {v6, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 180
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I

    .prologue
    const v5, 0x7f090629

    .line 415
    packed-switch p1, :pswitch_data_0

    .line 484
    const/4 v3, 0x0

    :goto_0
    return-object v3

    .line 417
    :pswitch_0
    const v2, 0x7f09050c

    .line 418
    .local v2, "titleResId":I
    const v1, 0x7f09050d

    .line 421
    .local v1, "messageResId":I
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings_ex/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 422
    const v2, 0x7f0904f5

    .line 423
    const v1, 0x7f0904f7

    .line 430
    :cond_0
    :goto_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings_ex/deviceinfo/Memory$5;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/deviceinfo/Memory$5;-><init>(Lcom/android/settings_ex/deviceinfo/Memory;)V

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f09021b

    new-instance v5, Lcom/android/settings_ex/deviceinfo/Memory$4;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/deviceinfo/Memory$4;-><init>(Lcom/android/settings_ex/deviceinfo/Memory;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto :goto_0

    .line 425
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings_ex/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 426
    const v2, 0x7f0904f6

    .line 427
    const v1, 0x7f0904f8

    goto :goto_1

    .line 457
    .end local v1    # "messageResId":I
    .end local v2    # "titleResId":I
    :pswitch_1
    const v0, 0x7f09050f

    .line 460
    .local v0, "errMessageResId":I
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings_ex/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 461
    const v0, 0x7f0904f9

    .line 467
    :cond_2
    :goto_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f09050e

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings_ex/deviceinfo/Memory$6;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/deviceinfo/Memory$6;-><init>(Lcom/android/settings_ex/deviceinfo/Memory;)V

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 463
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings_ex/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 464
    const v0, 0x7f0904fa

    goto :goto_2

    .line 415
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 247
    const v0, 0x7f110005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 248
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 242
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 243
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v3, 0x7f090516

    const/4 v2, 0x0

    .line 261
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 273
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 263
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ex/SettingsActivity;

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    const-class v1, Lcom/android/settings_ex/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 271
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 268
    :cond_0
    const-class v0, Lcom/android/settings_ex/deviceinfo/UsbSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings_ex/deviceinfo/Memory;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f02bb
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 230
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 231
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 232
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    .line 233
    .local v0, "category":Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->onPause()V

    goto :goto_0

    .line 235
    .end local v0    # "category":Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 17
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    .line 297
    .local v10, "category":Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v10}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v16

    .line 298
    .local v16, "volume":Landroid/os/storage/StorageVolume;
    if-eqz v16, :cond_3

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mountToggleClicked(Landroid/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 299
    sput-object p2, Lcom/android/settings_ex/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    .line 300
    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings_ex/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    .line 301
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 304
    .local v15, "state":Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 307
    :cond_1
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 308
    .local v13, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v13, Landroid/os/Message;->what:I

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/Memory;->mUnmountHandler:Landroid/os/Handler;

    invoke-virtual {v2, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 310
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 311
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/Memory;->mUnmountPreference:Landroid/preference/Preference;

    .line 313
    new-instance v14, Landroid/os/Message;

    invoke-direct {v14}, Landroid/os/Message;-><init>()V

    .line 314
    .local v14, "msgs":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v14, Landroid/os/Message;->what:I

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/Memory;->mUnmountHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v14, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 328
    :goto_0
    const/4 v2, 0x1

    .line 364
    .end local v10    # "category":Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    .end local v13    # "msg":Landroid/os/Message;
    .end local v14    # "msgs":Landroid/os/Message;
    .end local v15    # "state":Ljava/lang/String;
    .end local v16    # "volume":Landroid/os/storage/StorageVolume;
    :goto_1
    return v2

    .line 318
    .restart local v10    # "category":Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    .restart local v15    # "state":Ljava/lang/String;
    .restart local v16    # "volume":Landroid/os/storage/StorageVolume;
    :cond_2
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 319
    .restart local v13    # "msg":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v13, Landroid/os/Message;->what:I

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/Memory;->mUnmountHandler:Landroid/os/Handler;

    invoke-virtual {v2, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 321
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 322
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/Memory;->mUnmountPreference:Landroid/preference/Preference;

    .line 324
    new-instance v14, Landroid/os/Message;

    invoke-direct {v14}, Landroid/os/Message;-><init>()V

    .line 325
    .restart local v14    # "msgs":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v14, Landroid/os/Message;->what:I

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/Memory;->mUnmountHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v14, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 332
    .end local v13    # "msg":Landroid/os/Message;
    .end local v14    # "msgs":Landroid/os/Message;
    .end local v15    # "state":Ljava/lang/String;
    :cond_3
    const-string v2, "cache"

    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 333
    invoke-static/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/Memory$ConfirmClearCacheFragment;->show(Lcom/android/settings_ex/deviceinfo/Memory;)V

    .line 334
    const/4 v2, 0x1

    goto :goto_1

    .line 337
    :cond_4
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;

    move-result-object v12

    .line 338
    .local v12, "intent":Landroid/content/Intent;
    if-eqz v12, :cond_0

    .line 340
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v2

    if-nez v2, :cond_5

    .line 342
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings_ex/deviceinfo/Memory;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :cond_5
    :goto_2
    const/4 v2, 0x1

    goto :goto_1

    .line 343
    :catch_0
    move-exception v9

    .line 344
    .local v9, "anfe":Landroid/content/ActivityNotFoundException;
    const-string v2, "MemorySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No activity found for intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 352
    .end local v9    # "anfe":Landroid/content/ActivityNotFoundException;
    .end local v10    # "category":Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v16    # "volume":Landroid/os/storage/StorageVolume;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/Memory;->mUSBConnectPC:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_7

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings_ex/SettingsActivity;

    if-eqz v2, :cond_8

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/SettingsActivity;

    const-class v3, Lcom/android/settings_ex/deviceinfo/UsbSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f090516

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 364
    :cond_7
    :goto_3
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 359
    :cond_8
    const-class v2, Lcom/android/settings_ex/deviceinfo/UsbSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f090516

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings_ex/deviceinfo/Memory;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_3
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 252
    const v3, 0x7f0f02bb

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 253
    .local v1, "usb":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "user"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 254
    .local v0, "um":Landroid/os/UserManager;
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->isMassStorageEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "no_usb_file_transfer"

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 256
    .local v2, "usbItemVisible":Z
    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 257
    return-void

    .line 254
    .end local v2    # "usbItemVisible":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 197
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 198
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 199
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    const-string v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 203
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 204
    .restart local v2    # "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 208
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    .line 209
    .local v0, "category":Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->onResume()V

    goto :goto_0

    .line 211
    .end local v0    # "category":Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    return-void
.end method
