.class final Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
.super Ljava/lang/Object;
.source "CachedBluetoothDevice.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACCESS_ALLOWED:I = 0x1

.field public static final ACCESS_REJECTED:I = 0x2

.field public static final ACCESS_UNKNOWN:I = 0x0

.field private static final DEBUG:Z = false

.field private static final MAX_HOGP_DELAY_FOR_AUTO_CONNECT:J = 0x7530L

.field private static final MAX_UUID_DELAY_FOR_AUTO_CONNECT:J = 0x1388L

.field private static final MESSAGE_REJECTION_COUNT_LIMIT_TO_PERSIST:I = 0x2

.field private static final MESSAGE_REJECTION_COUNT_PREFS_NAME:Ljava/lang/String; = "bluetooth_message_reject"

.field public static final PBAP_CONNECT_RECEIVED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "CachedBluetoothDevice"


# instance fields
.field private mBtClass:Landroid/bluetooth/BluetoothClass;

.field private final mCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectAfterPairing:Z

.field private mConnectAttempted:J

.field private final mContext:Landroid/content/Context;

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceRemove:Z

.field private mIsConnectingErrorPossible:Z

.field private final mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

.field private mLocalNapRoleConnected:Z

.field private mMessagePermissionChoice:I

.field private mMessageRejectionCount:I

.field private mName:Ljava/lang/String;

.field private mPhonebookPermissionChoice:I

.field private mProfileConnectionState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

.field private final mProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemovedProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mRssi:S

.field private mVisible:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;
    .param p3, "profileManager"    # Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;
    .param p4, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    .line 175
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 176
    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    .line 177
    iput-object p3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    .line 178
    iput-object p4, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    .line 180
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->fillData()V

    .line 181
    return-void
.end method

.method private connectAutoConnectableProfiles()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 254
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v2

    if-nez v2, :cond_1

    .line 266
    :cond_0
    return-void

    .line 258
    :cond_1
    iput-boolean v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 260
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    .line 261
    .local v1, "profile":Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    invoke-interface {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->isAutoConnectable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 262
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v2, v3}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 263
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0
.end method

.method private connectWithoutResettingTimer(Z)V
    .locals 5
    .param p1, "connectAllProfiles"    # Z

    .prologue
    .line 222
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 230
    const-string v3, "CachedBluetoothDevice"

    const-string v4, "No profiles. Maybe we will connect later"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 237
    const/4 v1, 0x0

    .line 238
    .local v1, "preferredProfiles":I
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    .line 239
    .local v2, "profile":Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    if-eqz p1, :cond_3

    invoke-interface {v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 240
    :goto_2
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v2, v3}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 241
    add-int/lit8 v1, v1, 0x1

    .line 242
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1

    .line 239
    :cond_3
    invoke-interface {v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->isAutoConnectable()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 248
    .end local v2    # "profile":Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    :cond_4
    if-nez v1, :cond_0

    .line 249
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->connectAutoConnectableProfiles()V

    goto :goto_0
.end method

.method private describe(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;
    .locals 3
    .param p1, "profile"    # Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    if-eqz p1, :cond_0

    .line 127
    const-string v1, " Profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private dispatchAttributesChanged()V
    .locals 4

    .prologue
    .line 673
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v3

    .line 674
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice$Callback;

    .line 675
    .local v0, "callback":Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice$Callback;
    invoke-interface {v0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice$Callback;->onDeviceAttributesChanged()V

    goto :goto_0

    .line 677
    .end local v0    # "callback":Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice$Callback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 678
    return-void
.end method

.method private ensurePaired()Z
    .locals 2

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->startPairing()Z

    .line 301
    const/4 v0, 0x0

    .line 303
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private fetchBtClass()V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    .line 517
    return-void
.end method

.method private fetchMessageRejectionCount()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 814
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_message_reject"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 816
    .local v0, "preference":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mMessageRejectionCount:I

    .line 817
    return-void
.end method

.method private fetchName()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 437
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 441
    :cond_0
    return-void
.end method

.method private fillData()V
    .locals 1

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->fetchName()V

    .line 376
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->fetchBtClass()V

    .line 377
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    .line 378
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->migratePhonebookPermissionChoice()V

    .line 379
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->migrateMessagePermissionChoice()V

    .line 380
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->fetchMessageRejectionCount()V

    .line 382
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 383
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 384
    return-void
.end method

.method private migrateMessagePermissionChoice()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 782
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v4, "bluetooth_message_permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 784
    .local v2, "preferences":Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 800
    :goto_0
    return-void

    .line 788
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getMessageAccessPermission()I

    move-result v3

    if-nez v3, :cond_1

    .line 789
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 790
    .local v1, "oldPermission":I
    if-ne v1, v6, :cond_2

    .line 791
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v6}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    .line 797
    .end local v1    # "oldPermission":I
    :cond_1
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 798
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 799
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 792
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "oldPermission":I
    :cond_2
    if-ne v1, v7, :cond_1

    .line 793
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v7}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    goto :goto_1
.end method

.method private migratePhonebookPermissionChoice()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 739
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v4, "bluetooth_phonebook_permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 741
    .local v2, "preferences":Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 757
    :goto_0
    return-void

    .line 745
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v3

    if-nez v3, :cond_1

    .line 746
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 747
    .local v1, "oldPermission":I
    if-ne v1, v6, :cond_2

    .line 748
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v6}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 754
    .end local v1    # "oldPermission":I
    :cond_1
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 755
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 756
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 749
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "oldPermission":I
    :cond_2
    if-ne v1, v7, :cond_1

    .line 750
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v7}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_1
.end method

