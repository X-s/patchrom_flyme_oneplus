.class public final Lcom/android/settings_ex/bluetooth/DockService;
.super Landroid/app/Service;
.source "DockService.java"

# interfaces
.implements Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final DISABLE_BT_GRACE_PERIOD:J = 0x7d0L

.field private static final INVALID_STARTID:I = -0x64

.field private static final KEY_CONNECT_RETRY_COUNT:Ljava/lang/String; = "connect_retry_count"

.field private static final KEY_DISABLE_BT:Ljava/lang/String; = "disable_bt"

.field private static final KEY_DISABLE_BT_WHEN_UNDOCKED:Ljava/lang/String; = "disable_bt_when_undock"

.field private static final MAX_CONNECT_RETRY:I = 0x6

.field private static final MSG_TYPE_DISABLE_BT:I = 0x22b

.field private static final MSG_TYPE_DOCKED:I = 0xde

.field private static final MSG_TYPE_SHOW_UI:I = 0x6f

.field private static final MSG_TYPE_UNDOCKED_PERMANENT:I = 0x1bc

.field private static final MSG_TYPE_UNDOCKED_TEMPORARY:I = 0x14d

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "dock_settings"

.field private static final TAG:Ljava/lang/String; = "DockService"

.field private static final UNDOCKED_GRACE_PERIOD:J = 0x3e8L


# instance fields
.field private mAudioMediaCheckbox:Landroid/widget/CheckBox;

