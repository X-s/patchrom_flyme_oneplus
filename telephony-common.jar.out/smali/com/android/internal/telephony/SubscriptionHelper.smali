.class Lcom/android/internal/telephony/SubscriptionHelper;
.super Landroid/os/Handler;
.source "SubscriptionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;
    }
.end annotation


# static fields
.field private static final APM_SIM_NOT_PWDN_PROPERTY:Ljava/lang/String; = "persist.radio.apm_sim_not_pwdn"

.field private static final EVENT_GET_PREFERRED_NETWORK_TYPE:I = 0x4

.field private static final EVENT_REFRESH:I = 0x2

.field private static final EVENT_SET_NW_MODE_DONE:I = 0x3

.field private static final EVENT_SET_UICC_SUBSCRIPTION_DONE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SubHelper"

.field public static final SUB_INIT_STATE:I = -0x1

.field public static final SUB_SET_UICC_FAIL:I = -0x64

.field public static final SUB_SET_UICC_SUCCESS:I = 0x1

.field public static final SUB_SIM_NOT_INSERTED:I = -0x63

.field private static mNwModeUpdated:Z

.field private static final sApmSIMNotPwdn:Z

.field private static sInstance:Lcom/android/internal/telephony/SubscriptionHelper;

.field private static sNumPhones:I

.field private static sTriggerDds:Z