.method private processPhonebookAccess()V
    .locals 3

    .prologue
    .line 831
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    .line 839
    :cond_0
    :goto_0
    return-void

    .line 833
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 834
    .local v0, "uuids":[Landroid/os/ParcelUuid;
    sget-object v1, Lcom/android/settings_ex/bluetooth/PbapServerProfile;->PBAB_CLIENT_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 837
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    goto :goto_0
.end method

.method private saveMessageRejectionCount()V
    .locals 4

    .prologue
    .line 820
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_message_reject"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 822
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mMessageRejectionCount:I

    if-nez v1, :cond_0

    .line 823
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 827
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 828
    return-void

    .line 825
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mMessageRejectionCount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private updateProfiles()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 520
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 521
    .local v1, "uuids":[Landroid/os/ParcelUuid;
    if-nez v1, :cond_1

    .line 544
    :cond_0
    :goto_0
    return v0

    .line 523
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    .line 524
    .local v2, "localUuids":[Landroid/os/ParcelUuid;
    if-eqz v2, :cond_0

    .line 529
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->processPhonebookAccess()V

    .line 531
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    iget-boolean v5, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->updateProfiles([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;ZLandroid/bluetooth/BluetoothDevice;)V

    .line 544
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method checkAndIncreaseMessageRejectionCount()Z
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 806
    iget v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mMessageRejectionCount:I

    if-ge v0, v1, :cond_0

    .line 807
    iget v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mMessageRejectionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mMessageRejectionCount:I

    .line 808
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->saveMessageRejectionCount()V

    .line 810
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mMessageRejectionCount:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearProfileConnectionState()V
    .locals 5

    .prologue
    .line 366
    const-string v2, "CachedBluetoothDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Clearing all connection state for dev:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    .line 369
    .local v1, "profile":Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 371
    .end local v1    # "profile":Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    :cond_0
    return-void
.end method

.method public compareTo(Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;)I
    .locals 6
    .param p1, "another"    # Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    .prologue
    const/16 v5, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 703
    invoke-virtual {p1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    :goto_1
    sub-int v0, v1, v4

    .line 704
    .local v0, "comparison":I
    if-eqz v0, :cond_2

    move v1, v0

    .line 720
    :goto_2
    return v1

    .end local v0    # "comparison":I
    :cond_0
    move v1, v3

    .line 703
    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_1

    .line 707
    .restart local v0    # "comparison":I
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    if-ne v1, v5, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v4

    if-ne v4, v5, :cond_4

    move v4, v2

    :goto_4
    sub-int v0, v1, v4

    .line 709
    if-eqz v0, :cond_5

    move v1, v0

    goto :goto_2

    :cond_3
    move v1, v3

    .line 707
    goto :goto_3

    :cond_4
    move v4, v3

    goto :goto_4

    .line 712
    :cond_5
    iget-boolean v1, p1, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eqz v1, :cond_6

    move v1, v2

    :goto_5
    iget-boolean v4, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eqz v4, :cond_7

    :goto_6
    sub-int v0, v1, v2

    .line 713
    if-eqz v0, :cond_8

    move v1, v0

    goto :goto_2

    :cond_6
    move v1, v3

    .line 712
    goto :goto_5

    :cond_7
    move v2, v3

    goto :goto_6

    .line 716
    :cond_8
    iget-short v1, p1, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mRssi:S

    iget-short v2, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mRssi:S

    sub-int v0, v1, v2

    .line 717
    if-eqz v0, :cond_9

    move v1, v0

    goto :goto_2

    .line 720
    :cond_9
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    check-cast p1, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    return v0
.end method

.method connect(Z)V
    .locals 2
    .param p1, "connectAllProfiles"    # Z

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    .line 211
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer(Z)V

    goto :goto_0
.end method

.method declared-synchronized connectInt(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)V
    .locals 3
    .param p1, "profile"    # Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 283
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->ensurePaired()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 296
    :goto_0
    monitor-exit p0

    return-void

    .line 286
    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command sent successfully:CONNECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 292
    :cond_1
    if-eqz p1, :cond_2

    .line 293
    :try_start_2
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to connect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 295
    :cond_2
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "Failed to connect. No profile specified"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method connectProfile(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 274
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 277
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)V

    .line 279
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 280
    return-void
.end method

.method disconnect()V
    .locals 5

    .prologue
    .line 184
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    .line 185
    .local v2, "profile":Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 190
    .end local v2    # "profile":Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->getPbapProfile()Lcom/android/settings_ex/bluetooth/PbapServerProfile;

    move-result-object v0

    .line 191
    .local v0, "PbapProfile":Lcom/android/settings_ex/bluetooth/PbapServerProfile;
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/bluetooth/PbapServerProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 193
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/bluetooth/PbapServerProfile;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 195
    :cond_1
    return-void
.end method

.method disconnect(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)V
    .locals 3
    .param p1, "profile"    # Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command sent successfully:DISCONNECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 687
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_1

    .line 688
    :cond_0
    const/4 v0, 0x0

    .line 690
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method getBondState()I
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    return v0
.end method

.method getBtClass()Landroid/bluetooth/BluetoothClass;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    return-object v0
.end method

.method getConnectableProfiles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 646
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 648
    .local v0, "connectableProfiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;>;"
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    .line 649
    .local v2, "profile":Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    invoke-interface {v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 650
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 653
    .end local v2    # "profile":Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    :cond_1
    return-object v0
.end method

.method getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method getMessagePermissionChoice()I
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 760
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getMessageAccessPermission()I

    move-result v0

    .line 761
    .local v0, "permission":I
    if-ne v0, v1, :cond_0

    .line 766
    :goto_0
    return v1

    .line 763
    :cond_0
    if-ne v0, v2, :cond_1

    move v1, v2

    .line 764
    goto :goto_0

    .line 766
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getPhonebookPermissionChoice()I
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v0

    return v0
.end method

.method getProfileConnectionState(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)I
    .locals 3
    .param p1, "profile"    # Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 355
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 358
    .local v0, "state":I
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    .end local v0    # "state":I
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method getProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getRemovedProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method isBusy()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 502
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    .line 503
    .local v1, "profile":Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)I

    move-result v2

    .line 504
    .local v2, "status":I
    if-eq v2, v3, :cond_1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 509
    .end local v1    # "profile":Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    .end local v2    # "status":I
    :cond_1
    :goto_0
    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v4

    const/16 v5, 0xb

    if-eq v4, v5, :cond_1

    const/4 v3, 0x0

    goto :goto_0
.end method

.method isConnected()Z
    .locals 4

    .prologue
    .line 485
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    .line 486
    .local v1, "profile":Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)I

    move-result v2

    .line 487
    .local v2, "status":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 488
    const/4 v3, 0x1

    .line 492
    .end local v1    # "profile":Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    .end local v2    # "status":I
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method isConnectedProfile(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)Z
    .locals 2
    .param p1, "profile"    # Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 496
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)I

    move-result v0

    .line 497
    .local v0, "status":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isRemovable()Z
    .locals 1

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDeviceRemove:Z

    return v0
.end method

.method isUserInitiatedPairing()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    return v0
.end method

.method isVisible()Z
    .locals 1

    .prologue
    .line 448
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mVisible:Z

    return v0
.end method

.method onBondingDockConnect()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->connect(Z)V

    .line 218
    return-void
.end method

.method onBondingStateChanged(I)V
    .locals 3
    .param p1, "bondState"    # I

    .prologue
    const/4 v2, 0x0

    .line 608
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 610
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)Z

    .line 611
    iput-boolean v2, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 612
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 613
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    .line 614
    iput v2, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mMessageRejectionCount:I

    .line 615
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->saveMessageRejectionCount()V

    .line 618
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 620
    const/16 v0, 0xc

    if-ne p1, v0, :cond_2

    .line 621
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 622
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->onBondingDockConnect()V

    .line 626
    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 628
    :cond_2
    return-void

    .line 623
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    if-eqz v0, :cond_1

    .line 624
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto :goto_0
.end method

.method onProfileStateChanged(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;I)V
    .locals 5
    .param p1, "profile"    # Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    .param p2, "newProfileState"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 135
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProfileStateChanged: profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newProfileState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 140
    const-string v0, "CachedBluetoothDevice"

    const-string v1, " BT Turninig Off...Profile conn state change ignored..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .end local p1    # "profile":Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    :cond_0
    :goto_0
    return-void

    .line 143
    .restart local p1    # "profile":Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 145
    instance-of v0, p1, Lcom/android/settings_ex/bluetooth/MapProfile;

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0, v4}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 147
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    instance-of v0, p1, Lcom/android/settings_ex/bluetooth/PanProfile;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/settings_ex/bluetooth/PanProfile;

    .end local p1    # "profile":Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Lcom/android/settings_ex/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iput-boolean v4, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    goto :goto_0

    .line 158
    .restart local p1    # "profile":Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    :cond_3
    instance-of v0, p1, Lcom/android/settings_ex/bluetooth/MapProfile;

    if-eqz v0, :cond_4

    if-nez p2, :cond_4

    .line 160
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0, v3}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_0

    .line 161
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/settings_ex/bluetooth/PanProfile;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/settings_ex/bluetooth/PanProfile;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 164
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "Removing PanProfile from device after NAP disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 166
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iput-boolean v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    goto :goto_0
.end method

