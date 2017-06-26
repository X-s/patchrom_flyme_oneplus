.class public final Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
.super Ljava/lang/Object;
.source "CachedBluetoothDevice.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;",
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

.field private static final TAG:Ljava/lang/String; = "CachedBluetoothDevice"


# instance fields
.field private mBtClass:Landroid/bluetooth/BluetoothClass;

.field private final mCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectAfterPairing:Z

.field private mConnectAttempted:J

.field private final mContext:Landroid/content/Context;

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mIsConnectingErrorPossible:Z

.field private final mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

.field private mLocalNapRoleConnected:Z

.field private mMessageRejectionCount:I

.field private mName:Ljava/lang/String;

.field private mProfileConnectionState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

.field private final mProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemovedProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mRssi:S

.field private mVisible:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    .param p3, "profileManager"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;
    .param p4, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    .line 166
    iput-object p1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 167
    iput-object p2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    .line 168
    iput-object p3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    .line 169
    iput-object p4, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    .line 171
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->fillData()V

    .line 172
    return-void
.end method

.method private connectAutoConnectableProfiles()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 245
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v2

    if-nez v2, :cond_1

    .line 257
    :cond_0
    return-void

    .line 249
    :cond_1
    iput-boolean v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 251
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

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

    check-cast v1, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .line 252
    .local v1, "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    invoke-interface {v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->isAutoConnectable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 253
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v2, v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 254
    invoke-virtual {p0, v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0
.end method

.method private connectWithoutResettingTimer(Z)V
    .locals 5
    .param p1, "connectAllProfiles"    # Z

    .prologue
    .line 213
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 221
    const-string v3, "CachedBluetoothDevice"

    const-string v4, "No profiles. Maybe we will connect later"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 228
    const/4 v1, 0x0

    .line 229
    .local v1, "preferredProfiles":I
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

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

    check-cast v2, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .line 230
    .local v2, "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    if-eqz p1, :cond_3

    invoke-interface {v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 231
    :goto_2
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v2, v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 232
    add-int/lit8 v1, v1, 0x1

    .line 233
    invoke-virtual {p0, v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1

    .line 230
    :cond_3
    invoke-interface {v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->isAutoConnectable()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 239
    .end local v2    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    :cond_4
    if-nez v1, :cond_0

    .line 240
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->connectAutoConnectableProfiles()V

    goto :goto_0
.end method

.method private describe(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;
    .locals 3
    .param p1, "profile"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    if-eqz p1, :cond_0

    .line 118
    const-string v1, " Profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private dispatchAttributesChanged()V
    .locals 4

    .prologue
    .line 639
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v3

    .line 640
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice$Callback;

    .line 641
    .local v0, "callback":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice$Callback;
    invoke-interface {v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice$Callback;->onDeviceAttributesChanged()V

    goto :goto_0

    .line 643
    .end local v0    # "callback":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice$Callback;
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

    .line 644
    return-void
.end method

.method private ensurePaired()Z
    .locals 2

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->startPairing()Z

    .line 289
    const/4 v0, 0x0

    .line 291
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private fetchBtClass()V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    .line 483
    return-void
.end method

.method private fetchMessageRejectionCount()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 811
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_message_reject"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 813
    .local v0, "preference":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mMessageRejectionCount:I

    .line 814
    return-void
.end method

.method private fetchName()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 413
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 417
    :cond_0
    return-void
.end method

.method private fillData()V
    .locals 1

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->fetchName()V

    .line 363
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->fetchBtClass()V

    .line 364
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    .line 365
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->migratePhonebookPermissionChoice()V

    .line 366
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->migrateMessagePermissionChoice()V

    .line 367
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->fetchMessageRejectionCount()V

    .line 369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 370
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 371
    return-void
.end method

.method private migrateMessagePermissionChoice()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 779
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v4, "bluetooth_message_permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 781
    .local v2, "preferences":Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 797
    :goto_0
    return-void

    .line 785
    :cond_0
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getMessageAccessPermission()I

    move-result v3

    if-nez v3, :cond_1

    .line 786
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 787
    .local v1, "oldPermission":I
    if-ne v1, v6, :cond_2

    .line 788
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v6}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    .line 794
    .end local v1    # "oldPermission":I
    :cond_1
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 795
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 796
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 789
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "oldPermission":I
    :cond_2
    if-ne v1, v7, :cond_1

    .line 790
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v7}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    goto :goto_1
.end method

.method private migratePhonebookPermissionChoice()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 716
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v4, "bluetooth_phonebook_permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 718
    .local v2, "preferences":Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 734
    :goto_0
    return-void

    .line 722
    :cond_0
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v3

    if-nez v3, :cond_1

    .line 723
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 724
    .local v1, "oldPermission":I
    if-ne v1, v6, :cond_2

    .line 725
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v6}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 731
    .end local v1    # "oldPermission":I
    :cond_1
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 732
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 733
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 726
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "oldPermission":I
    :cond_2
    if-ne v1, v7, :cond_1

    .line 727
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v7}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_1
.end method

.method private processPhonebookAccess()V
    .locals 3

    .prologue
    .line 828
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    .line 843
    :cond_0
    :goto_0
    return-void

    .line 830
    :cond_1
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 831
    .local v0, "uuids":[Landroid/os/ParcelUuid;
    sget-object v1, Lcom/android/settings_exlib/bluetooth/PbapServerProfile;->PBAB_CLIENT_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 834
    invoke-virtual {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v1

    if-nez v1, :cond_0

    .line 835
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v1

    const/16 v2, 0x408

    if-ne v1, v2, :cond_2

    .line 837
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    goto :goto_0

    .line 839
    :cond_2
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    goto :goto_0
.end method

.method private saveMessageRejectionCount()V
    .locals 4

    .prologue
    .line 817
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_message_reject"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 819
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mMessageRejectionCount:I

    if-nez v1, :cond_0

    .line 820
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 824
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 825
    return-void

    .line 822
    :cond_0
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mMessageRejectionCount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private updateProfiles()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 486
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 487
    .local v1, "uuids":[Landroid/os/ParcelUuid;
    if-nez v1, :cond_1

    .line 510
    :cond_0
    :goto_0
    return v0

    .line 489
    :cond_1
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    .line 490
    .local v2, "localUuids":[Landroid/os/ParcelUuid;
    if-eqz v2, :cond_0

    .line 495
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->processPhonebookAccess()V

    .line 497
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    iget-boolean v5, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    iget-object v6, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->updateProfiles([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;ZLandroid/bluetooth/BluetoothDevice;)V

    .line 510
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkAndIncreaseMessageRejectionCount()Z
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 803
    iget v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mMessageRejectionCount:I

    if-ge v0, v1, :cond_0

    .line 804
    iget v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mMessageRejectionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mMessageRejectionCount:I

    .line 805
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->saveMessageRejectionCount()V

    .line 807
    :cond_0
    iget v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mMessageRejectionCount:I

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
    .line 353
    const-string v2, "CachedBluetoothDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Clearing all connection state for dev:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-virtual {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

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

    check-cast v1, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .line 356
    .local v1, "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 358
    .end local v1    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    :cond_0
    return-void
.end method

.method public compareTo(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;)I
    .locals 6
    .param p1, "another"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    .prologue
    const/16 v5, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 669
    invoke-virtual {p1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    :goto_1
    sub-int v0, v1, v4

    .line 670
    .local v0, "comparison":I
    if-eqz v0, :cond_2

    move v1, v0

    .line 686
    :goto_2
    return v1

    .end local v0    # "comparison":I
    :cond_0
    move v1, v3

    .line 669
    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_1

    .line 673
    .restart local v0    # "comparison":I
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    if-ne v1, v5, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v4

    if-ne v4, v5, :cond_4

    move v4, v2

    :goto_4
    sub-int v0, v1, v4

    .line 675
    if-eqz v0, :cond_5

    move v1, v0

    goto :goto_2

    :cond_3
    move v1, v3

    .line 673
    goto :goto_3

    :cond_4
    move v4, v3

    goto :goto_4

    .line 678
    :cond_5
    iget-boolean v1, p1, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eqz v1, :cond_6

    move v1, v2

    :goto_5
    iget-boolean v4, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eqz v4, :cond_7

    :goto_6
    sub-int v0, v1, v2

    .line 679
    if-eqz v0, :cond_8

    move v1, v0

    goto :goto_2

    :cond_6
    move v1, v3

    .line 678
    goto :goto_5

    :cond_7
    move v2, v3

    goto :goto_6

    .line 682
    :cond_8
    iget-short v1, p1, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mRssi:S

    iget-short v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mRssi:S

    sub-int v0, v1, v2

    .line 683
    if-eqz v0, :cond_9

    move v1, v0

    goto :goto_2

    .line 686
    :cond_9
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 45
    check-cast p1, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public connect(Z)V
    .locals 2
    .param p1, "connectAllProfiles"    # Z

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    .line 202
    invoke-direct {p0, p1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer(Z)V

    goto :goto_0
.end method

.method declared-synchronized connectInt(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V
    .locals 3
    .param p1, "profile"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 274
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->ensurePaired()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 284
    :goto_0
    monitor-exit p0

    return-void

    .line 277
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command sent successfully:CONNECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 283
    :cond_1
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

    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public connectProfile(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 265
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 268
    invoke-virtual {p0, p1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V

    .line 270
    invoke-virtual {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 271
    return-void
.end method

.method public disconnect()V
    .locals 5

    .prologue
    .line 175
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .line 176
    .local v2, "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    invoke-virtual {p0, v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 181
    .end local v2    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    :cond_0
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->getPbapProfile()Lcom/android/settings_exlib/bluetooth/PbapServerProfile;

    move-result-object v0

    .line 182
    .local v0, "PbapProfile":Lcom/android/settings_exlib/bluetooth/PbapServerProfile;
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Lcom/android/settings_exlib/bluetooth/PbapServerProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 184
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Lcom/android/settings_exlib/bluetooth/PbapServerProfile;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 186
    :cond_1
    return-void
.end method

.method public disconnect(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V
    .locals 3
    .param p1, "profile"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command sent successfully:DISCONNECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 653
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_1

    .line 654
    :cond_0
    const/4 v0, 0x0

    .line 656
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getBondState()I
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    return v0
.end method

.method public getBtClass()Landroid/bluetooth/BluetoothClass;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    return-object v0
.end method

.method public getConnectableProfiles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 612
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 614
    .local v0, "connectableProfiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;>;"
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

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

    check-cast v2, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .line 615
    .local v2, "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    invoke-interface {v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 616
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 619
    .end local v2    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    :cond_1
    return-object v0
.end method

.method public getConnectionSummary()I
    .locals 8

    .prologue
    .line 860
    const/4 v5, 0x0

    .line 861
    .local v5, "profileConnected":Z
    const/4 v0, 0x0

    .line 862
    .local v0, "a2dpNotConnected":Z
    const/4 v2, 0x0

    .line 864
    .local v2, "headsetNotConnected":Z
    invoke-virtual {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .line 865
    .local v4, "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    invoke-virtual {p0, v4}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)I

    move-result v1

    .line 867
    .local v1, "connectionStatus":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 877
    :pswitch_0
    invoke-interface {v4}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->isProfileReady()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 878
    instance-of v6, v4, Lcom/android/settings_exlib/bluetooth/A2dpProfile;

    if-nez v6, :cond_1

    instance-of v6, v4, Lcom/android/settings_exlib/bluetooth/A2dpSinkProfile;

    if-eqz v6, :cond_2

    .line 880
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 870
    :pswitch_1
    invoke-static {v1}, Lcom/android/settings_exlib/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v6

    .line 901
    .end local v1    # "connectionStatus":I
    .end local v4    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    :goto_1
    return v6

    .line 873
    .restart local v1    # "connectionStatus":I
    .restart local v4    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    :pswitch_2
    const/4 v5, 0x1

    .line 874
    goto :goto_0

    .line 881
    :cond_2
    instance-of v6, v4, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;

    if-eqz v6, :cond_0

    .line 882
    const/4 v2, 0x1

    goto :goto_0

    .line 889
    .end local v1    # "connectionStatus":I
    .end local v4    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    :cond_3
    if-eqz v5, :cond_7

    .line 890
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    .line 891
    sget v6, Lcom/android/settings_exlib/R$string;->bluetooth_connected_no_headset_no_a2dp:I

    goto :goto_1

    .line 892
    :cond_4
    if-eqz v0, :cond_5

    .line 893
    sget v6, Lcom/android/settings_exlib/R$string;->bluetooth_connected_no_a2dp:I

    goto :goto_1

    .line 894
    :cond_5
    if-eqz v2, :cond_6

    .line 895
    sget v6, Lcom/android/settings_exlib/R$string;->bluetooth_connected_no_headset:I

    goto :goto_1

    .line 897
    :cond_6
    sget v6, Lcom/android/settings_exlib/R$string;->bluetooth_connected:I

    goto :goto_1

    .line 901
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v6

    const/16 v7, 0xb

    if-ne v6, v7, :cond_8

    sget v6, Lcom/android/settings_exlib/R$string;->bluetooth_pairing:I

    goto :goto_1

    :cond_8
    const/4 v6, 0x0

    goto :goto_1

    .line 867
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getMaxConnectionState()I
    .locals 5

    .prologue
    .line 846
    const/4 v2, 0x0

    .line 847
    .local v2, "maxState":I
    invoke-virtual {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .line 848
    .local v3, "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    invoke-virtual {p0, v3}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)I

    move-result v0

    .line 849
    .local v0, "connectionStatus":I
    if-le v0, v2, :cond_0

    .line 850
    move v2, v0

    goto :goto_0

    .line 853
    .end local v0    # "connectionStatus":I
    .end local v3    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    :cond_1
    return v2
.end method

.method public getMessagePermissionChoice()I
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 737
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getMessageAccessPermission()I

    move-result v0

    .line 738
    .local v0, "permission":I
    if-ne v0, v1, :cond_0

    .line 743
    :goto_0
    return v1

    .line 740
    :cond_0
    if-ne v0, v2, :cond_1

    move v1, v2

    .line 741
    goto :goto_0

    .line 743
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhonebookPermissionChoice()I
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 694
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v0

    .line 695
    .local v0, "permission":I
    if-ne v0, v1, :cond_0

    .line 700
    :goto_0
    return v1

    .line 697
    :cond_0
    if-ne v0, v2, :cond_1

    move v1, v2

    .line 698
    goto :goto_0

    .line 700
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProfileConnectionState(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)I
    .locals 3
    .param p1, "profile"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 341
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 344
    :cond_0
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 345
    .local v0, "state":I
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .end local v0    # "state":I
    :cond_1
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRemovedProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    return-object v0
.end method

.method public getSimPermissionChoice()I
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 757
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getSimAccessPermission()I

    move-result v0

    .line 758
    .local v0, "permission":I
    if-ne v0, v1, :cond_0

    .line 763
    :goto_0
    return v1

    .line 760
    :cond_0
    if-ne v0, v2, :cond_1

    move v1, v2

    .line 761
    goto :goto_0

    .line 763
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBusy()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 468
    iget-object v4, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .line 469
    .local v1, "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    invoke-virtual {p0, v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)I

    move-result v2

    .line 470
    .local v2, "status":I
    if-eq v2, v3, :cond_1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 475
    .end local v1    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    .end local v2    # "status":I
    :cond_1
    :goto_0
    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v4

    const/16 v5, 0xb

    if-eq v4, v5, :cond_1

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 4

    .prologue
    .line 451
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .line 452
    .local v1, "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    invoke-virtual {p0, v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)I

    move-result v2

    .line 453
    .local v2, "status":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 454
    const/4 v3, 0x1

    .line 458
    .end local v1    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    .end local v2    # "status":I
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isConnectedProfile(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)Z
    .locals 2
    .param p1, "profile"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 462
    invoke-virtual {p0, p1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)I

    move-result v0

    .line 463
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

.method isUserInitiatedPairing()Z
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 424
    iget-boolean v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    return v0
.end method

.method onBondingDockConnect()V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->connect(Z)V

    .line 209
    return-void
.end method

.method onBondingStateChanged(I)V
    .locals 2
    .param p1, "bondState"    # I

    .prologue
    const/4 v1, 0x0

    .line 574
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 576
    iput-boolean v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 577
    invoke-virtual {p0, v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 578
    invoke-virtual {p0, v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    .line 579
    invoke-virtual {p0, v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->setSimPermissionChoice(I)V

    .line 580
    iput v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mMessageRejectionCount:I

    .line 581
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->saveMessageRejectionCount()V

    .line 584
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 586
    const/16 v0, 0xc

    if-ne p1, v0, :cond_2

    .line 587
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 588
    invoke-virtual {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->onBondingDockConnect()V

    .line 592
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 594
    :cond_2
    return-void

    .line 589
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    if-eqz v0, :cond_1

    .line 590
    invoke-virtual {p0, v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto :goto_0
.end method

.method onProfileStateChanged(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;I)V
    .locals 5
    .param p1, "profile"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    .param p2, "newProfileState"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 126
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

    .line 129
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 131
    const-string v0, "CachedBluetoothDevice"

    const-string v1, " BT Turninig Off...Profile conn state change ignored..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .end local p1    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    :cond_0
    :goto_0
    return-void

    .line 134
    .restart local p1    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    :cond_1
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 136
    instance-of v0, p1, Lcom/android/settings_exlib/bluetooth/MapProfile;

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0, v4}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 138
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    instance-of v0, p1, Lcom/android/settings_exlib/bluetooth/PanProfile;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/settings_exlib/bluetooth/PanProfile;

    .end local p1    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Lcom/android/settings_exlib/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iput-boolean v4, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    goto :goto_0

    .line 149
    .restart local p1    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    :cond_3
    instance-of v0, p1, Lcom/android/settings_exlib/bluetooth/MapProfile;

    if-eqz v0, :cond_4

    if-nez p2, :cond_4

    .line 151
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0, v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_0

    .line 152
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/settings_exlib/bluetooth/PanProfile;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/settings_exlib/bluetooth/PanProfile;

    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 155
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "Removing PanProfile from device after NAP disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iput-boolean v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    goto :goto_0
.end method

.method onUuidChanged()V
    .locals 10

    .prologue
    .line 526
    const-string v5, "CachedBluetoothDevice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " onUuidChanged, mProfile Size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 529
    .local v1, "mPrevProfiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;>;"
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 530
    iget-object v5, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 531
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    .line 535
    iget-object v5, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 536
    const-string v5, "CachedBluetoothDevice"

    const-string v6, "UUID not udpated, returning"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v5, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 538
    iget-object v5, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 571
    :goto_0
    return-void

    .line 541
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 542
    iget-object v5, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 543
    iget-object v5, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 546
    :cond_2
    iget-object v5, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 547
    iget-object v5, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 549
    iget-object v5, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v4

    .line 551
    .local v4, "uuids":[Landroid/os/ParcelUuid;
    const-wide/16 v2, 0x1388

    .line 552
    .local v2, "timeout":J
    sget-object v5, Landroid/bluetooth/BluetoothUuid;->Hogp:Landroid/os/ParcelUuid;

    invoke-static {v4, v5}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 553
    const-wide/16 v2, 0x7530

    .line 565
    :cond_3
    iget-object v5, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    iget-wide v6, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    add-long/2addr v6, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-lez v5, :cond_4

    .line 567
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer(Z)V

    .line 570
    :cond_4
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    goto :goto_0
.end method

.method refresh()V
    .locals 0

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 421
    return-void
.end method

.method refreshBtClass()V
    .locals 0

    .prologue
    .line 518
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->fetchBtClass()V

    .line 519
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 520
    return-void
.end method

.method refreshName()V
    .locals 0

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->fetchName()V

    .line 407
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 408
    return-void
.end method

.method public registerCallback(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice$Callback;

    .prologue
    .line 627
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 628
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 629
    monitor-exit v1

    .line 630
    return-void

    .line 629
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setBtClass(Landroid/bluetooth/BluetoothClass;)V
    .locals 1
    .param p1, "btClass"    # Landroid/bluetooth/BluetoothClass;

    .prologue
    .line 597
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eq v0, p1, :cond_0

    .line 598
    iput-object p1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    .line 599
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 601
    :cond_0
    return-void
.end method

.method public setMessagePermissionChoice(I)V
    .locals 2
    .param p1, "permissionChoice"    # I

    .prologue
    .line 747
    const/4 v0, 0x0

    .line 748
    .local v0, "permission":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 749
    const/4 v0, 0x1

    .line 753
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    .line 754
    return-void

    .line 750
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 751
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    iput-object p1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 400
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)Z

    .line 401
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 403
    :cond_0
    return-void
.end method

.method setNewName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 386
    iput-object p1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 387
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 390
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 392
    :cond_2
    return-void
.end method

.method public setPhonebookPermissionChoice(I)V
    .locals 2
    .param p1, "permissionChoice"    # I

    .prologue
    .line 704
    const/4 v0, 0x0

    .line 705
    .local v0, "permission":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 706
    const/4 v0, 0x1

    .line 710
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 711
    return-void

    .line 707
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 708
    const/4 v0, 0x2

    goto :goto_0
.end method

.method setRssi(S)V
    .locals 1
    .param p1, "rssi"    # S

    .prologue
    .line 439
    iget-short v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mRssi:S

    if-eq v0, p1, :cond_0

    .line 440
    iput-short p1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mRssi:S

    .line 441
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 443
    :cond_0
    return-void
.end method

.method setSimPermissionChoice(I)V
    .locals 2
    .param p1, "permissionChoice"    # I

    .prologue
    .line 767
    const/4 v0, 0x0

    .line 768
    .local v0, "permission":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 769
    const/4 v0, 0x1

    .line 773
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->setSimAccessPermission(I)Z

    .line 774
    return-void

    .line 770
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 771
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 429
    iput-boolean p1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 430
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 432
    :cond_0
    return-void
.end method

.method public startPairing()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 297
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->cancelDiscovery()V

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v1

    if-nez v1, :cond_1

    .line 302
    const/4 v0, 0x0

    .line 306
    :goto_0
    return v0

    .line 305
    :cond_1
    iput-boolean v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unpair()V
    .locals 6

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    .line 320
    .local v1, "state":I
    const/16 v3, 0xb

    if-ne v1, v3, :cond_0

    .line 321
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    .line 324
    :cond_0
    const/16 v3, 0xa

    if-eq v1, v3, :cond_1

    .line 325
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 326
    .local v0, "dev":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    move-result v2

    .line 328
    .local v2, "successful":Z
    if-eqz v2, :cond_1

    .line 330
    const-string v3, "CachedBluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Command sent successfully:REMOVE_BOND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    .end local v0    # "dev":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "successful":Z
    :cond_1
    return-void
.end method

.method public unregisterCallback(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice$Callback;

    .prologue
    .line 633
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 634
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 635
    monitor-exit v1

    .line 636
    return-void

    .line 635
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
