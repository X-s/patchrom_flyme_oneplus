.class public Lcom/android/internal/telephony/OemPrefNetworkRequest;
.super Lcom/android/internal/telephony/OemSyncQueue$SyncRequest;
.source "OemPrefNetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final EVENT_GET_PREF_NETWORK_DONE:I = 0x2

.field private static final EVENT_SET_PREF_NETWORK_DONE:I = 0x1

.field private static final EVENT_START_REQUEST:I = 0x3

.field private static final TAG:Ljava/lang/String; = "OemPrefNetworkRequest"

.field private static final sSyncQueue:Lcom/android/internal/telephony/OemSyncQueue;


# instance fields
.field private final commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallback:Landroid/os/Message;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPhones:[Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/OemPrefNetworkRequest;->DBG:Z

    .line 35
    new-instance v0, Lcom/android/internal/telephony/OemSyncQueue;

    invoke-direct {v0}, Lcom/android/internal/telephony/OemSyncQueue;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/OemPrefNetworkRequest;->sSyncQueue:Lcom/android/internal/telephony/OemSyncQueue;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILandroid/os/Message;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slot"    # I
    .param p3, "networkMode"    # I
    .param p4, "callback"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 127
    sget-object v1, Lcom/android/internal/telephony/OemPrefNetworkRequest;->sSyncQueue:Lcom/android/internal/telephony/OemSyncQueue;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/OemSyncQueue$SyncRequest;-><init>(Lcom/android/internal/telephony/OemSyncQueue;)V

    .line 47
    new-instance v1, Lcom/android/internal/telephony/OemPrefNetworkRequest$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/OemPrefNetworkRequest$1;-><init>(Lcom/android/internal/telephony/OemPrefNetworkRequest;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/OemPrefNetworkRequest;->mHandler:Landroid/os/Handler;

    .line 128
    iput-object p1, p0, Lcom/android/internal/telephony/OemPrefNetworkRequest;->mContext:Landroid/content/Context;

    .line 129
    iput-object p4, p0, Lcom/android/internal/telephony/OemPrefNetworkRequest;->mCallback:Landroid/os/Message;

    .line 130
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/OemPrefNetworkRequest;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/OemPrefNetworkRequest;->commands:Ljava/util/List;

    .line 133
    if-eq p3, v3, :cond_1

    .line 134
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 135
    if-eq v0, p2, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/internal/telephony/OemPrefNetworkRequest;->commands:Ljava/util/List;

    new-instance v2, Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;-><init>(Lcom/android/internal/telephony/OemPrefNetworkRequest;IILcom/android/internal/telephony/OemPrefNetworkRequest$1;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    .end local v0    # "index":I
    :cond_1
    if-ltz p2, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 141
    iget-object v1, p0, Lcom/android/internal/telephony/OemPrefNetworkRequest;->commands:Ljava/util/List;

    new-instance v2, Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;

    invoke-direct {v2, p0, p2, p3, v4}, Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;-><init>(Lcom/android/internal/telephony/OemPrefNetworkRequest;IILcom/android/internal/telephony/OemPrefNetworkRequest$1;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/OemPrefNetworkRequest;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/OemPrefNetworkRequest;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/OemPrefNetworkRequest;->handleSetPreferredNetwork(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/OemPrefNetworkRequest;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/OemPrefNetworkRequest;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/OemPrefNetworkRequest;->handleGetPreferredNetwork(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/OemPrefNetworkRequest;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/OemPrefNetworkRequest;
    .param p1, "x1"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/OemPrefNetworkRequest;->request(I)V

    return-void
.end method

.method private handleGetPreferredNetwork(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 90
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 91
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 92
    .local v2, "index":I
    iget-object v4, p0, Lcom/android/internal/telephony/OemPrefNetworkRequest;->commands:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;

    .line 93
    .local v1, "command":Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 94
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    const/4 v5, 0x0

    aget v3, v4, v5

    .line 95
    .local v3, "modemNetworkMode":I
    # getter for: Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I
    invoke-static {v1}, Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;->access$400(Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v4

    invoke-direct {p0, v4, v3}, Lcom/android/internal/telephony/OemPrefNetworkRequest;->savePrefNetworkInSetting(II)V

    .line 97
    .end local v3    # "modemNetworkMode":I
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get perferred network for slot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I
    invoke-static {v1}, Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;->access$400(Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " done, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/OemPrefNetworkRequest;->logd(Ljava/lang/String;)V

    .line 98
    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lcom/android/internal/telephony/OemPrefNetworkRequest;->commands:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 99
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/OemPrefNetworkRequest;->request(I)V

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/OemPrefNetworkRequest;->mCallback:Landroid/os/Message;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/OemPrefNetworkRequest;->response(Landroid/os/Message;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/internal/telephony/OemPrefNetworkRequest;->end()V

    goto :goto_0
.end method

.method private handleSetPreferredNetwork(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 107
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 108
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 109
    .local v2, "index":I
    iget-object v3, p0, Lcom/android/internal/telephony/OemPrefNetworkRequest;->commands:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;

    .line 110
    .local v1, "command":Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;->mPrefNetwork:I
    invoke-static {v1}, Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;->access$300(Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I
    invoke-static {v1}, Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;->access$400(Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " done, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/OemPrefNetworkRequest;->logd(Ljava/lang/String;)V

    .line 112
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 113
    iget-object v3, p0, Lcom/android/internal/telephony/OemPrefNetworkRequest;->mPhones:[Lcom/android/internal/telephony/Phone;

    # getter for: Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I
    invoke-static {v1}, Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;->access$400(Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v4

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/internal/telephony/OemPrefNetworkRequest;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 123
    :goto_0
    return-void

    .line 117
    :cond_0
    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/OemPrefNetworkRequest;->commands:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 118
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/OemPrefNetworkRequest;->request(I)V

    goto :goto_0

    .line 120
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/OemPrefNetworkRequest;->mCallback:Landroid/os/Message;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OemPrefNetworkRequest;->response(Landroid/os/Message;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/telephony/OemPrefNetworkRequest;->end()V

    goto :goto_0
.end method

.method private static final logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 28
    sget-boolean v0, Lcom/android/internal/telephony/OemPrefNetworkRequest;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemPrefNetworkRequest"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    return-void
.end method

.method private static final loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 32
    const-string v0, "OemPrefNetworkRequest"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method

.method private request(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 77
    iget-object v1, p0, Lcom/android/internal/telephony/OemPrefNetworkRequest;->commands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;

    .line 78
    .local v0, "command":Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save network mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;->mPrefNetwork:I
    invoke-static {v0}, Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;->access$300(Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I
    invoke-static {v0}, Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;->access$400(Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to DB first"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/OemPrefNetworkRequest;->logd(Ljava/lang/String;)V

    .line 80
    # getter for: Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I
    invoke-static {v0}, Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;->access$400(Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v1

    # getter for: Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;->mPrefNetwork:I
    invoke-static {v0}, Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;->access$300(Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/OemPrefNetworkRequest;->savePrefNetworkInSetting(II)V

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;->mPrefNetwork:I
    invoke-static {v0}, Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;->access$300(Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I
    invoke-static {v0}, Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;->access$400(Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/OemPrefNetworkRequest;->logd(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/android/internal/telephony/OemPrefNetworkRequest;->mPhones:[Lcom/android/internal/telephony/Phone;

    # getter for: Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I
    invoke-static {v0}, Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;->access$400(Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v2

    aget-object v1, v1, v2

    # getter for: Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;->mPrefNetwork:I
    invoke-static {v0}, Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;->access$300(Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/OemPrefNetworkRequest;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 87
    return-void
.end method

.method private response(Landroid/os/Message;)V
    .locals 1
    .param p1, "callback"    # Landroid/os/Message;

    .prologue
    .line 165
    if-nez p1, :cond_0

    .line 173
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 171
    :cond_1
    const-string v0, "can\'t response the result, replyTo and target are all null!"

    invoke-static {v0}, Lcom/android/internal/telephony/OemPrefNetworkRequest;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private savePrefNetworkInSetting(II)V
    .locals 2
    .param p1, "slot"    # I
    .param p2, "networkMode"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/OemPrefNetworkRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    invoke-static {v0, v1, p1, p2}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 162
    return-void
.end method


# virtual methods
.method protected start()V
    .locals 4

    .prologue
    .line 146
    iget-object v1, p0, Lcom/android/internal/telephony/OemPrefNetworkRequest;->commands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    const-string v1, "no command sent"

    invoke-static {v1}, Lcom/android/internal/telephony/OemPrefNetworkRequest;->logd(Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/android/internal/telephony/OemPrefNetworkRequest;->mCallback:Landroid/os/Message;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/OemPrefNetworkRequest;->response(Landroid/os/Message;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/internal/telephony/OemPrefNetworkRequest;->end()V

    .line 155
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/OemPrefNetworkRequest;->commands:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/telephony/OemPrefNetworkRequest;->commands:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;

    .line 152
    .local v0, "command":Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try to set network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;->mPrefNetwork:I
    invoke-static {v0}, Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;->access$300(Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I
    invoke-static {v0}, Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;->access$400(Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/OemPrefNetworkRequest;->logd(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/android/internal/telephony/OemPrefNetworkRequest;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