# instance fields
.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mSetUiccTransaction:[Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;

.field private mSubStatus:[I

.field private final nwModeObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 72
    sput-boolean v1, Lcom/android/internal/telephony/SubscriptionHelper;->sTriggerDds:Z

    .line 135
    const-string v2, "persist.radio.apm_sim_not_pwdn"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/SubscriptionHelper;->sApmSIMNotPwdn:Z

    .line 147
    sput-boolean v1, Lcom/android/internal/telephony/SubscriptionHelper;->mNwModeUpdated:Z

    return-void

    :cond_0
    move v0, v1

    .line 135
    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 180
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 149
    new-instance v2, Lcom/android/internal/telephony/SubscriptionHelper$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/SubscriptionHelper$1;-><init>(Lcom/android/internal/telephony/SubscriptionHelper;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->nwModeObserver:Landroid/database/ContentObserver;

    .line 181
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mContext:Landroid/content/Context;

    .line 182
    iput-object p2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 183
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    sput v2, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    .line 184
    sget v2, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    .line 185
    sget v2, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    new-array v2, v2, [Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSetUiccTransaction:[Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;

    .line 186
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    if-ge v0, v2, :cond_0

    .line 187
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    const/4 v3, -0x1

    aput v3, v2, v0

    .line 188
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 190
    .local v1, "index":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/4 v3, 0x2

    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 191
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSetUiccTransaction:[Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;

    new-instance v3, Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;-><init>(Lcom/android/internal/telephony/SubscriptionHelper;)V

    aput-object v3, v2, v0

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    .end local v1    # "index":Ljava/lang/Integer;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionHelper;->nwModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubscriptionHelper init by Context, num phones = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ApmSIMNotPwdn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/telephony/SubscriptionHelper;->sApmSIMNotPwdn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-static {p0}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/android/internal/telephony/SubscriptionHelper;->mNwModeUpdated:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/SubscriptionHelper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionHelper;->updateNwModesInSubIdTable(Z)V

    return-void
.end method

.method private broadcastSetUiccResult(III)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "newSubState"    # I
    .param p3, "result"    # I

    .prologue
    .line 500
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingSlotId(I)[I

    move-result-object v1

    .line 501
    .local v1, "subId":[I
    new-instance v0, Landroid/content/Intent;

    const-string v2, "org.codeaurora.intent.action.ACTION_SUBSCRIPTION_SET_UICC_RESULT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 502
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 503
    const/4 v2, 0x0

    aget v2, v1, v2

    invoke-static {v0, p1, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V

    .line 504
    const-string v2, "operationResult"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 505
    const-string v2, "newSubState"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 506
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 507
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/SubscriptionHelper;
    .locals 2

    .prologue
    .line 173
    sget-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->sInstance:Lcom/android/internal/telephony/SubscriptionHelper;

    if-nez v0, :cond_0

    .line 174
    const-string v0, "SubHelper"

    const-string v1, "getInstance null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->sInstance:Lcom/android/internal/telephony/SubscriptionHelper;

    return-object v0
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 251
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 252
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 253
    .local v2, "phoneId":Ljava/lang/Integer;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 254
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x0

    aget v1, v3, v4

    .line 257
    .local v1, "modemNetworkMode":I
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionHelper;->isNwModeValid(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating nw mode in DB for slot["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 260
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v3, v4, v5, v1}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 269
    .end local v1    # "modemNetworkMode":I
    :goto_0
    return-void

    .line 264
    .restart local v1    # "modemNetworkMode":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeResponse: InValid for slot : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionHelper;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 267
    .end local v1    # "modemNetworkMode":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeResponse: Failed for slot : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionHelper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSetPrefNwModeDone(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 277
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 278
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 279
    const-string v3, "Failed to set preferred network mode as per simInfo Table"

    invoke-static {v3}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 281
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget v3, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    if-ge v2, v3, :cond_1

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get nw mode from modem and set to DB for slot :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 283
    const/4 v3, 0x4

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 285
    .local v1, "getNwModeMsg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v2

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 288
    .end local v1    # "getNwModeMsg":Landroid/os/Message;
    .end local v2    # "i":I
    :cond_0
    const-string v3, "Success to set pref nw mode as per sim info table on a slot"

    invoke-static {v3}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 291
    :cond_1
    return-void
.end method

.method public static init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionHelper;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 162
    const-class v1, Lcom/android/internal/telephony/SubscriptionHelper;

    monitor-enter v1

    .line 163
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->sInstance:Lcom/android/internal/telephony/SubscriptionHelper;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Lcom/android/internal/telephony/SubscriptionHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/SubscriptionHelper;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->sInstance:Lcom/android/internal/telephony/SubscriptionHelper;

    .line 168
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->sInstance:Lcom/android/internal/telephony/SubscriptionHelper;

    monitor-exit v1

    return-object v0

    .line 166
    :cond_0
    const-string v0, "SubHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/SubscriptionHelper;->sInstance:Lcom/android/internal/telephony/SubscriptionHelper;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isAllSubsAvailable()Z
    .locals 4

    .prologue
    .line 510
    const/4 v0, 0x1

    .line 512
    .local v0, "allSubsAvailable":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    if-ge v1, v2, :cond_1

    .line 513
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    aget v2, v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 514
    const/4 v0, 0x0

    .line 512
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 517
    :cond_1
    return v0
.end method

.method private isCardDetectStatus(I)Z
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    .line 573
    const/4 v5, 0x0

    .line 574
    .local v5, "ret":Z
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    .line 575
    .local v4, "mUiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-nez v4, :cond_0

    .line 576
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setUiccSubscription: slotId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " card info not available"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 577
    const/4 v6, 0x0

    .line 595
    :goto_0
    return v6

    .line 579
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 580
    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v3

    .line 581
    .local v3, "mUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v1

    .line 582
    .local v1, "appType":I
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v0

    .line 583
    .local v0, "appState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    const/4 v6, 0x2

    if-eq v1, v6, :cond_1

    const/4 v6, 0x1

    if-eq v1, v6, :cond_1

    const/4 v6, 0x4

    if-eq v1, v6, :cond_1

    const/4 v6, 0x3

    if-ne v1, v6, :cond_3

    :cond_1
    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v0, v6, :cond_3

    .line 590
    const/4 v5, 0x1

    .line 594
    .end local v0    # "appState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .end local v1    # "appType":I
    .end local v3    # "mUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "slotId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isCardDetectStatus "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    move v6, v5

    .line 595
    goto :goto_0

    .line 579
    .restart local v0    # "appState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .restart local v1    # "appType":I
    .restart local v3    # "mUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private isNwModeValid(I)Z
    .locals 1
    .param p1, "nwMode"    # I

    .prologue
    .line 272
    if-ltz p1, :cond_0

    const/16 v0, 0x16

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 560
    const-string v0, "SubHelper"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 568
    const-string v0, "SubHelper"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 564
    const-string v0, "SubHelper"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    return-void
.end method

.method private processSetUiccSubscriptionDone(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v7, -0x64

    const/4 v8, 0x1

    const/4 v11, 0x0

    .line 436
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    .line 437
    .local v3, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 438
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 439
    .local v2, "slotId":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 440
    .local v1, "newSubState":I
    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingSlotId(I)[I

    move-result-object v4

    .line 442
    .local v4, "subId":[I
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSetUiccTransaction:[Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;

    aget-object v9, v6, v2

    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_1

    move v6, v7

    :goto_0
    invoke-virtual {v9, v10, v6}, Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;->updateAppResult(II)V

    .line 444
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSetUiccTransaction:[Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;->isResponseReceivedForAllApps()Z

    move-result v6

    if-nez v6, :cond_2

    .line 445
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Waiting for more responses "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSetUiccTransaction:[Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " slotId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionHelper;->logi(Ljava/lang/String;)V

    .line 480
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v6, v8

    .line 442
    goto :goto_0

    .line 448
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " SubParams info "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSetUiccTransaction:[Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;

    aget-object v9, v9, v2

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " slotId "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 450
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSetUiccTransaction:[Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;

    aget-object v6, v6, v2

    invoke-virtual {v6, v1}, Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;->getTransactionResult(I)I

    move-result v6

    if-ne v6, v8, :cond_3

    .line 452
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in SET_UICC_SUBSCRIPTION, slotId = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " newSubState "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionHelper;->loge(Ljava/lang/String;)V

    .line 455
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    aput v7, v6, v2

    .line 456
    invoke-direct {p0, v2, v1, v8}, Lcom/android/internal/telephony/SubscriptionHelper;->broadcastSetUiccResult(III)V

    .line 457
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSetUiccTransaction:[Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;->resetToDefault()V

    goto :goto_1

    .line 460
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSetUiccTransaction:[Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;->resetToDefault()V

    .line 462
    aget v6, v4, v11

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/SubscriptionController;->getSubState(I)I

    move-result v5

    .line 463
    .local v5, "subStatus":I
    if-eq v1, v5, :cond_4

    .line 464
    aget v6, v4, v11

    invoke-virtual {v3, v6, v1}, Lcom/android/internal/telephony/SubscriptionController;->setSubState(II)I

    .line 467
    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionController;->OEMnotifySubscriptionInfoChanged()V

    .line 470
    :cond_4
    invoke-direct {p0, v2, v1, v11}, Lcom/android/internal/telephony/SubscriptionHelper;->broadcastSetUiccResult(III)V

    .line 472
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    aput v1, v6, v2

    .line 474
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionHelper;->isAllSubsAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 475
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received all subs, now update user preferred subs, slotid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " newSubState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sTriggerDds = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/internal/telephony/SubscriptionHelper;->sTriggerDds:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 477
    sget-boolean v6, Lcom/android/internal/telephony/SubscriptionHelper;->sTriggerDds:Z

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/SubscriptionController;->updateUserPrefs(Z)V

    .line 478
    sput-boolean v11, Lcom/android/internal/telephony/SubscriptionHelper;->sTriggerDds:Z

    goto/16 :goto_1
.end method

.method private processSimRefresh(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 483
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 484
    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 485
    .local v0, "index":Ljava/lang/Integer;
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0    # "index":Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 486
    .restart local v0    # "index":Ljava/lang/Integer;
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .line 487
    .local v1, "state":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Received SIM refresh, reset sub state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " old sub state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " refreshResult = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionHelper;->logi(Ljava/lang/String;)V

    .line 490
    iget v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 492
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    aput v4, v2, v3

    .line 497
    .end local v0    # "index":Ljava/lang/Integer;
    .end local v1    # "state":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    const-string v2, "processSimRefresh received without input"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionHelper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateNwModesInSubIdTable(Z)V
    .locals 9
    .param p1, "override"    # Z

    .prologue
    const/4 v8, 0x0

    .line 202
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    .line 203
    .local v4, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v6, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    if-ge v0, v6, :cond_2

    .line 204
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v5

    .line 205
    .local v5, "subIdList":[I
    if-eqz v5, :cond_1

    aget v6, v5, v8

    if-lez v6, :cond_1

    .line 208
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "preferred_network_mode"

    invoke-static {v6, v7, v0}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 215
    .local v1, "nwModeInDb":I
    :goto_1
    aget v6, v5, v8

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/SubscriptionController;->getNwMode(I)I

    move-result v2

    .line 216
    .local v2, "nwModeinSubIdTable":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateNwModesInSubIdTable: nwModeinSubIdTable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", nwModeInDb: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 221
    if-nez p1, :cond_0

    const/4 v6, -0x1

    if-ne v2, v6, :cond_1

    .line 222
    :cond_0
    aget v6, v5, v8

    invoke-virtual {v4, v6, v1}, Lcom/android/internal/telephony/SubscriptionController;->setNwMode(II)V

    .line 203
    .end local v1    # "nwModeInDb":I
    .end local v2    # "nwModeinSubIdTable":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :catch_0
    move-exception v3

    .line 211
    .local v3, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Settings Exception Reading Value At Index["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Settings.Global.PREFERRED_NETWORK_MODE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionHelper;->loge(Ljava/lang/String;)V

    .line 213
    sget v1, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    .restart local v1    # "nwModeInDb":I
    goto :goto_1

    .line 226
    .end local v1    # "nwModeInDb":I
    .end local v3    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    .end local v5    # "subIdList":[I
    :cond_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 230
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 248
    :goto_0
    return-void

    .line 232
    :pswitch_0
    const-string v0, "EVENT_SET_UICC_SUBSCRIPTION_DONE"

    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 233
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionHelper;->processSetUiccSubscriptionDone(Landroid/os/Message;)V

    goto :goto_0

    .line 236
    :pswitch_1
    const-string v0, "EVENT_REFRESH"

    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 237
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionHelper;->processSimRefresh(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 240
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionHelper;->handleSetPrefNwModeDone(Landroid/os/Message;)V

    goto :goto_0

    .line 243
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionHelper;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isApmSIMNotPwdn()Z
    .locals 1

    .prologue
    .line 529
    sget-boolean v0, Lcom/android/internal/telephony/SubscriptionHelper;->sApmSIMNotPwdn:Z

    return v0
.end method

.method public isRadioAvailable(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public isRadioOn(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    return v0
.end method

.method public needSubActivationAfterRefresh(I)Z
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v0, 0x1

    .line 294
    sget v1, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    if-le v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    aget v1, v1, p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public proceedToHandleIccEvent(I)Z
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 533
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 538
    .local v0, "apmState":I
    sget-boolean v3, Lcom/android/internal/telephony/SubscriptionHelper;->sApmSIMNotPwdn:Z

    if-nez v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionHelper;->isRadioOn(I)Z

    move-result v3

    if-eqz v3, :cond_0

    if-ne v0, v2, :cond_1

    .line 539
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " proceedToHandleIccEvent, radio off/unavailable, slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionHelper;->logi(Ljava/lang/String;)V

    .line 540
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    aput v5, v3, p1

    .line 544
    :cond_1
    if-ne v0, v2, :cond_2

    sget-boolean v3, Lcom/android/internal/telephony/SubscriptionHelper;->sApmSIMNotPwdn:Z

    if-nez v3, :cond_2

    .line 545
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " proceedToHandleIccEvent, sApmSIMNotPwdn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/telephony/SubscriptionHelper;->sApmSIMNotPwdn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 556
    :goto_0
    return v1

    .line 551
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionHelper;->isRadioAvailable(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " proceedToHandleIccEvent, radio not available, slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionHelper;->logi(Ljava/lang/String;)V

    .line 553
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    aput v5, v2, p1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 556
    goto :goto_0
.end method

.method public setUiccSubscription(II)V
    .locals 11
    .param p1, "slotId"    # I
    .param p2, "subStatus"    # I

    .prologue
    const/4 v10, 0x1

    .line 399
    const/4 v8, 0x0

    .local v8, "set3GPPDone":Z
    const/4 v7, 0x0

    .line 400
    .local v7, "set3GPP2Done":Z
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v9

    .line 401
    .local v9, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-nez v9, :cond_1

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUiccSubscription: slotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " card info not available"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 429
    :cond_0
    return-void

    .line 407
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 408
    invoke-virtual {v9, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v6

    .line 409
    .local v6, "appType":I
    if-nez v8, :cond_5

    const/4 v0, 0x2

    if-eq v6, v0, :cond_2

    if-ne v6, v10, :cond_5

    .line 411
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSetUiccTransaction:[Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;->incrementReqCount()V

    .line 412
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v10, p1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 415
    .local v5, "msgSetUiccSubDone":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    move v1, p1

    move v3, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(IIIILandroid/os/Message;)V

    .line 416
    const/4 v8, 0x1

    .line 427
    .end local v5    # "msgSetUiccSubDone":Landroid/os/Message;
    :cond_3
    :goto_1
    if-eqz v8, :cond_4

    if-nez v7, :cond_0

    .line 407
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 417
    :cond_5
    if-nez v7, :cond_3

    const/4 v0, 0x4

    if-eq v6, v0, :cond_6

    const/4 v0, 0x3

    if-ne v6, v0, :cond_3

    .line 419
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSetUiccTransaction:[Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;->incrementReqCount()V

    .line 420
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v10, p1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 423
    .restart local v5    # "msgSetUiccSubDone":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    move v1, p1

    move v3, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(IIIILandroid/os/Message;)V

    .line 424
    const/4 v7, 0x1

    goto :goto_1
.end method

.method public updateNwMode()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x0

    .line 340
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v5

    .line 341
    .local v5, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    sget v9, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    new-array v3, v9, [I

    .line 342
    .local v3, "prefNwModeInDB":[I
    sget v9, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    new-array v2, v9, [I

    .line 343
    .local v2, "nwModeinSubIdTable":[I
    const/4 v8, 0x0

    .line 345
    .local v8, "updateRequired":Z
    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionHelper;->updateNwModesInSubIdTable(Z)V

    .line 350
    invoke-static {}, Lcom/android/internal/telephony/OemUtils;->isOemDataCardSelectionEnable()Z

    move-result v9

    if-nez v9, :cond_6

    .line 351
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/internal/telephony/SubscriptionHelper;->mNwModeUpdated:Z

    .line 353
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v9, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    if-ge v0, v9, :cond_0

    .line 354
    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v7

    .line 356
    .local v7, "subIdList":[I
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "preferred_network_mode"

    invoke-static {v9, v10, v0}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    aput v9, v3, v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_1
    if-eqz v7, :cond_3

    aget v9, v7, v11

    if-lez v9, :cond_3

    .line 364
    aget v6, v7, v11

    .line 365
    .local v6, "subId":I
    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 366
    aput v12, v2, v0

    .line 370
    :goto_2
    aget v9, v2, v0

    if-ne v9, v12, :cond_2

    .line 371
    const/4 v8, 0x0

    .line 380
    .end local v6    # "subId":I
    .end local v7    # "subIdList":[I
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateNwMode: updateRequired in Modem: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 382
    if-eqz v8, :cond_5

    .line 383
    const/4 v0, 0x0

    :goto_3
    sget v9, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    if-ge v0, v9, :cond_4

    .line 384
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Updating Value in DB for slot["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v2, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 385
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "preferred_network_mode"

    aget v11, v2, v0

    invoke-static {v9, v10, v0, v11}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 358
    .restart local v7    # "subIdList":[I
    :catch_0
    move-exception v4

    .line 359
    .local v4, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v9, "updateNwMode: Could not find PREFERRED_NETWORK_MODE!!!"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionHelper;->loge(Ljava/lang/String;)V

    .line 360
    sget v9, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    aput v9, v3, v0

    goto :goto_1

    .line 368
    .end local v4    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v6    # "subId":I
    :cond_1
    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/SubscriptionController;->getNwMode(I)I

    move-result v9

    aput v9, v2, v0

    goto :goto_2

    .line 374
    :cond_2
    aget v9, v2, v0

    aget v10, v3, v0

    if-eq v9, v10, :cond_3

    aget v9, v2, v0

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionHelper;->isNwModeValid(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 376
    const/4 v8, 0x1

    .line 353
    .end local v6    # "subId":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 389
    .end local v7    # "subIdList":[I
    :cond_4
    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/SubscriptionHelper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 390
    .local v1, "msg":Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->getInstance()Lcom/android/internal/telephony/ModemBindingPolicyHandler;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->updatePrefNwTypeIfRequired(Landroid/os/Message;)V

    .line 396
    .end local v0    # "i":I
    .end local v1    # "msg":Landroid/os/Message;
    :cond_5
    :goto_4
    return-void

    .line 394
    :cond_6
    const-string v9, "oemDCS enable, ignore update nw mode."

    invoke-static {v9}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public updateSubActivation([IZ)V
    .locals 9
    .param p1, "simStatus"    # [I
    .param p2, "isStackReadyEvent"    # Z

    .prologue
    const/4 v8, 0x0

    .line 298
    const-string v6, "persist.radio.primarycard"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 300
    .local v0, "isPrimarySubFeatureEnable":Z
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    .line 301
    .local v3, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    const/4 v1, 0x0

    .line 306
    .local v1, "setUiccSent":Z
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/OemUtils;->isOemDataCardSelectionEnable()Z

    move-result v6

    if-nez v6, :cond_0

    .line 308
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/internal/telephony/SubscriptionHelper;->sTriggerDds:Z

    .line 311
    :cond_0
    const/4 v2, 0x0

    .local v2, "slotId":I
    :goto_0
    sget v6, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    if-ge v2, v6, :cond_4

    .line 312
    aget v6, p1, v2

    const/16 v7, -0x63

    if-ne v6, v7, :cond_2

    .line 313
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    aget v7, p1, v2

    aput v7, v6, v2

    .line 314
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Sim not inserted in slot ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] simStatus= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, p1, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 311
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 317
    :cond_2
    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v4

    .line 318
    .local v4, "subId":[I
    aget v6, v4, v8

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/SubscriptionController;->getSubState(I)I

    move-result v5

    .line 320
    .local v5, "subState":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setUicc for ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "subId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v4, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " prev subState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    aget v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " stackReady "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 323
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    aget v6, v6, v2

    if-ne v6, v5, :cond_3

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionHelper;->isCardDetectStatus(I)Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz p2, :cond_1

    .line 326
    :cond_3
    invoke-virtual {p0, v2, v5}, Lcom/android/internal/telephony/SubscriptionHelper;->setUiccSubscription(II)V

    .line 327
    const/4 v1, 0x1

    goto :goto_1

    .line 332
    .end local v4    # "subId":[I
    .end local v5    # "subState":I
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionHelper;->isAllSubsAvailable()Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v1, :cond_5

    .line 333
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received all sim info, update user pref subs, triggerDds= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/internal/telephony/SubscriptionHelper;->sTriggerDds:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 334
    sget-boolean v6, Lcom/android/internal/telephony/SubscriptionHelper;->sTriggerDds:Z

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/SubscriptionController;->updateUserPrefs(Z)V

    .line 335
    sput-boolean v8, Lcom/android/internal/telephony/SubscriptionHelper;->sTriggerDds:Z

    .line 337
    :cond_5
    return-void
.end method