.method onUuidChanged()V
    .locals 10

    .prologue
    .line 560
    const-string v5, "CachedBluetoothDevice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " onUuidChanged, mProfile Size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 563
    .local v1, "mPrevProfiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;>;"
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 564
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 565
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    .line 569
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 570
    const-string v5, "CachedBluetoothDevice"

    const-string v6, "UUID not udpated, returning"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 572
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 605
    :goto_0
    return-void

    .line 575
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 576
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 577
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 580
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 581
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 583
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v4

    .line 584
    .local v4, "uuids":[Landroid/os/ParcelUuid;
    const-wide/16 v2, 0x1388

    .line 594
    .local v2, "timeout":J
    sget-object v5, Landroid/bluetooth/BluetoothUuid;->Hogp:Landroid/os/ParcelUuid;

    invoke-static {v4, v5}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 595
    const-wide/16 v2, 0x7530

    .line 600
    :cond_3
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    iget-wide v6, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    add-long/2addr v6, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-lez v5, :cond_4

    .line 602
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer(Z)V

    .line 604
    :cond_4
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    goto :goto_0
.end method

.method refresh()V
    .locals 0

    .prologue
    .line 444
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 445
    return-void
.end method

.method refreshBtClass()V
    .locals 0

    .prologue
    .line 552
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->fetchBtClass()V

    .line 553
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 554
    return-void
.end method

.method refreshName()V
    .locals 0

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->fetchName()V

    .line 431
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 432
    return-void
.end method

.method registerCallback(Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice$Callback;

    .prologue
    .line 661
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 662
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 663
    monitor-exit v1

    .line 664
    return-void

    .line 663
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setAliasName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 410
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 412
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)Z

    .line 414
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 416
    :cond_1
    return-void
.end method

.method setBtClass(Landroid/bluetooth/BluetoothClass;)V
    .locals 1
    .param p1, "btClass"    # Landroid/bluetooth/BluetoothClass;

    .prologue
    .line 631
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eq v0, p1, :cond_0

    .line 632
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    .line 633
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 635
    :cond_0
    return-void
.end method

.method setMessagePermissionChoice(I)V
    .locals 2
    .param p1, "permissionChoice"    # I

    .prologue
    .line 770
    const/4 v0, 0x0

    .line 771
    .local v0, "permission":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 772
    const/4 v0, 0x1

    .line 776
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    .line 777
    return-void

    .line 773
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 774
    const/4 v0, 0x2

    goto :goto_0
.end method

.method setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 424
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)Z

    .line 425
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 427
    :cond_0
    return-void
