.class public final Lcom/android/settings_ex/bluetooth/DockService;
.super Landroid/app/Service;
.source "DockService.java"

# interfaces
.implements Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/bluetooth/DockService$DockBluetoothCallback;,
        Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;
    }
.end annotation


# static fields
.field static final DEBUG:Z

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

.field private mBackupStartId:I

.field private final mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mCheckedItems:[Z

.field private final mClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

.field private mDialog:Lcom/oneplus/app/OPAlertDialog;

.field private final mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

.field private final mMultiClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field private mPendingDevice:Landroid/bluetooth/BluetoothDevice;

.field private mPendingStartId:I

.field private mPendingTurnOffStartId:I

.field private mPendingTurnOnStartId:I

.field private mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

.field private mProfiles:[Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

.field private mRunnable:Ljava/lang/Runnable;

.field private volatile mServiceHandler:Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mStartIdAssociatedWithDialog:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    const-string v0, "DockService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/bluetooth/DockService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, -0x64

    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 128
    iput v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingTurnOnStartId:I

    .line 129
    iput v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingTurnOffStartId:I

    .line 131
    iput v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mBackupStartId:I

    .line 580
    new-instance v0, Lcom/android/settings_ex/bluetooth/DockService$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/DockService$2;-><init>(Lcom/android/settings_ex/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mMultiClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 592
    new-instance v0, Lcom/android/settings_ex/bluetooth/DockService$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/DockService$3;-><init>(Lcom/android/settings_ex/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 610
    new-instance v0, Lcom/android/settings_ex/bluetooth/DockService$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/DockService$4;-><init>(Lcom/android/settings_ex/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 624
    new-instance v0, Lcom/android/settings_ex/bluetooth/DockService$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/DockService$5;-><init>(Lcom/android/settings_ex/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 941
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/bluetooth/DockService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/DockService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 59
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
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/bluetooth/DockService;->handleDocked(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/bluetooth/DockService;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/DockService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mCheckedItems:[Z

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/DockService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/DockService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/bluetooth/DockService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/DockService;

    .prologue
    .line 59
    iget v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mStartIdAssociatedWithDialog:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/DockService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/bluetooth/DockService;->applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings_ex/bluetooth/DockService;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/DockService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mAudioMediaCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private declared-synchronized applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 13
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "startId"    # I

    .prologue
    .line 827
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfiles:[Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/DockService;->mCheckedItems:[Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_1

    .line 892
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 833
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mCheckedItems:[Z

    .local v0, "arr$":[Z
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_5

    aget-boolean v4, v0, v6

    .line 834
    .local v4, "enable":Z
    if-eqz v4, :cond_4

    .line 835
    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v10}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    .line 836
    .local v1, "btState":I
    sget-boolean v10, Lcom/android/settings_ex/bluetooth/DockService;->DEBUG:Z

    if-eqz v10, :cond_2

    .line 837
    const-string v10, "DockService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BtState = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :cond_2
    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v10}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->enable()Z

    .line 844
    const/16 v10, 0xc

    if-eq v1, v10, :cond_4

    .line 845
    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v11, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v10, v11}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 849
    :cond_3
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 850
    iput p2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingStartId:I

    .line 851
    const/16 v10, 0xb

    if-eq v1, v10, :cond_0

    .line 852
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

    .line 827
    .end local v0    # "arr$":[Z
    .end local v1    # "btState":I
    .end local v4    # "enable":Z
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 833
    .restart local v0    # "arr$":[Z
    .restart local v4    # "enable":Z
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 860
    .end local v4    # "enable":Z
    :cond_5
    const/4 v10, 0x0

    :try_start_2
    iput-object v10, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 862
    const/4 v3, 0x0

    .line 863
    .local v3, "callConnect":Z
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    .line 865
    .local v2, "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfiles:[Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    array-length v10, v10

    if-ge v5, v10, :cond_b

    .line 866
    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfiles:[Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    aget-object v8, v10, v5

    .line 867
    .local v8, "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    sget-boolean v10, Lcom/android/settings_ex/bluetooth/DockService;->DEBUG:Z

    if-eqz v10, :cond_6

    const-string v10, "DockService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings_ex/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v12, v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :cond_6
    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v10, v10, v5

    if-eqz v10, :cond_9

    .line 871
    const/4 v3, 0x1

    .line 880
    :cond_7
    :goto_3
    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v10, v10, v5

    invoke-interface {v8, p1, v10}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 881
    sget-boolean v10, Lcom/android/settings_ex/bluetooth/DockService;->DEBUG:Z

    if-eqz v10, :cond_8

    .line 882
    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v10, v10, v5

    invoke-interface {v8, p1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v11

    if-eq v10, v11, :cond_8

    .line 883
    const-string v10, "DockService"

    const-string v11, "Can\'t save preferred value"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 872
    :cond_9
    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v10, v10, v5

    if-nez v10, :cond_7

    .line 874
    invoke-virtual {v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    invoke-interface {v8, v10}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v9

    .line 875
    .local v9, "status":I
    const/4 v10, 0x2

    if-ne v9, v10, :cond_7

    .line 876
    sget-boolean v10, Lcom/android/settings_ex/bluetooth/DockService;->DEBUG:Z

    if-eqz v10, :cond_a

    const-string v10, "DockService"

    const-string v11, "applyBtSettings - Disconnecting"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_a
    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfiles:[Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    aget-object v10, v10, v5

    invoke-virtual {v2, v10}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_3

    .line 888
    .end local v8    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    .end local v9    # "status":I
    :cond_b
    if-eqz v3, :cond_0

    .line 889
    sget-boolean v10, Lcom/android/settings_ex/bluetooth/DockService;->DEBUG:Z

    if-eqz v10, :cond_c

    const-string v10, "DockService"

    const-string v11, "applyBtSettings - Connecting"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_c
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->connect(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized connectIfEnabled(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 815
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 817
    .local v0, "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v3

    .line 818
    .local v3, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .line 819
    .local v2, "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    invoke-interface {v2, p1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->getPreferred(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_0

    .line 820
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->connect(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 824
    .end local v2    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    :cond_1
    monitor-exit p0

    return-void

    .line 815
    .end local v0    # "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;>;"
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
    .line 501
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDialog:Lcom/oneplus/app/OPAlertDialog;

    if-eqz v4, :cond_0

    .line 503
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDialog:Lcom/oneplus/app/OPAlertDialog;

    invoke-virtual {v4}, Lcom/oneplus/app/OPAlertDialog;->dismiss()V

    .line 504
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDialog:Lcom/oneplus/app/OPAlertDialog;

    .line 506
    :cond_0
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 507
    packed-switch p2, :pswitch_data_0

    .line 577
    :goto_0
    return-void

    .line 517
    :pswitch_0
    const/4 v4, 0x0

    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v4, v6}, Lcom/android/settings_ex/bluetooth/DockService;->startForeground(ILandroid/app/Notification;)V

    .line 519
    new-instance v1, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 521
    .local v1, "ab":Lcom/oneplus/app/OPAlertDialog$Builder;
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/bluetooth/DockService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 523
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mAudioMediaCheckbox:Landroid/widget/CheckBox;

    .line 525
    if-eqz p1, :cond_5

    .line 527
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->hasDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v8, 0x1

    .line 530
    .local v8, "firstTime":Z
    :goto_1
    move/from16 v0, p2

    invoke-direct {p0, p1, v0, v8}, Lcom/android/settings_ex/bluetooth/DockService;->initBtSettings(Landroid/bluetooth/BluetoothDevice;IZ)[Ljava/lang/CharSequence;

    move-result-object v10

    .line 532
    .local v10, "items":[Ljava/lang/CharSequence;
    const v4, 0x7f0c04a1

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 535
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/DockService;->mMultiClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    invoke-virtual {v1, v10, v4, v6}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 538
    const v4, 0x7f0400f4

    const/4 v6, 0x0

    invoke-virtual {v9, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 539
    .local v2, "view":Landroid/view/View;
    const v4, 0x7f1201ee

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/CheckBox;

    .line 542
    .local v12, "rememberCheckbox":Landroid/widget/CheckBox;
    if-nez v8, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->getDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    const/4 v7, 0x1

    .line 544
    .local v7, "checked":Z
    :goto_2
    invoke-virtual {v12, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 545
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v12, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 546
    sget-boolean v4, Lcom/android/settings_ex/bluetooth/DockService;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 547
    const-string v4, "DockService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Auto connect = "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-static {p0, v13}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->getDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    .end local v8    # "firstTime":Z
    .end local v10    # "items":[Ljava/lang/CharSequence;
    .end local v12    # "rememberCheckbox":Landroid/widget/CheckBox;
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DockService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v11, v4, Landroid/util/DisplayMetrics;->density:F

    .line 565
    .local v11, "pixelScaleFactor":F
    const/high16 v4, 0x41600000    # 14.0f

    mul-float/2addr v4, v11

    float-to-int v3, v4

    .line 566
    .local v3, "viewSpacingLeft":I
    const/high16 v4, 0x41600000    # 14.0f

    mul-float/2addr v4, v11

    float-to-int v5, v4

    .line 567
    .local v5, "viewSpacingRight":I
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/app/OPAlertDialog$Builder;->setView(Landroid/view/View;IIII)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 570
    const v4, 0x104000a

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/DockService;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v4, v6}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 572
    move/from16 v0, p3

    iput v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mStartIdAssociatedWithDialog:I

    .line 573
    invoke-virtual {v1}, Lcom/oneplus/app/OPAlertDialog$Builder;->create()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDialog:Lcom/oneplus/app/OPAlertDialog;

    .line 574
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDialog:Lcom/oneplus/app/OPAlertDialog;

    invoke-virtual {v4}, Lcom/oneplus/app/OPAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v6, 0x7d9

    invoke-virtual {v4, v6}, Landroid/view/Window;->setType(I)V

    .line 575
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDialog:Lcom/oneplus/app/OPAlertDialog;

    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v4, v6}, Lcom/oneplus/app/OPAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 576
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDialog:Lcom/oneplus/app/OPAlertDialog;

    invoke-virtual {v4}, Lcom/oneplus/app/OPAlertDialog;->show()V

    goto/16 :goto_0

    .line 527
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "viewSpacingLeft":I
    .end local v5    # "viewSpacingRight":I
    .end local v7    # "checked":Z
    .end local v11    # "pixelScaleFactor":F
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 542
    .restart local v2    # "view":Landroid/view/View;
    .restart local v8    # "firstTime":Z
    .restart local v10    # "items":[Ljava/lang/CharSequence;
    .restart local v12    # "rememberCheckbox":Landroid/widget/CheckBox;
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .line 551
    .end local v2    # "view":Landroid/view/View;
    .end local v8    # "firstTime":Z
    .end local v10    # "items":[Ljava/lang/CharSequence;
    .end local v12    # "rememberCheckbox":Landroid/widget/CheckBox;
    :cond_5
    const v4, 0x7f0c04a1

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 553
    const v4, 0x7f040053

    const/4 v6, 0x0

    invoke-virtual {v9, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 554
    .restart local v2    # "view":Landroid/view/View;
    const v4, 0x7f1200a4

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mAudioMediaCheckbox:Landroid/widget/CheckBox;

    .line 557
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DockService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "dock_audio_media_enabled"

    const/4 v13, 0x0

    invoke-static {v4, v6, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_6

    const/4 v7, 0x1

    .line 560
    .restart local v7    # "checked":Z
    :goto_4
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mAudioMediaCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 561
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mAudioMediaCheckbox:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/DockService;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_3

    .line 557
    .end local v7    # "checked":Z
    :cond_6
    const/4 v7, 0x0

    goto :goto_4

    .line 507
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 922
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v1, p1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 923
    .local v0, "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_0

    .line 924
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 926
    :cond_0
    return-object v0
.end method

.method private getPrefs()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 196
    const-string v0, "dock_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/bluetooth/DockService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private handleBluetoothStateOn(I)V
    .locals 10
    .param p1, "startId"    # I

    .prologue
    const/4 v9, 0x0

    const/16 v8, -0x64

    const/4 v7, 0x0

    .line 739
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_5

    .line 740
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 741
    sget-boolean v4, Lcom/android/settings_ex/bluetooth/DockService;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 742
    const-string v4, "DockService"

    const-string v5, "applying settings"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    iget v5, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingStartId:I

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/bluetooth/DockService;->applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V

    .line 750
    :cond_1
    :goto_0
    iput-object v9, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 751
    iget v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingStartId:I

    invoke-static {p0, v4}, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 778
    :cond_2
    :goto_1
    iget v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingTurnOnStartId:I

    if-eq v4, v8, :cond_3

    .line 779
    iget v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingTurnOnStartId:I

    invoke-static {p0, v4}, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 780
    iput v8, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingTurnOnStartId:I

    .line 783
    :cond_3
    invoke-static {p0, p1}, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 784
    :goto_2
    return-void

    .line 745
    :cond_4
    sget-boolean v4, Lcom/android/settings_ex/bluetooth/DockService;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 746
    const-string v4, "DockService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPendingDevice  ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") != mDevice ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 753
    :cond_5
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 754
    .local v2, "prefs":Landroid/content/SharedPreferences;
    sget-boolean v4, Lcom/android/settings_ex/bluetooth/DockService;->DEBUG:Z

    if-eqz v4, :cond_6

    .line 755
    const-string v4, "DockService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A DISABLE_BT_WHEN_UNDOCKED = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "disable_bt_when_undock"

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_6
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9, v4}, Lcom/android/settings_ex/bluetooth/DockService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 760
    .local v1, "i":Landroid/content/Intent;
    if-eqz v1, :cond_2

    .line 761
    const-string v4, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 763
    .local v3, "state":I
    if-eqz v3, :cond_7

    .line 764
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 766
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_2

    .line 767
    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/DockService;->connectIfEnabled(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_1

    .line 769
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_7
    const-string v4, "disable_bt"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->disable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 771
    iput p1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingTurnOffStartId:I

    .line 772
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "disable_bt"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_2
.end method

.method private handleBtStateChange(Landroid/content/Intent;I)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    const/16 v4, -0x64

    .line 705
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x80000000

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 706
    .local v0, "btState":I
    monitor-enter p0

    .line 707
    :try_start_0
    sget-boolean v1, Lcom/android/settings_ex/bluetooth/DockService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DockService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BtState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPendingDevice = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_0
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 709
    invoke-direct {p0, p2}, Lcom/android/settings_ex/bluetooth/DockService;->handleBluetoothStateOn(I)V

    .line 735
    :cond_1
    :goto_0
    monitor-exit p0

    .line 736
    return-void

    .line 710
    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 715
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "disable_bt_when_undock"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 716
    invoke-static {p0, p2}, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    goto :goto_0

    .line 735
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 717
    :cond_3
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 720
    :try_start_1
    sget-boolean v1, Lcom/android/settings_ex/bluetooth/DockService;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "DockService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bluetooth = OFF mPendingDevice = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_4
    iget v1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingTurnOffStartId:I

    if-eq v1, v4, :cond_5

    .line 723
    iget v1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingTurnOffStartId:I

    invoke-static {p0, v1}, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 724
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "disable_bt"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 725
    const/16 v1, -0x64

    iput v1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingTurnOffStartId:I

    .line 728
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_6

    .line 729
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->enable()Z

    .line 730
    iput p2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingTurnOnStartId:I

    goto :goto_0

    .line 732
    :cond_6
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
    .line 896
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->getDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/bluetooth/DockService;->initBtSettings(Landroid/bluetooth/BluetoothDevice;IZ)[Ljava/lang/CharSequence;

    .line 900
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, p3}, Lcom/android/settings_ex/bluetooth/DockService;->applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 904
    :goto_0
    monitor-exit p0

    return-void

    .line 902
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/bluetooth/DockService;->createDialog(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 896
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized handleUndocked(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 907
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    .line 908
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1, p0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 909
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDialog:Lcom/oneplus/app/OPAlertDialog;

    if-eqz v1, :cond_0

    .line 910
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDialog:Lcom/oneplus/app/OPAlertDialog;

    invoke-virtual {v1}, Lcom/oneplus/app/OPAlertDialog;->dismiss()V

    .line 911
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDialog:Lcom/oneplus/app/OPAlertDialog;

    .line 913
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 914
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 915
    if-eqz p1, :cond_1

    .line 916
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 917
    .local v0, "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 919
    .end local v0    # "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    :cond_1
    monitor-exit p0

    return-void

    .line 907
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized handleUnexpectedDisconnect(Landroid/bluetooth/BluetoothDevice;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;I)V
    .locals 7
    .param p1, "disconnectedDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profile"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    .param p3, "startId"    # I

    .prologue
    .line 788
    monitor-enter p0

    :try_start_0
    sget-boolean v4, Lcom/android/settings_ex/bluetooth/DockService;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 789
    const-string v4, "DockService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handling failed connect for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_0
    if-eqz p1, :cond_1

    .line 795
    const/4 v4, 0x0

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.DOCK_EVENT"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lcom/android/settings_ex/bluetooth/DockService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 796
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 797
    const-string v4, "android.intent.extra.DOCK_STATE"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 799
    .local v3, "state":I
    if-eqz v3, :cond_1

    .line 800
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 802
    .local v1, "dockedDevice":Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 803
    invoke-direct {p0, v1}, Lcom/android/settings_ex/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 805
    .local v0, "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0, p2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V

    .line 811
    .end local v0    # "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    .end local v1    # "dockedDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "state":I
    :cond_1
    invoke-static {p0, p3}, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 812
    monitor-exit p0

    return-void

    .line 788
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
    const v3, 0x7f0c04a3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 653
    packed-switch p2, :pswitch_data_0

    .line 663
    const/4 v0, 0x0

    .line 700
    :goto_0
    return-object v0

    .line 657
    :pswitch_0
    const/4 v1, 0x1

    .line 666
    .local v1, "numOfProfiles":I
    :goto_1
    new-array v2, v1, [Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfiles:[Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .line 667
    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mCheckedItems:[Z

    .line 668
    new-array v0, v1, [Ljava/lang/CharSequence;

    .line 671
    .local v0, "items":[Ljava/lang/CharSequence;
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 690
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 691
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfiles:[Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settings_exlib/bluetooth/A2dpProfile;

    move-result-object v3

    aput-object v3, v2, v4

    .line 692
    if-eqz p3, :cond_1

    .line 694
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean v4, v2, v4

    goto :goto_0

    .line 660
    .end local v0    # "items":[Ljava/lang/CharSequence;
    .end local v1    # "numOfProfiles":I
    :pswitch_2
    const/4 v1, 0x2

    .line 661
    .restart local v1    # "numOfProfiles":I
    goto :goto_1

    .line 673
    .restart local v0    # "items":[Ljava/lang/CharSequence;
    :pswitch_3
    const v2, 0x7f0c04a2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 674
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 675
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfiles:[Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settings_exlib/bluetooth/HeadsetProfile;

    move-result-object v3

    aput-object v3, v2, v4

    .line 676
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfiles:[Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settings_exlib/bluetooth/A2dpProfile;

    move-result-object v3

    aput-object v3, v2, v5

    .line 677
    if-eqz p3, :cond_0

    .line 679
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean v5, v2, v4

    .line 680
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean v5, v2, v5

    goto :goto_0

    .line 682
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfiles:[Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    aget-object v3, v3, v4

    invoke-interface {v3, p1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    aput-boolean v3, v2, v4

    .line 683
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfiles:[Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    aget-object v3, v3, v5

    invoke-interface {v3, p1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    aput-boolean v3, v2, v5

    goto :goto_0

    .line 696
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfiles:[Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    aget-object v3, v3, v4

    invoke-interface {v3, p1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    aput-boolean v3, v2, v4

    goto :goto_0

    .line 653
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 671
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private msgTypeDisableBluetooth(I)Z
    .locals 5
    .param p1, "startId"    # I

    .prologue
    const/4 v1, 0x1

    .line 323
    sget-boolean v2, Lcom/android/settings_ex/bluetooth/DockService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 324
    const-string v2, "DockService"

    const-string v3, "BT DISABLE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 327
    .local v0, "prefs":Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->disable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 328
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "disable_bt_when_undock"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 329
    const/4 v1, 0x0

    .line 337
    :cond_1
    :goto_0
    return v1

    .line 332
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "disable_bt"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 333
    iput p1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingTurnOffStartId:I

    .line 334
    sget-boolean v2, Lcom/android/settings_ex/bluetooth/DockService;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 335
    const-string v2, "DockService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disable failed. try again later "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private msgTypeDocked(Landroid/bluetooth/BluetoothDevice;II)Z
    .locals 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v8, -0x1

    const/16 v7, 0x1bc

    .line 383
    sget-boolean v3, Lcom/android/settings_ex/bluetooth/DockService;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 386
    const-string v3, "DockService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1 Has undock perm msg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/DockService;->mServiceHandler:Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;

    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, v7, v6}, Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const-string v3, "DockService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "2 Has undock perm msg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/DockService;->mServiceHandler:Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;

    invoke-virtual {v5, v7, p1}, Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mServiceHandler:Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;

    invoke-virtual {v3, v7}, Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;->removeMessages(I)V

    .line 393
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mServiceHandler:Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;

    const/16 v4, 0x22b

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;->removeMessages(I)V

    .line 394
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "disable_bt"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 396
    if-eqz p1, :cond_4

    .line 397
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 398
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_1

    .line 400
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v3}, Lcom/android/settings_ex/bluetooth/DockService;->handleUndocked(Landroid/bluetooth/BluetoothDevice;)V

    .line 403
    :cond_1
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 408
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3, p0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->addServiceListener(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 409
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->isManagerReady()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 410
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/bluetooth/DockService;->handleDocked(Landroid/bluetooth/BluetoothDevice;II)V

    .line 412
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2, p0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 434
    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 414
    :cond_3
    move-object v0, p1

    .line 415
    .local v0, "d":Landroid/bluetooth/BluetoothDevice;
    new-instance v3, Lcom/android/settings_ex/bluetooth/DockService$1;

    invoke-direct {v3, p0, v0, p2, p3}, Lcom/android/settings_ex/bluetooth/DockService$1;-><init>(Lcom/android/settings_ex/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;II)V

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 426
    .end local v0    # "d":Landroid/bluetooth/BluetoothDevice;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DockService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dock_audio_media_enabled"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 428
    .local v1, "dockAudioMediaEnabled":I
    if-ne v1, v8, :cond_2

    const/4 v3, 0x3

    if-ne p2, v3, :cond_2

    .line 430
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

    .line 351
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/DockService;->handleUndocked(Landroid/bluetooth/BluetoothDevice;)V

    .line 352
    if-eqz p1, :cond_1

    .line 353
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 355
    .local v1, "prefs":Landroid/content/SharedPreferences;
    sget-boolean v3, Lcom/android/settings_ex/bluetooth/DockService;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 356
    const-string v3, "DockService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DISABLE_BT_WHEN_UNDOCKED = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "disable_bt_when_undock"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    const-string v3, "disable_bt_when_undock"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 361
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/bluetooth/DockService;->hasOtherConnectedDevices(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 363
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "disable_bt_when_undock"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 378
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    return v2

    .line 366
    .restart local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_2
    sget-boolean v3, Lcom/android/settings_ex/bluetooth/DockService;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 367
    const-string v3, "DockService"

    const-string v4, "QUEUED BT DISABLE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mServiceHandler:Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;

    const/16 v4, 0x22b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, p2, v5}, Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 372
    .local v0, "newMsg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mServiceHandler:Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 374
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private msgTypeUndockedTemporary(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "startId"    # I

    .prologue
    .line 344
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mServiceHandler:Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;

    const/16 v2, 0x1bc

    invoke-virtual {v1, v2, p2, p3, p1}, Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 346
    .local v0, "newMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DockService;->mServiceHandler:Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 347
    return-void
.end method

.method private parseIntent(Landroid/content/Intent;)Landroid/os/Message;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 460
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 461
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v3, "android.intent.extra.DOCK_STATE"

    const/16 v5, -0x4d2

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 463
    .local v2, "state":I
    sget-boolean v3, Lcom/android/settings_ex/bluetooth/DockService;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 464
    const-string v5, "DockService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Action: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " State:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " Device: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v0, :cond_1

    const-string v3, "null"

    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_0
    packed-switch v2, :pswitch_data_0

    move-object v3, v4

    .line 496
    :goto_1
    return-object v3

    .line 464
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 471
    :pswitch_0
    const/16 v1, 0x14d

    .line 496
    .local v1, "msgType":I
    :goto_2
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mServiceHandler:Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4, v0}, Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    goto :goto_1

    .line 476
    .end local v1    # "msgType":I
    :pswitch_1
    if-nez v0, :cond_2

    .line 477
    const-string v3, "DockService"

    const-string v5, "device is null"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 478
    goto :goto_1

    .line 482
    :cond_2
    :pswitch_2
    const-string v3, "com.android.settings.bluetooth.action.DOCK_SHOW_UI"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 483
    if-nez v0, :cond_3

    .line 484
    const-string v3, "DockService"

    const-string v5, "device is null"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 485
    goto :goto_1

    .line 487
    :cond_3
    const/16 v1, 0x6f

    .restart local v1    # "msgType":I
    goto :goto_2

    .line 489
    .end local v1    # "msgType":I
    :cond_4
    const/16 v1, 0xde

    .line 491
    .restart local v1    # "msgType":I
    goto :goto_2

    .line 469
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
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    .line 278
    .local v2, "msgType":I
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 279
    .local v4, "state":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 280
    .local v3, "startId":I
    const/4 v1, 0x0

    .line 281
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 282
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 285
    .restart local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    sget-boolean v5, Lcom/android/settings_ex/bluetooth/DockService;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v6, "DockService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processMessage: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " state: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " device = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v1, :cond_4

    const-string v5, "null"

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_1
    const/4 v0, 0x0

    .line 290
    .local v0, "deferFinishCall":Z
    sparse-switch v2, :sswitch_data_0

    .line 314
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDialog:Lcom/oneplus/app/OPAlertDialog;

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v5, :cond_3

    const/16 v5, 0x14d

    if-eq v2, v5, :cond_3

    if-nez v0, :cond_3

    .line 318
    invoke-static {p0, v3}, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    :cond_3
    monitor-exit p0

    return-void

    .line 285
    .end local v0    # "deferFinishCall":Z
    :cond_4
    :try_start_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 292
    .restart local v0    # "deferFinishCall":Z
    :sswitch_0
    if-eqz v1, :cond_2

    .line 293
    invoke-direct {p0, v1, v4, v3}, Lcom/android/settings_ex/bluetooth/DockService;->createDialog(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 277
    .end local v0    # "deferFinishCall":Z
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "msgType":I
    .end local v3    # "startId":I
    .end local v4    # "state":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 298
    .restart local v0    # "deferFinishCall":Z
    .restart local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v2    # "msgType":I
    .restart local v3    # "startId":I
    .restart local v4    # "state":I
    :sswitch_1
    :try_start_2
    invoke-direct {p0, v1, v4, v3}, Lcom/android/settings_ex/bluetooth/DockService;->msgTypeDocked(Landroid/bluetooth/BluetoothDevice;II)Z

    move-result v0

    .line 299
    goto :goto_1

    .line 302
    :sswitch_2
    invoke-direct {p0, v1, v3}, Lcom/android/settings_ex/bluetooth/DockService;->msgTypeUndockedPermanent(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    .line 303
    goto :goto_1

    .line 306
    :sswitch_3
    invoke-direct {p0, v1, v4, v3}, Lcom/android/settings_ex/bluetooth/DockService;->msgTypeUndockedTemporary(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_1

    .line 310
    :sswitch_4
    invoke-direct {p0, v3}, Lcom/android/settings_ex/bluetooth/DockService;->msgTypeDisableBluetooth(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_1

    .line 290
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
    .locals 9
    .param p1, "dock"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v5, 0x0

    .line 438
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v6}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v2

    .line 439
    .local v2, "cachedDevices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;>;"
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 440
    .local v1, "btDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 456
    :cond_0
    :goto_0
    monitor-exit p0

    return v5

    .line 443
    :cond_1
    :try_start_1
    sget-boolean v6, Lcom/android/settings_ex/bluetooth/DockService;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 444
    const-string v6, "DockService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "btDevices = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const-string v6, "DockService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cachedDeviceUIs = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_2
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    .line 449
    .local v3, "deviceUI":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 450
    .local v0, "btDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 452
    sget-boolean v5, Lcom/android/settings_ex/bluetooth/DockService;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "DockService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "connected deviceUI = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 453
    :cond_4
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 438
    .end local v0    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "btDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2    # "cachedDevices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;>;"
    .end local v3    # "deviceUI":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
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
    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 137
    sget-boolean v2, Lcom/android/settings_ex/bluetooth/DockService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "DockService"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    invoke-static {p0}, Lcom/android/settings_ex/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 140
    .local v0, "manager":Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_1

    .line 141
    const-string v2, "DockService"

    const-string v3, "Can\'t get LocalBluetoothManager: exiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    .line 146
    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    .line 147
    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    .line 148
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    if-nez v2, :cond_2

    .line 149
    const-string v2, "DockService"

    const-string v3, "Can\'t get LocalBluetoothProfileManager: exiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 153
    :cond_2
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "DockService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 154
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 156
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    .line 157
    new-instance v2, Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;-><init>(Lcom/android/settings_ex/bluetooth/DockService;Landroid/os/Looper;Lcom/android/settings_ex/bluetooth/DockService$1;)V

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mServiceHandler:Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/16 v3, -0x64

    const/4 v2, 0x0

    .line 162
    sget-boolean v0, Lcom/android/settings_ex/bluetooth/DockService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DockService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mBackupStartId:I

    if-eq v0, v3, :cond_1

    .line 166
    iget v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mBackupStartId:I

    invoke-static {p0, v0}, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 167
    iput v3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mBackupStartId:I

    .line 170
    :cond_1
    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    .line 171
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDialog:Lcom/oneplus/app/OPAlertDialog;

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDialog:Lcom/oneplus/app/OPAlertDialog;

    invoke-virtual {v0}, Lcom/oneplus/app/OPAlertDialog;->dismiss()V

    .line 173
    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDialog:Lcom/oneplus/app/OPAlertDialog;

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_3

    .line 176
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 178
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    if-eqz v0, :cond_4

    .line 179
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 182
    :cond_4
    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    .line 183
    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    .line 184
    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    .line 185
    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    .line 186
    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/DockService;->mServiceHandler:Lcom/android/settings_ex/bluetooth/DockService$ServiceHandler;

    .line 187
    return-void
.end method

.method public declared-synchronized onServiceConnected()V
    .locals 1

    .prologue
    .line 930
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 932
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    .line 933
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 935
    :cond_0
    monitor-exit p0

    return-void

    .line 930
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceDisconnected()V
    .locals 0

    .prologue
    .line 939
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 201
    sget-boolean v4, Lcom/android/settings_ex/bluetooth/DockService;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "DockService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStartCommand startId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " flags: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    iput p3, p0, Lcom/android/settings_ex/bluetooth/DockService;->mBackupStartId:I

    .line 205
    if-nez p1, :cond_3

    .line 207
    sget-boolean v4, Lcom/android/settings_ex/bluetooth/DockService;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "DockService"

    const-string v5, "START_NOT_STICKY - intent is null."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_1
    invoke-static {p0, p3}, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 261
    :cond_2
    :goto_0
    return v7

    .line 215
    :cond_3
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 216
    invoke-direct {p0, p1, p3}, Lcom/android/settings_ex/bluetooth/DockService;->handleBtStateChange(Landroid/content/Intent;I)V

    goto :goto_0

    .line 224
    :cond_4
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 225
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 226
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 228
    .local v0, "disconnectedDevice":Landroid/bluetooth/BluetoothDevice;
    const-string v4, "connect_retry_count"

    invoke-interface {v2, v4, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 229
    .local v3, "retryCount":I
    if-ge v3, v9, :cond_2

    .line 230
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "connect_retry_count"

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 231
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v4}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settings_exlib/bluetooth/HeadsetProfile;

    move-result-object v4

    invoke-direct {p0, v0, v4, p3}, Lcom/android/settings_ex/bluetooth/DockService;->handleUnexpectedDisconnect(Landroid/bluetooth/BluetoothDevice;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;I)V

    goto :goto_0

    .line 234
    .end local v0    # "disconnectedDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "retryCount":I
    :cond_5
    const-string v4, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 235
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 238
    .restart local v0    # "disconnectedDevice":Landroid/bluetooth/BluetoothDevice;
    const-string v4, "connect_retry_count"

    invoke-interface {v2, v4, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 239
    .restart local v3    # "retryCount":I
    if-ge v3, v9, :cond_2

    .line 240
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "connect_retry_count"

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 241
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DockService;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v4}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settings_exlib/bluetooth/A2dpProfile;

    move-result-object v4

    invoke-direct {p0, v0, v4, p3}, Lcom/android/settings_ex/bluetooth/DockService;->handleUnexpectedDisconnect(Landroid/bluetooth/BluetoothDevice;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;I)V

    goto :goto_0

    .line 246
    .end local v0    # "disconnectedDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "retryCount":I
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/DockService;->parseIntent(Landroid/content/Intent;)Landroid/os/Message;

    move-result-object v1

    .line 247
    .local v1, "msg":Landroid/os/Message;
    if-nez v1, :cond_8

    .line 249
    sget-boolean v4, Lcom/android/settings_ex/bluetooth/DockService;->DEBUG:Z

    if-eqz v4, :cond_7

    const-string v4, "DockService"

    const-string v5, "START_NOT_STICKY - Bad intent."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_7
    invoke-static {p0, p3}, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    goto/16 :goto_0

    .line 254
    :cond_8
    iget v4, v1, Landroid/os/Message;->what:I

    const/16 v5, 0xde

    if-ne v4, v5, :cond_9

    .line 255
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "connect_retry_count"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 258
    :cond_9
    iput p3, v1, Landroid/os/Message;->arg2:I

    .line 259
    invoke-direct {p0, v1}, Lcom/android/settings_ex/bluetooth/DockService;->processMessage(Landroid/os/Message;)V

    goto/16 :goto_0
.end method
