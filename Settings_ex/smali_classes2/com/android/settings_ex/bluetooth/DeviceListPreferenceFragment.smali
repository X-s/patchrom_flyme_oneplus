.class public abstract Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;
.super Lcom/android/settings_ex/RestrictedSettingsFragment;
.source "DeviceListPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings_exlib/bluetooth/BluetoothCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$1;
    }
.end annotation


# static fields
.field private static final KEY_BT_DEVICE_LIST:Ljava/lang/String; = "bt_device_list"

.field private static final KEY_BT_SCAN:Ljava/lang/String; = "bt_scan"

.field private static final TAG:Ljava/lang/String; = "DeviceListPreferenceFragment"


# instance fields
.field private final REFRESH_MSG:I

.field private isDrawring:Z

.field isFirstAdd:Z

.field mAddDeviceHandler:Landroid/os/Handler;

.field mAddDeviceThread:Landroid/os/HandlerThread;

.field private mDeviceListGroup:Landroid/support/v7/preference/PreferenceGroup;

.field final mDevicePreferenceMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;",
            "Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;

.field mHandler:Landroid/os/Handler;

.field private mListener:Ljava/lang/reflect/Field;

.field private mListenerObject:Ljava/lang/Object;

.field mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

.field mLocalManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

.field private mNotifyHierarchyChanged:Ljava/lang/reflect/Method;

.field mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field mRunnable:Ljava/lang/Runnable;