.end method

.method setNewName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 399
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 400
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 405
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 407
    :cond_1
    return-void

    .line 403
    :cond_2
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method setPhonebookPermissionChoice(I)V
    .locals 3
    .param p1, "permissionChoice"    # I

    .prologue
    .line 732
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPhonebookPermissionChoice, permissionChoice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 734
    return-void
.end method

.method setRemovable(Z)V
    .locals 0
    .param p1, "removable"    # Z

    .prologue
    .line 464
    iput-boolean p1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDeviceRemove:Z

    .line 465
    return-void
.end method

.method setRssi(S)V
    .locals 1
    .param p1, "rssi"    # S

    .prologue
    .line 473
    iget-short v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mRssi:S

    if-eq v0, p1, :cond_0

    .line 474
    iput-short p1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mRssi:S

    .line 475
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 477
    :cond_0
    return-void
.end method

.method setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 458
    iput-boolean p1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 459
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 461
    :cond_0
    return-void
.end method

.method startPairing()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 309
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->cancelDiscovery()V

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v1

    if-nez v1, :cond_1

    .line 314
    const/4 v0, 0x0

    .line 318
    :goto_0
    return v0

    .line 317
    :cond_1
    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unpair()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 330
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    .line 332
    .local v1, "state":I
    const/16 v3, 0xb

    if-ne v1, v3, :cond_0

    .line 333
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    .line 336
    :cond_0
    const/16 v3, 0xa

    if-eq v1, v3, :cond_1

    .line 337
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 338
    .local v0, "dev":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_1

    .line 339
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    move-result v2

    .line 340
    .local v2, "successful":Z
    if-eqz v2, :cond_1

    .line 342
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v6}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)Z

    .line 343
    const-string v3, "CachedBluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Command sent successfully:REMOVE_BOND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v6}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->setRemovable(Z)V

    .line 352
    .end local v0    # "dev":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "successful":Z
    :cond_1
    return-void
.end method

.method unregisterCallback(Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice$Callback;

    .prologue
    .line 667
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 668
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 669
    monitor-exit v1

    .line 670
    return-void

    .line 669
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