.field private final mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mCheckedItems:[Z

.field private final mClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

.field private mDialog:Landroid/app/AlertDialog;

.field private final mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

.field private final mMultiClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field private mPendingDevice:Landroid/bluetooth/BluetoothDevice;

.field private mPendingStartId:I

.field private mPendingTurnOffStartId:I

.field private mPendingTurnOnStartId:I

.field private mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

.field private mProfiles:[Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

.field private mRunnable:Ljava/lang/Runnable;

.field private volatile mServiceHandler:Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mStartIdAssociatedWithDialog:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, -0x64

    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 120
    iput v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingTurnOnStartId:I

    .line 121
    iput v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingTurnOffStartId:I

    .line 561
    new-instance v0, Lcom/android/settings_ex/bluetooth/DockService$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/DockService$2;-><init>(Lcom/android/settings_ex/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mMultiClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 573
    new-instance v0, Lcom/android/settings_ex/bluetooth/DockService$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/DockService$3;-><init>(Lcom/android/settings_ex/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 591
    new-instance v0, Lcom/android/settings_ex/bluetooth/DockService$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/DockService$4;-><init>(Lcom/android/settings_ex/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 605
    new-instance v0, Lcom/android/settings_ex/bluetooth/DockService$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/DockService$5;-><init>(Lcom/android/settings_ex/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/bluetooth/DockService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/DockService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/DockService;->processMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/DockService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/bluetooth/DockService;->handleDocked(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/bluetooth/DockService;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/DockService;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mCheckedItems:[Z

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/DockService;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/DockService;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/bluetooth/DockService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/DockService;

    .prologue
    .line 51
    iget v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mStartIdAssociatedWithDialog:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/DockService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/bluetooth/DockService;->applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings_ex/bluetooth/DockService;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/DockService;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mAudioMediaCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private declared-synchronized applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 13
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "startId"    # I

    .prologue
    .line 818
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfiles:[Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/DockService;->mCheckedItems:[Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_1

    .line 883
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 824
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mCheckedItems:[Z

    .local v0, "arr$":[Z
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_4

    aget-boolean v4, v0, v6

    .line 825
    .local v4, "enable":Z
    if-eqz v4, :cond_3

    .line 826
    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v10}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    .line 832
    .local v1, "btState":I
    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v10}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->enable()Z

    .line 835
    const/16 v10, 0xc

    if-eq v1, v10, :cond_3

    .line 836
    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v11, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v10, v11}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 840
    :cond_2
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 841
    iput p2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingStartId:I

    .line 842
    const/16 v10, 0xb

    if-eq v1, v10, :cond_0

    .line 843
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "disable_bt_when_undock"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 818
    .end local v0    # "arr$":[Z
    .end local v1    # "btState":I
    .end local v4    # "enable":Z
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 824
    .restart local v0    # "arr$":[Z
    .restart local v4    # "enable":Z
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 851
    .end local v4    # "enable":Z
    :cond_4
    const/4 v10, 0x0

    :try_start_2
    iput-object v10, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 853
    const/4 v3, 0x0

    .line 854
    .local v3, "callConnect":Z
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    .line 856
    .local v2, "cachedDevice":Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfiles:[Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    array-length v10, v10

    if-ge v5, v10, :cond_7

    .line 857
    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfiles:[Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    aget-object v8, v10, v5

    .line 860
    .local v8, "profile":Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v10, v10, v5

    if-eqz v10, :cond_6

    .line 862
    const/4 v3, 0x1

    .line 871
    :cond_5
    :goto_3
    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v10, v10, v5

    invoke-interface {v8, p1, v10}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 856
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 863
    :cond_6
    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v10, v10, v5

    if-nez v10, :cond_5

    .line 865
    invoke-virtual {v2}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    invoke-interface {v8, v10}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v9

    .line 866
    .local v9, "status":I
    const/4 v10, 0x2

    if-ne v9, v10, :cond_5

    .line 868
    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfiles:[Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    aget-object v10, v10, v5

    invoke-virtual {v2, v10}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)V

    goto :goto_3

    .line 879
    .end local v8    # "profile":Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    .end local v9    # "status":I
    :cond_7
    if-eqz v3, :cond_0

    .line 881
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->connect(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized connectIfEnabled(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 806
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 808
    .local v0, "cachedDevice":Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v3

    .line 809
    .local v3, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    .line 810
    .local v2, "profile":Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    invoke-interface {v2, p1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->getPreferred(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_0

    .line 811
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->connect(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 815
    .end local v2    # "profile":Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    :cond_1
    monitor-exit p0

    return-void

    .line 806
    .end local v0    # "cachedDevice":Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private createDialog(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 14
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "startId"    # I

    .prologue
    .line 482
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 484
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 485
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 487
    :cond_0
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 488
    packed-switch p2, :pswitch_data_0

    .line 558
    :goto_0
    return-void

    .line 498
    :pswitch_0
    const/4 v4, 0x0

    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v4, v6}, Lcom/android/settings_ex/bluetooth/DockService;->startForeground(ILandroid/app/Notification;)V

    .line 500
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 502
    .local v1, "ab":Landroid/app/AlertDialog$Builder;
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/bluetooth/DockService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 504
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mAudioMediaCheckbox:Landroid/widget/CheckBox;

    .line 506
    if-eqz p1, :cond_4

    .line 508
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->hasDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v8, 0x1

    .line 511
    .local v8, "firstTime":Z
    :goto_1
    move/from16 v0, p2

    invoke-direct {p0, p1, v0, v8}, Lcom/android/settings_ex/bluetooth/DockService;->initBtSettings(Landroid/bluetooth/BluetoothDevice;IZ)[Ljava/lang/CharSequence;

    move-result-object v10

    .line 513
    .local v10, "items":[Ljava/lang/CharSequence;
    const v4, 0x7f090317

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 516
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/DockService;->mMultiClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    invoke-virtual {v1, v10, v4, v6}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 519
    const v4, 0x7f0400b9

    const/4 v6, 0x0

    invoke-virtual {v9, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 520
    .local v2, "view":Landroid/view/View;
    const v4, 0x7f0f01f6

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/CheckBox;

    .line 523
    .local v12, "rememberCheckbox":Landroid/widget/CheckBox;
    if-nez v8, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->getDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    const/4 v7, 0x1

    .line 525
    .local v7, "checked":Z
    :goto_2
    invoke-virtual {v12, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 526
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v12, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 545
    .end local v8    # "firstTime":Z
    .end local v10    # "items":[Ljava/lang/CharSequence;
    .end local v12    # "rememberCheckbox":Landroid/widget/CheckBox;
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DockService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v11, v4, Landroid/util/DisplayMetrics;->density:F

    .line 546
    .local v11, "pixelScaleFactor":F
    const/high16 v4, 0x41600000    # 14.0f

    mul-float/2addr v4, v11

    float-to-int v3, v4

    .line 547
    .local v3, "viewSpacingLeft":I
    const/high16 v4, 0x41600000    # 14.0f

    mul-float/2addr v4, v11

    float-to-int v5, v4

    .line 548
    .local v5, "viewSpacingRight":I
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    .line 551
    const v4, 0x104000a

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/DockService;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 553
    move/from16 v0, p3

    iput v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mStartIdAssociatedWithDialog:I

    .line 554
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 555
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v6, 0x7d9

    invoke-virtual {v4, v6}, Landroid/view/Window;->setType(I)V

    .line 556
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 557
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 508
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "viewSpacingLeft":I
    .end local v5    # "viewSpacingRight":I
    .end local v7    # "checked":Z
    .end local v11    # "pixelScaleFactor":F
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 523
    .restart local v2    # "view":Landroid/view/View;
    .restart local v8    # "firstTime":Z
    .restart local v10    # "items":[Ljava/lang/CharSequence;
    .restart local v12    # "rememberCheckbox":Landroid/widget/CheckBox;
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 532
    .end local v2    # "view":Landroid/view/View;
    .end local v8    # "firstTime":Z
    .end local v10    # "items":[Ljava/lang/CharSequence;
    .end local v12    # "rememberCheckbox":Landroid/widget/CheckBox;
    :cond_4
    const v4, 0x7f090317

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 534
    const v4, 0x7f040042

    const/4 v6, 0x0

    invoke-virtual {v9, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 535
    .restart local v2    # "view":Landroid/view/View;
    const v4, 0x7f0f00a8

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mAudioMediaCheckbox:Landroid/widget/CheckBox;

    .line 538
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DockService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "dock_audio_media_enabled"

    const/4 v13, 0x0

    invoke-static {v4, v6, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_5

    const/4 v7, 0x1

    .line 541
    .restart local v7    # "checked":Z
    :goto_4
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mAudioMediaCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 542
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mAudioMediaCheckbox:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/DockService;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_3

    .line 538
    .end local v7    # "checked":Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_4

    .line 488
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 913
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v1, p1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 914
    .local v0, "cachedDevice":Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_0

    .line 915
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 917
    :cond_0
    return-object v0
.end method

.method private getPrefs()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 179
    const-string v0, "dock_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/bluetooth/DockService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private handleBluetoothStateOn(I)V
    .locals 9
    .param p1, "startId"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/16 v6, -0x64

    .line 730
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_3

    .line 731
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 735
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    iget v5, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingStartId:I

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/bluetooth/DockService;->applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V

    .line 741
    :cond_0
    iput-object v8, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 742
    iget v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingStartId:I

    invoke-static {p0, v4}, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 769
    :cond_1
    :goto_0
    iget v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingTurnOnStartId:I

    if-eq v4, v6, :cond_2

    .line 770
    iget v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingTurnOnStartId:I

    invoke-static {p0, v4}, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 771
    iput v6, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingTurnOnStartId:I

    .line 774
    :cond_2
    invoke-static {p0, p1}, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 775
    :goto_1
    return-void

    .line 744
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 750
    .local v2, "prefs":Landroid/content/SharedPreferences;
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8, v4}, Lcom/android/settings_ex/bluetooth/DockService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 751
    .local v1, "i":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 752
    const-string v4, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 754
    .local v3, "state":I
    if-eqz v3, :cond_4

    .line 755
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 757
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_1

    .line 758
    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/DockService;->connectIfEnabled(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 760
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_4
    const-string v4, "disable_bt"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->disable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 762
    iput p1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingTurnOffStartId:I

    .line 763
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "disable_bt"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method

.method private handleBtStateChange(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    const/16 v3, -0x64

    .line 696
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x80000000

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 697
    .local v0, "btState":I
    monitor-enter p0

    .line 699
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 700
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/settings_ex/bluetooth/DockService;->handleBluetoothStateOn(I)V

    .line 726
    :cond_0
    :goto_0
    monitor-exit p0

    .line 727
    return-void

    .line 701
    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 706
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "disable_bt_when_undock"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 707
    invoke-static {p0, p2}, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    goto :goto_0

    .line 726
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 708
    :cond_2
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 713
    :try_start_1
    iget v1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingTurnOffStartId:I

    if-eq v1, v3, :cond_3

    .line 714
    iget v1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingTurnOffStartId:I

    invoke-static {p0, v1}, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 715
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "disable_bt"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 716
    const/16 v1, -0x64

    iput v1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingTurnOffStartId:I

    .line 719
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_4

    .line 720
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->enable()Z

    .line 721
    iput p2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingTurnOnStartId:I

    goto :goto_0

    .line 723
    :cond_4
    invoke-static {p0, p2}, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized handleDocked(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "startId"    # I

    .prologue
    .line 887
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->getDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 890
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/bluetooth/DockService;->initBtSettings(Landroid/bluetooth/BluetoothDevice;IZ)[Ljava/lang/CharSequence;

    .line 891
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, p3}, Lcom/android/settings_ex/bluetooth/DockService;->applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 895
    :goto_0
    monitor-exit p0

    return-void

    .line 893
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/bluetooth/DockService;->createDialog(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 887
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized handleUndocked(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 898
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    .line 899
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 900
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 901
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 902
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 904
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 905
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 906
    if-eqz p1, :cond_1

    .line 907
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 908
    .local v0, "cachedDevice":Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 910
    .end local v0    # "cachedDevice":Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    :cond_1
    monitor-exit p0

    return-void

    .line 898
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized handleUnexpectedDisconnect(Landroid/bluetooth/BluetoothDevice;Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;I)V
    .locals 7
    .param p1, "disconnectedDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profile"    # Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    .param p3, "startId"    # I

    .prologue
    .line 784
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 786
    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.DOCK_EVENT"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lcom/android/settings_ex/bluetooth/DockService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 787
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 788
    const-string v4, "android.intent.extra.DOCK_STATE"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 790
    .local v3, "state":I
    if-eqz v3, :cond_0

    .line 791
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 793
    .local v1, "dockedDevice":Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 794
    invoke-direct {p0, v1}, Lcom/android/settings_ex/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 796
    .local v0, "cachedDevice":Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0, p2}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)V

    .line 802
    .end local v0    # "cachedDevice":Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    .end local v1    # "dockedDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "state":I
    :cond_0
    invoke-static {p0, p3}, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 803
    monitor-exit p0

    return-void

    .line 784
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private initBtSettings(Landroid/bluetooth/BluetoothDevice;IZ)[Ljava/lang/CharSequence;
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "firstTime"    # Z

    .prologue
    const v3, 0x7f090319

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 634
    packed-switch p2, :pswitch_data_0

    .line 644
    const/4 v0, 0x0

    .line 691
    :goto_0
    return-object v0

    .line 638
    :pswitch_0
    const/4 v1, 0x1

    .line 647
    .local v1, "numOfProfiles":I
    :goto_1
    new-array v2, v1, [Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfiles:[Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    .line 648
    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mCheckedItems:[Z

    .line 649
    new-array v0, v1, [Ljava/lang/CharSequence;

    .line 652
    .local v0, "items":[Ljava/lang/CharSequence;
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 678
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 679
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfiles:[Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settings_ex/bluetooth/A2dpProfile;

    move-result-object v3

    aput-object v3, v2, v4

    .line 680
    if-eqz p3, :cond_3

    .line 682
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean v4, v2, v4

    goto :goto_0

    .line 641
    .end local v0    # "items":[Ljava/lang/CharSequence;
    .end local v1    # "numOfProfiles":I
    :pswitch_2
    const/4 v1, 0x2

    .line 642
    .restart local v1    # "numOfProfiles":I
    goto :goto_1

    .line 654
    .restart local v0    # "items":[Ljava/lang/CharSequence;
    :pswitch_3
    const v2, 0x7f090318

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 655
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 656
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfiles:[Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settings_ex/bluetooth/HeadsetProfile;

    move-result-object v3

    aput-object v3, v2, v4

    .line 657
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfiles:[Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settings_ex/bluetooth/A2dpProfile;

    move-result-object v3

    aput-object v3, v2, v5

    .line 658
    if-eqz p3, :cond_0

    .line 660
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean v5, v2, v4

    .line 661
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean v5, v2, v5

    goto :goto_0

    .line 663
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfiles:[Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    aget-object v2, v2, v4

    if-eqz v2, :cond_1

    .line 664
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfiles:[Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    aget-object v3, v3, v4

    invoke-interface {v3, p1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    aput-boolean v3, v2, v4

    .line 668
    :goto_2
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfiles:[Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    aget-object v2, v2, v5

    if-eqz v2, :cond_2

    .line 669
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfiles:[Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    aget-object v3, v3, v5

    invoke-interface {v3, p1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    aput-boolean v3, v2, v5

    goto :goto_0

    .line 666
    :cond_1
    const-string v2, "DockService"

    const-string v3, "No headset Profile found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 671
    :cond_2
    const-string v2, "DockService"

    const-string v3, "No A2DP Profile found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 684
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfiles:[Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    aget-object v2, v2, v4

    if-eqz v2, :cond_4

    .line 685
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfiles:[Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    aget-object v3, v3, v4

    invoke-interface {v3, p1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    aput-boolean v3, v2, v4

    goto/16 :goto_0

    .line 687
    :cond_4
    const-string v2, "DockService"

    const-string v3, "No A2DP Profile found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 634
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 652
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private msgTypeDisableBluetooth(I)Z
    .locals 4
    .param p1, "startId"    # I

    .prologue
    const/4 v1, 0x1

    .line 307
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 308
    .local v0, "prefs":Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->disable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "disable_bt_when_undock"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 310
    const/4 v1, 0x0

    .line 318
    :goto_0
    return v1

    .line 313
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "disable_bt"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 314
    iput p1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingTurnOffStartId:I

    goto :goto_0
.end method

.method private msgTypeDocked(Landroid/bluetooth/BluetoothDevice;II)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x1

    .line 373
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mServiceHandler:Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;

    const/16 v4, 0x1bc

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;->removeMessages(I)V

    .line 374
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mServiceHandler:Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;

    const/16 v4, 0x22b

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;->removeMessages(I)V

    .line 375
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "disable_bt"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 377
    if-eqz p1, :cond_3

    .line 378
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 379
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_0

    .line 381
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v3}, Lcom/android/settings_ex/bluetooth/DockService;->handleUndocked(Landroid/bluetooth/BluetoothDevice;)V

    .line 384
    :cond_0
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 389
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3, p0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->addServiceListener(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 390
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->isManagerReady()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 391
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/bluetooth/DockService;->handleDocked(Landroid/bluetooth/BluetoothDevice;II)V

    .line 393
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2, p0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 415
    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 395
    :cond_2
    move-object v0, p1

    .line 396
    .local v0, "d":Landroid/bluetooth/BluetoothDevice;
    new-instance v3, Lcom/android/settings_ex/bluetooth/DockService$1;

    invoke-direct {v3, p0, v0, p2, p3}, Lcom/android/settings_ex/bluetooth/DockService$1;-><init>(Lcom/android/settings_ex/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;II)V

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 407
    .end local v0    # "d":Landroid/bluetooth/BluetoothDevice;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DockService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dock_audio_media_enabled"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 409
    .local v1, "dockAudioMediaEnabled":I
    if-ne v1, v5, :cond_1

    const/4 v3, 0x3

    if-ne p2, v3, :cond_1

    .line 411
    const/4 v3, 0x0

    invoke-direct {p0, v3, p2, p3}, Lcom/android/settings_ex/bluetooth/DockService;->handleDocked(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0
.end method

.method private msgTypeUndockedPermanent(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "startId"    # I

    .prologue
    const/4 v2, 0x0

    .line 332
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/DockService;->handleUndocked(Landroid/bluetooth/BluetoothDevice;)V

    .line 333
    if-eqz p1, :cond_0

    .line 334
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 341
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "disable_bt_when_undock"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 342
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/bluetooth/DockService;->hasOtherConnectedDevices(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 344
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "disable_bt_when_undock"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 359
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return v2

    .line 351
    .restart local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mServiceHandler:Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;

    const/16 v4, 0x22b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, p2, v5}, Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 353
    .local v0, "newMsg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mServiceHandler:Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 355
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private msgTypeUndockedTemporary(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "startId"    # I

    .prologue
    .line 325
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mServiceHandler:Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;

    const/16 v2, 0x1bc

    invoke-virtual {v1, v2, p2, p3, p1}, Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 327
    .local v0, "newMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mServiceHandler:Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 328
    return-void
.end method

.method private parseIntent(Landroid/content/Intent;)Landroid/os/Message;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 441
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 442
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v4, "android.intent.extra.DOCK_STATE"

    const/16 v5, -0x4d2

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 450
    .local v2, "state":I
    packed-switch v2, :pswitch_data_0

    .line 477
    :goto_0
    return-object v3

    .line 452
    :pswitch_0
    const/16 v1, 0x14d

    .line 477
    .local v1, "msgType":I
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mServiceHandler:Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4, v0}, Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    goto :goto_0

    .line 457
    .end local v1    # "msgType":I
    :pswitch_1
    if-nez v0, :cond_0

    .line 458
    const-string v4, "DockService"

    const-string v5, "device is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 463
    :cond_0
    :pswitch_2
    const-string v4, "com.android.settings_ex.bluetooth.action.DOCK_SHOW_UI"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 464
    if-nez v0, :cond_1

    .line 465
    const-string v4, "DockService"

    const-string v5, "device is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 468
    :cond_1
    const/16 v1, 0x6f

    .restart local v1    # "msgType":I
    goto :goto_1

    .line 470
    .end local v1    # "msgType":I
    :cond_2
    const/16 v1, 0xde

    .line 472
    .restart local v1    # "msgType":I
    goto :goto_1

    .line 450
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized processMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 258
    monitor-enter p0

    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    .line 259
    .local v2, "msgType":I
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 260
    .local v4, "state":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 261
    .local v3, "startId":I
    const/4 v1, 0x0

    .line 262
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 263
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 269
    .restart local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    const/4 v0, 0x0

    .line 271
    .local v0, "deferFinishCall":Z
    sparse-switch v2, :sswitch_data_0

    .line 295
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v5, :cond_2

    const/16 v5, 0x14d

    if-eq v2, v5, :cond_2

    if-nez v0, :cond_2

    .line 299
    invoke-static {p0, v3}, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    :cond_2
    monitor-exit p0

    return-void

    .line 273
    :sswitch_0
    if-eqz v1, :cond_1

    .line 274
    :try_start_1
    invoke-direct {p0, v1, v4, v3}, Lcom/android/settings_ex/bluetooth/DockService;->createDialog(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 258
    .end local v0    # "deferFinishCall":Z
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "msgType":I
    .end local v3    # "startId":I
    .end local v4    # "state":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 279
    .restart local v0    # "deferFinishCall":Z
    .restart local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v2    # "msgType":I
    .restart local v3    # "startId":I
    .restart local v4    # "state":I
    :sswitch_1
    :try_start_2
    invoke-direct {p0, v1, v4, v3}, Lcom/android/settings_ex/bluetooth/DockService;->msgTypeDocked(Landroid/bluetooth/BluetoothDevice;II)Z

    move-result v0

    .line 280
    goto :goto_0

    .line 283
    :sswitch_2
    invoke-direct {p0, v1, v3}, Lcom/android/settings_ex/bluetooth/DockService;->msgTypeUndockedPermanent(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    .line 284
    goto :goto_0

    .line 287
    :sswitch_3
    invoke-direct {p0, v1, v4, v3}, Lcom/android/settings_ex/bluetooth/DockService;->msgTypeUndockedTemporary(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 291
    :sswitch_4
    invoke-direct {p0, v3}, Lcom/android/settings_ex/bluetooth/DockService;->msgTypeDisableBluetooth(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_0

    .line 271
    nop

    :sswitch_data_0
    .sparse-switch
        0x6f -> :sswitch_0
        0xde -> :sswitch_1
        0x14d -> :sswitch_3
        0x1bc -> :sswitch_2
        0x22b -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method declared-synchronized hasOtherConnectedDevices(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .param p1, "dock"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v5, 0x0

    .line 419
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v6}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v2

    .line 420
    .local v2, "cachedDevices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;>;"
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 421
    .local v1, "btDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 437
    :cond_0
    :goto_0
    monitor-exit p0

    return v5

    .line 429
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    .line 430
    .local v3, "deviceUI":Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v3}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 431
    .local v0, "btDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->isConnected()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    .line 434
    const/4 v5, 0x1

    goto :goto_0

    .line 419
    .end local v0    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "btDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2    # "cachedDevices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;>;"
    .end local v3    # "deviceUI":Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 175
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 129
    invoke-static {p0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 130
    .local v0, "manager":Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_0

    .line 131
    const-string v2, "DockService"

    const-string v3, "Can\'t get LocalBluetoothManager: exiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    .line 136
    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    .line 137
    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    .line 138
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    if-nez v2, :cond_1

    .line 139
    const-string v2, "DockService"

    const-string v3, "Can\'t get LocalBluetoothProfileManager: exiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    :cond_1
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "DockService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 144
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 146
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    .line 147
    new-instance v2, Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;-><init>(Lcom/android/settings_ex/bluetooth/DockService;Landroid/os/Looper;Lcom/android/settings_ex/bluetooth/DockService$1;)V

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mServiceHandler:Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    .line 154
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 156
    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 165
    :cond_2
    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    .line 166
    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    .line 167
    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    .line 168
    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    .line 169
    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mServiceHandler:Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;

    .line 170
    return-void
.end method

.method public declared-synchronized onServiceConnected()V
    .locals 1

    .prologue
    .line 921
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 923
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    .line 924
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 926
    :cond_0
    monitor-exit p0

    return-void

    .line 921
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceDisconnected()V
    .locals 0

    .prologue
    .line 930
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v8, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x2

    .line 186
    if-nez p1, :cond_1

    .line 192
    invoke-static {p0, p3}, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 242
    :cond_0
    :goto_0
    return v7

    .line 196
    :cond_1
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 197
    invoke-direct {p0, p1, p3}, Lcom/android/settings_ex/bluetooth/DockService;->handleBtStateChange(Landroid/content/Intent;I)V

    goto :goto_0

    .line 205
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 206
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 207
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 209
    .local v0, "disconnectedDevice":Landroid/bluetooth/BluetoothDevice;
    const-string v4, "connect_retry_count"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 210
    .local v3, "retryCount":I
    if-ge v3, v8, :cond_0

    .line 211
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "connect_retry_count"

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 212
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v4}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settings_ex/bluetooth/HeadsetProfile;

    move-result-object v4

    invoke-direct {p0, v0, v4, p3}, Lcom/android/settings_ex/bluetooth/DockService;->handleUnexpectedDisconnect(Landroid/bluetooth/BluetoothDevice;Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;I)V

    goto :goto_0

    .line 215
    .end local v0    # "disconnectedDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "retryCount":I
    :cond_3
    const-string v4, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 216
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 219
    .restart local v0    # "disconnectedDevice":Landroid/bluetooth/BluetoothDevice;
    const-string v4, "connect_retry_count"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 220
    .restart local v3    # "retryCount":I
    if-ge v3, v8, :cond_0

    .line 221
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "connect_retry_count"

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 222
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v4}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settings_ex/bluetooth/A2dpProfile;

    move-result-object v4

    invoke-direct {p0, v0, v4, p3}, Lcom/android/settings_ex/bluetooth/DockService;->handleUnexpectedDisconnect(Landroid/bluetooth/BluetoothDevice;Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;I)V

    goto :goto_0

    .line 227
    .end local v0    # "disconnectedDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "retryCount":I
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/DockService;->parseIntent(Landroid/content/Intent;)Landroid/os/Message;

    move-result-object v1

    .line 228
    .local v1, "msg":Landroid/os/Message;
    if-nez v1, :cond_5

    .line 231
    invoke-static {p0, p3}, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    goto/16 :goto_0

    .line 235
    :cond_5
    iget v4, v1, Landroid/os/Message;->what:I

    const/16 v5, 0xde

    if-ne v4, v5, :cond_6

    .line 236
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "connect_retry_count"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 239
    :cond_6
    iput p3, v1, Landroid/os/Message;->arg2:I

    .line 240
    invoke-direct {p0, v1}, Lcom/android/settings_ex/bluetooth/DockService;->processMessage(Landroid/os/Message;)V

    goto/16 :goto_0
.end method