.field mSelectedDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->isDrawring:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;)Landroid/support/v7/preference/PreferenceGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/support/v7/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;)Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mNotifyHierarchyChanged:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->isDrawring:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->resetPreferenceListener()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->setPreferenceListenerNull()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "restrictedKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 76
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 75
    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    .line 383
    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mListenerObject:Ljava/lang/Object;

    .line 384
    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mListener:Ljava/lang/reflect/Field;

    .line 385
    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mNotifyHierarchyChanged:Ljava/lang/reflect/Method;

    .line 386
    iput v2, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->REFRESH_MSG:I

    .line 387
    iput-boolean v2, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->isFirstAdd:Z

    .line 388
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mHandler:Landroid/os/Handler;

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mPreferenceList:Ljava/util/List;

    .line 392
    new-instance v0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$1;-><init>(Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mRunnable:Ljava/lang/Runnable;

    .line 455
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->isDrawring:Z

    .line 80
    sget-object v0, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 78
    return-void
.end method

.method private initPreferenceListener()V
    .locals 4

    .prologue
    .line 442
    :try_start_0
    const-class v0, Landroid/support/v7/preference/PreferenceGroup;

    .line 443
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 444
    const-string/jumbo v2, "notifyHierarchyChanged"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mNotifyHierarchyChanged:Ljava/lang/reflect/Method;

    .line 445
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mNotifyHierarchyChanged:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 446
    const-string/jumbo v2, "mListener"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mListener:Ljava/lang/reflect/Field;

    .line 447
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mListener:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 448
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mListener:Ljava/lang/reflect/Field;

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mListenerObject:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 449
    :catch_0
    move-exception v1

    .line 451
    .local v1, "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private resetPreferenceListener()V
    .locals 4

    .prologue
    .line 430
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mListener:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mListenerObject:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 432
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mListener:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mListenerObject:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 433
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e1":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setDrawerListener()V
    .locals 3

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 458
    .local v0, "activity":Landroid/app/Activity;
    instance-of v2, v0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;

    if-nez v2, :cond_0

    .line 459
    return-void

    :cond_0
    move-object v1, v0

    .line 461
    check-cast v1, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;

    .line 462
    .local v1, "drawerActivity":Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;
    new-instance v2, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$5;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$5;-><init>(Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;)V

    invoke-virtual {v1, v2}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 456
    return-void
.end method

.method private setPreferenceListenerNull()V
    .locals 4

    .prologue
    .line 415
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mListener:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 416
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->initPreferenceListener()V

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mListener:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    .line 421
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mListener:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/support/v7/preference/PreferenceGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :cond_1
    :goto_0
    return-void

    .line 422
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e1":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateProgressUi(Z)V
    .locals 1
    .param p1, "start"    # Z

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/support/v7/preference/PreferenceGroup;

    instance-of v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothProgressCategory;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/support/v7/preference/PreferenceGroup;

    check-cast v0, Lcom/android/settings_ex/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothProgressCategory;->setProgress(Z)V

    .line 368
    :cond_0
    return-void
.end method


# virtual methods
.method addCachedDevices()V
    .locals 6

    .prologue
    .line 195
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v2

    .line 196
    .local v2, "cachedDevices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;>;"
    const-string/jumbo v3, "DeviceListPreferenceFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "oneplus addCachedDevices cachedDevice size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cachedDevice$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    .line 199
    .local v0, "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onDeviceAddedNormal(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 193
    .end local v0    # "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    :cond_0
    return-void
.end method

.method abstract addPreferencesForActivity()V
.end method

.method protected cancelRunnable()V
    .locals 2

    .prologue
    .line 408
    const-string/jumbo v0, "DeviceListPreferenceFragment"

    const-string/jumbo v1, "cancelRunnable !!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 410
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->isFirstAdd:Z

    .line 407
    return-void
.end method

.method createDevicePreference(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;)V
    .locals 8
    .param p1, "cachedDevice"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 258
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/support/v7/preference/PreferenceGroup;

    if-nez v4, :cond_0

    .line 259
    const-string/jumbo v4, "DeviceListPreferenceFragment"

    const-string/jumbo v5, "Trying to create a device preference before the list group/category exists!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-void

    .line 264
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .line 267
    .local v2, "preference":Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;
    if-nez v2, :cond_3

    .line 268
    new-instance v2, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .end local v2    # "preference":Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, p1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;)V

    .line 269
    .restart local v2    # "preference":Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;
    invoke-virtual {v2, v1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setKey(Ljava/lang/String;)V

    .line 270
    const-string/jumbo v4, "DeviceListPreferenceFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "createDevicePreference cachedDevice = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 273
    .local v0, "count":I
    iget-boolean v4, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->isFirstAdd:Z

    if-eqz v4, :cond_1

    .line 274
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->isFirstAdd:Z

    .line 275
    move-object v3, v2

    .line 276
    .local v3, "preference1":Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mAddDeviceHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$4;

    invoke-direct {v5, p0, v1, v2}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$4;-><init>(Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;Ljava/lang/String;Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 298
    .end local v0    # "count":I
    .end local v3    # "preference1":Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->initDevicePreference(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V

    .line 299
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    return-void

    .line 284
    .restart local v0    # "count":I
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mPreferenceList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 285
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 287
    :cond_2
    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->filterBondedDevice(Ljava/lang/String;Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V

    goto :goto_0

    .line 293
    .end local v0    # "count":I
    :cond_3
    const-string/jumbo v4, "DeviceListPreferenceFragment"

    const-string/jumbo v5, "createDevicePreference preference.rebind() "

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v4, v2}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0
.end method

.method createDevicePreferenceNormal(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;)V
    .locals 5
    .param p1, "cachedDevice"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 320
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/support/v7/preference/PreferenceGroup;

    if-nez v2, :cond_0

    .line 321
    const-string/jumbo v2, "DeviceListPreferenceFragment"

    const-string/jumbo v3, "Trying to create a device preference before the list group/category exists!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-void

    .line 326
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .line 329
    .local v1, "preference":Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;
    if-nez v1, :cond_1

    .line 330
    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .end local v1    # "preference":Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;)V

    .line 331
    .restart local v1    # "preference":Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setKey(Ljava/lang/String;)V

    .line 332
    const-string/jumbo v2, "DeviceListPreferenceFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createDevicePreferenceNormal cachedDevice = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 344
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->initDevicePreference(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V

    .line 345
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    return-void

    .line 339
    :cond_1
    const-string/jumbo v2, "DeviceListPreferenceFragment"

    const-string/jumbo v3, "createDevicePreferenceNormal preference.rebind() "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0
.end method

.method filterBondedDevice(Ljava/lang/String;Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "p"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 241
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 242
    .local v0, "bondeddevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 243
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 244
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 245
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 246
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    const-string/jumbo v3, "DeviceListPreferenceFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mAddDeviceHandler device.getAddress() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 248
    const-string/jumbo v3, "DeviceListPreferenceFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "has bonded device addPreference key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v3, p2}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 253
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_1
    const-string/jumbo v3, "DeviceListPreferenceFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no bonded device addPreference key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v3, p2}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 240
    :cond_2
    return-void
.end method

.method initDevicePreference(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V
    .locals 0
    .param p1, "preference"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 353
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1
    .param p1, "bluetoothState"    # I

    .prologue
    .line 375
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 376
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    .line 374
    :cond_0
    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    .param p2, "state"    # I

    .prologue
    .line 380
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    .line 96
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 97
    const-string/jumbo v0, "DeviceListPreferenceFragment"

    const-string/jumbo v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    .line 102
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->addPreferencesForActivity()V

    .line 104
    const-string/jumbo v0, "bt_device_list"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/support/v7/preference/PreferenceGroup;

    .line 106
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "add bluetooth"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mAddDeviceThread:Landroid/os/HandlerThread;

    .line 107
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mAddDeviceThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 108
    new-instance v0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$2;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mAddDeviceThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$2;-><init>(Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mAddDeviceHandler:Landroid/os/Handler;

    .line 130
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->setDrawerListener()V

    .line 92
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onDestroy()V

    .line 169
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 170
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mAddDeviceThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 165
    return-void
.end method

.method public onDeviceAdded(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .param p1, "cachedDevice"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-virtual {p1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;->matches(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->createDevicePreference(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;)V

    .line 227
    :cond_2
    return-void
.end method

.method public onDeviceAddedNormal(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;)V
    .locals 4
    .param p1, "cachedDevice"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 304
    const-string/jumbo v1, "DeviceListPreferenceFragment"

    const-string/jumbo v2, "oneplus bluetooth onDeviceAddedNormal"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 306
    return-void

    .line 308
    :cond_0
    const-string/jumbo v1, "DeviceListPreferenceFragment"

    const-string/jumbo v2, "oneplus bluetooth onDeviceAddedNormal is not null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    return-void

    .line 311
    :cond_1
    const-string/jumbo v1, "DeviceListPreferenceFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "oneplus mDevicePreferenceMap.size() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-virtual {p1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;->matches(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 313
    .local v0, "needCreateDevicePreferenceNormal":Z
    const-string/jumbo v1, "DeviceListPreferenceFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "oneplus needCreateDevicePreferenceNormal = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    if-eqz v0, :cond_2

    .line 315
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->createDevicePreferenceNormal(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;)V

    .line 303
    :cond_2
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .param p1, "cachedDevice"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 358
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .line 359
    .local v0, "preference":Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;
    if-eqz v0, :cond_0

    .line 360
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 357
    :cond_0
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V
    .locals 0
    .param p1, "btPreference"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 224
    invoke-virtual {p1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->onClicked()V

    .line 223
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onPause()V

    .line 155
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    return-void

    .line 159
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->removeAllDevices()V

    .line 160
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settings_exlib/bluetooth/BluetoothCallback;)V

    .line 153
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 207
    const-string/jumbo v2, "bt_scan"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2, v4}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 209
    return v4

    .line 212
    :cond_0
    instance-of v2, p1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 213
    check-cast v0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .line 214
    .local v0, "btPreference":Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;
    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 215
    .local v1, "device":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 216
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V

    .line 217
    return v4

    .line 220
    .end local v0    # "btPreference":Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;
    .end local v1    # "device":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onResume()V

    .line 144
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 147
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settings_exlib/bluetooth/BluetoothCallback;)V

    .line 149
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    .line 142
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0
    .param p1, "started"    # Z

    .prologue
    .line 365
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    .line 364
    return-void
.end method

.method removeAllDevices()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 176
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 179
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mAddDeviceHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$3;-><init>(Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    return-void
.end method

.method setDeviceListGroup(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 0
    .param p1, "preferenceGroup"    # Landroid/support/v7/preference/PreferenceGroup;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/support/v7/preference/PreferenceGroup;

    .line 134
    return-void
.end method

.method final setFilter(I)V
    .locals 1
    .param p1, "filterType"    # I

    .prologue
    .line 88
    invoke-static {p1}, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter;->getFilter(I)Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 87
    return-void
.end method

.method final setFilter(Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 0
    .param p1, "filter"    # Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 83
    return-void
.end method
