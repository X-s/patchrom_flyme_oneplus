.class public Lcn/oneplus/telephony/OemDataCardSelectionController;
.super Landroid/os/Handler;
.source "OemDataCardSelectionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;,
        Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;,
        Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;,
        Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DEFAULT_VOICE_SLOT_ID:I = 0x0

.field private static final MAX_CHECK_STATE_RETRY:I = 0x1

.field private static final MSG_ALL_CARDS_AVAILABLE:I = 0x1

.field private static final MSG_CHECK_CARD_STATUS_STABLE:I = 0x5

.field private static final MSG_CHECK_CARD_STATUS_STABLE_ABSENT:I = 0x6

.field private static final MSG_CONFIG_LTE_DONE:I = 0x2

.field private static final MSG_HANDLE_ICC_LOADED:I = 0x4

.field private static final MSG_MODEM_STACK_READY:I = 0x3

.field private static final OEM_CARD_STABLE_DURATION:I = 0x7d0

.field public static final OEM_DEFAULT_DATA_SLOT_ID:I = 0x0

.field static final PHONE_COUNT:I

.field static final TAG:Ljava/lang/String; = "OemDataCardSelectionController"

.field private static instance:Lcn/oneplus/telephony/OemDataCardSelectionController;


# instance fields
.field private mCardState:[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

.field private final mContext:Landroid/content/Context;

.field private mDefault_Data_Iccid:Ljava/lang/String;

.field private mDefault_Data_Slot:I

.field private mIccLoaded:[Z

.field private mInConfigLte:Z

.field mModemStackController:Lcom/android/internal/telephony/ModemStackController;

.field private mNeedHandleIccLoadedEvent:[Z

.field private mNeedHandleModemReadyEvent:Z

.field private mNeedHandleModemReadyEventdds:Z

.field private mPerferredNwmode:I

.field mPhones:[Lcom/android/internal/telephony/Phone;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSubInfoListProcessing:[Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;

.field private mWaitforStackReadyAfterMbnActivation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcn/oneplus/telephony/OemDataCardSelectionController;->PHONE_COUNT:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 160
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 74
    iput-boolean v4, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mInConfigLte:Z

    .line 75
    iput-boolean v4, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mWaitforStackReadyAfterMbnActivation:Z

    .line 79
    iput-boolean v4, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mNeedHandleModemReadyEvent:Z

    .line 80
    iput-boolean v4, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mNeedHandleModemReadyEventdds:Z

    .line 253
    new-instance v2, Lcn/oneplus/telephony/OemDataCardSelectionController$1;

    invoke-direct {v2, p0}, Lcn/oneplus/telephony/OemDataCardSelectionController$1;-><init>(Lcn/oneplus/telephony/OemDataCardSelectionController;)V

    iput-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 161
    iput-object p1, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mContext:Landroid/content/Context;

    .line 162
    sget v2, Lcn/oneplus/telephony/OemDataCardSelectionController;->PHONE_COUNT:I

    new-array v2, v2, [Lcom/android/internal/telephony/PhoneProxy;

    iput-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 163
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 165
    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->getInstance()Lcom/android/internal/telephony/ModemStackController;

    move-result-object v2

    iput-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    .line 167
    sget v2, Lcn/oneplus/telephony/OemDataCardSelectionController;->PHONE_COUNT:I

    new-array v2, v2, [Z

    iput-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mIccLoaded:[Z

    .line 168
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcn/oneplus/telephony/OemDataCardSelectionController;->PHONE_COUNT:I

    if-ge v0, v2, :cond_0

    .line 169
    iget-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mIccLoaded:[Z

    aput-boolean v4, v2, v0

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_0
    sget v2, Lcn/oneplus/telephony/OemDataCardSelectionController;->PHONE_COUNT:I

    new-array v2, v2, [Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    iput-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mCardState:[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    .line 173
    const/4 v0, 0x0

    :goto_1
    sget v2, Lcn/oneplus/telephony/OemDataCardSelectionController;->PHONE_COUNT:I

    if-ge v0, v2, :cond_1

    .line 174
    iget-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mCardState:[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    sget-object v3, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_NOTREADY:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    aput-object v3, v2, v0

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 177
    :cond_1
    sget v2, Lcn/oneplus/telephony/OemDataCardSelectionController;->PHONE_COUNT:I

    new-array v2, v2, [Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;

    iput-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mSubInfoListProcessing:[Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;

    .line 178
    const/4 v0, 0x0

    :goto_2
    sget v2, Lcn/oneplus/telephony/OemDataCardSelectionController;->PHONE_COUNT:I

    if-ge v0, v2, :cond_2

    .line 179
    iget-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mSubInfoListProcessing:[Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;

    new-instance v3, Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;

    invoke-direct {v3, p0}, Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;-><init>(Lcn/oneplus/telephony/OemDataCardSelectionController;)V

    aput-object v3, v2, v0

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 182
    :cond_2
    sget v2, Lcn/oneplus/telephony/OemDataCardSelectionController;->PHONE_COUNT:I

    new-array v2, v2, [Z

    iput-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mNeedHandleIccLoadedEvent:[Z

    .line 183
    const/4 v0, 0x0

    :goto_3
    sget v2, Lcn/oneplus/telephony/OemDataCardSelectionController;->PHONE_COUNT:I

    if-ge v0, v2, :cond_3

    .line 184
    iget-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mNeedHandleIccLoadedEvent:[Z

    aput-boolean v4, v2, v0

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 187
    :cond_3
    iget-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    if-eqz v2, :cond_4

    .line 188
    iget-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/ModemStackController;->registerForStackReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 191
    :cond_4
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 192
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 194
    return-void
.end method

.method static synthetic access$000(Lcn/oneplus/telephony/OemDataCardSelectionController;)[Z
    .locals 1
    .param p0, "x0"    # Lcn/oneplus/telephony/OemDataCardSelectionController;

    .prologue
    .line 51
    iget-object v0, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mIccLoaded:[Z

    return-object v0
.end method

.method static synthetic access$100(Lcn/oneplus/telephony/OemDataCardSelectionController;)[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;
    .locals 1
    .param p0, "x0"    # Lcn/oneplus/telephony/OemDataCardSelectionController;

    .prologue
    .line 51
    iget-object v0, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mCardState:[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    return-object v0
.end method

.method static synthetic access$200(Lcn/oneplus/telephony/OemDataCardSelectionController;I)Z
    .locals 1
    .param p0, "x0"    # Lcn/oneplus/telephony/OemDataCardSelectionController;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcn/oneplus/telephony/OemDataCardSelectionController;->getHandleIccLoaded(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcn/oneplus/telephony/OemDataCardSelectionController;I)V
    .locals 0
    .param p0, "x0"    # Lcn/oneplus/telephony/OemDataCardSelectionController;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcn/oneplus/telephony/OemDataCardSelectionController;->clearHandleIccLoaded(I)V

    return-void
.end method

.method static synthetic access$400(Lcn/oneplus/telephony/OemDataCardSelectionController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/oneplus/telephony/OemDataCardSelectionController;

    .prologue
    .line 51
    invoke-direct {p0}, Lcn/oneplus/telephony/OemDataCardSelectionController;->all_cards_state_known()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcn/oneplus/telephony/OemDataCardSelectionController;)I
    .locals 1
    .param p0, "x0"    # Lcn/oneplus/telephony/OemDataCardSelectionController;

    .prologue
    .line 51
    invoke-direct {p0}, Lcn/oneplus/telephony/OemDataCardSelectionController;->copy_card_state()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcn/oneplus/telephony/OemDataCardSelectionController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/oneplus/telephony/OemDataCardSelectionController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcn/oneplus/telephony/OemDataCardSelectionController;)[Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;
    .locals 1
    .param p0, "x0"    # Lcn/oneplus/telephony/OemDataCardSelectionController;

    .prologue
    .line 51
    iget-object v0, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mSubInfoListProcessing:[Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;

    return-object v0
.end method

.method private all_cards_state_absent()Z
    .locals 4

    .prologue
    .line 379
    const/4 v0, 0x1

    .line 381
    .local v0, "all_absent":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lcn/oneplus/telephony/OemDataCardSelectionController;->PHONE_COUNT:I

    if-ge v1, v2, :cond_0

    .line 382
    sget-object v2, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_ABSENT:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    iget-object v3, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mCardState:[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    aget-object v3, v3, v1

    if-eq v2, v3, :cond_1

    .line 383
    const/4 v0, 0x0

    .line 387
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "all_absent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    .line 388
    return v0

    .line 381
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private all_cards_state_known()Z
    .locals 5

    .prologue
    .line 338
    const/4 v0, 0x1

    .line 339
    .local v0, "all_known":Z
    const/4 v1, 0x0

    .line 342
    .local v1, "card_not_handled":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget v3, Lcn/oneplus/telephony/OemDataCardSelectionController;->PHONE_COUNT:I

    if-ge v2, v3, :cond_4

    .line 343
    sget-object v3, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_UNKNOWN:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    iget-object v4, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mCardState:[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    aget-object v4, v4, v2

    if-eq v3, v4, :cond_0

    sget-object v3, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_READY:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    iget-object v4, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mCardState:[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    aget-object v4, v4, v2

    if-eq v3, v4, :cond_0

    sget-object v3, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_LOCKED:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    iget-object v4, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mCardState:[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    aget-object v4, v4, v2

    if-ne v3, v4, :cond_1

    .line 346
    :cond_0
    const/4 v0, 0x0

    .line 350
    :cond_1
    sget-object v3, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_ABSENT:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    iget-object v4, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mCardState:[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    aget-object v4, v4, v2

    if-ne v3, v4, :cond_3

    .line 351
    add-int/lit8 v1, v1, 0x1

    .line 342
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 352
    :cond_3
    sget-object v3, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_NOTREADY:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    iget-object v4, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mCardState:[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    aget-object v4, v4, v2

    if-ne v3, v4, :cond_2

    .line 353
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 356
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "all_known="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", card_not_handled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    .line 357
    if-eqz v0, :cond_5

    sget v3, Lcn/oneplus/telephony/OemDataCardSelectionController;->PHONE_COUNT:I

    if-eq v1, v3, :cond_5

    .line 358
    const/4 v3, 0x1

    .line 361
    :goto_2
    return v3

    :cond_5
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private all_cards_state_loaded()Z
    .locals 4

    .prologue
    .line 366
    const/4 v0, 0x1

    .line 368
    .local v0, "all_loaded":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lcn/oneplus/telephony/OemDataCardSelectionController;->PHONE_COUNT:I

    if-ge v1, v2, :cond_0

    .line 369
    sget-object v2, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_LOADED:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    iget-object v3, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mCardState:[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    aget-object v3, v3, v1

    if-eq v2, v3, :cond_1

    .line 370
    const/4 v0, 0x0

    .line 374
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "all_loaded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    .line 375
    return v0

    .line 368
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private clearHandleIccLoaded(I)V
    .locals 2
    .param p1, "slot"    # I

    .prologue
    .line 322
    iget-object v0, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mNeedHandleIccLoadedEvent:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 323
    return-void
.end method

.method private copy_card_state()I
    .locals 4

    .prologue
    .line 330
    const/4 v1, 0x0

    .line 331
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcn/oneplus/telephony/OemDataCardSelectionController;->PHONE_COUNT:I

    if-ge v0, v2, :cond_0

    .line 332
    iget-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mCardState:[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->ordinal()I

    move-result v2

    mul-int/lit8 v3, v1, 0xa

    add-int v1, v2, v3

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    :cond_0
    return v1
.end method

.method private getHandleIccLoaded(I)Z
    .locals 1
    .param p1, "slot"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mNeedHandleIccLoadedEvent:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public static getInstance()Lcn/oneplus/telephony/OemDataCardSelectionController;
    .locals 3

    .prologue
    .line 703
    const-class v1, Lcn/oneplus/telephony/OemDataCardSelectionController;

    monitor-enter v1

    .line 704
    :try_start_0
    sget-object v0, Lcn/oneplus/telephony/OemDataCardSelectionController;->instance:Lcn/oneplus/telephony/OemDataCardSelectionController;

    if-nez v0, :cond_0

    .line 705
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "OemDataCardSelectionController was not initialize!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 708
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 707
    :cond_0
    :try_start_1
    sget-object v0, Lcn/oneplus/telephony/OemDataCardSelectionController;->instance:Lcn/oneplus/telephony/OemDataCardSelectionController;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method private getPreferredNetworkFromDb(I)I
    .locals 3
    .param p1, "sub"    # I

    .prologue
    .line 772
    const/4 v0, -0x1

    .line 774
    .local v0, "nwMode":I
    :try_start_0
    iget-object v1, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, p1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 778
    :goto_0
    return v0

    .line 776
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 694
    const-class v1, Lcn/oneplus/telephony/OemDataCardSelectionController;

    monitor-enter v1

    .line 695
    :try_start_0
    sget-object v0, Lcn/oneplus/telephony/OemDataCardSelectionController;->instance:Lcn/oneplus/telephony/OemDataCardSelectionController;

    if-nez v0, :cond_0

    .line 696
    new-instance v0, Lcn/oneplus/telephony/OemDataCardSelectionController;

    invoke-direct {v0, p0}, Lcn/oneplus/telephony/OemDataCardSelectionController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/oneplus/telephony/OemDataCardSelectionController;->instance:Lcn/oneplus/telephony/OemDataCardSelectionController;

    .line 697
    sget-object v0, Lcn/oneplus/telephony/OemDataCardSelectionController;->instance:Lcn/oneplus/telephony/OemDataCardSelectionController;

    invoke-static {v0}, Lcom/android/internal/telephony/OemUtils;->setoemDCSinstance(Ljava/lang/Object;)V

    .line 699
    :cond_0
    monitor-exit v1

    .line 700
    return-void

    .line 699
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 203
    const-string v0, "OemDataCardSelectionController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 208
    const-string v0, "OemDataCardSelectionController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void
.end method

.method private setDefaultVoiceSub()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 430
    const/4 v4, 0x0

    .line 431
    .local v4, "mActCount":I
    const/4 v0, 0x0

    .line 432
    .local v0, "activesub":Landroid/telephony/SubscriptionInfo;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v6

    .line 433
    .local v6, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v6, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 437
    .local v5, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getStatus()I

    move-result v7

    if-ne v7, v8, :cond_2

    .line 438
    move-object v0, v5

    .line 439
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 442
    .end local v5    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_3
    if-eqz v4, :cond_0

    .line 446
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/SubscriptionController;->fetchOEMDefaultVoiceCardIccid()Ljava/lang/String;

    move-result-object v3

    .line 447
    .local v3, "iccid":Ljava/lang/String;
    const/4 v1, 0x0

    .line 448
    .local v1, "destsub":Landroid/telephony/SubscriptionInfo;
    if-ne v4, v8, :cond_5

    .line 449
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDefaultVoiceSub: one active sub "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " make it default voice sub."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    .line 450
    move-object v1, v0

    .line 465
    :cond_4
    :goto_2
    if-eqz v1, :cond_0

    .line 466
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDefaultVoiceSub: set default voice to slot"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", subid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    .line 468
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v7

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    goto :goto_0

    .line 453
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 454
    .restart local v5    # "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v3, :cond_7

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 455
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDefaultVoiceSub: iccid match in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    .line 456
    move-object v1, v5

    .line 457
    goto :goto_2

    .line 459
    :cond_7
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v7

    if-nez v7, :cond_6

    .line 460
    move-object v1, v5

    goto :goto_3
.end method

.method private setHandleIccLoaded(I)V
    .locals 2
    .param p1, "slot"    # I

    .prologue
    .line 318
    iget-object v0, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mNeedHandleIccLoadedEvent:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 319
    return-void
.end method

.method private setLastDataSub()V
    .locals 14

    .prologue
    .line 474
    const/4 v5, 0x0

    .line 475
    .local v5, "mActCount":I
    const/4 v0, 0x0

    .line 477
    .local v0, "activesub":Landroid/telephony/SubscriptionInfo;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v11

    .line 478
    .local v11, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v11, :cond_0

    .line 479
    const-string v12, "no active sub now."

    invoke-direct {p0, v12}, Lcn/oneplus/telephony/OemDataCardSelectionController;->loge(Ljava/lang/String;)V

    .line 605
    :goto_0
    return-void

    .line 483
    :cond_0
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/SubscriptionInfo;

    .line 484
    .local v10, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->getStatus()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    .line 486
    move-object v0, v10

    .line 487
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 490
    .end local v10    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_2
    if-nez v5, :cond_3

    .line 491
    const-string v12, "not any active subinfo."

    invoke-direct {p0, v12}, Lcn/oneplus/telephony/OemDataCardSelectionController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 495
    :cond_3
    const/4 v7, 0x0

    .line 496
    .local v7, "need_update":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    sget v12, Lcn/oneplus/telephony/OemDataCardSelectionController;->PHONE_COUNT:I

    if-ge v1, v12, :cond_6

    .line 497
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v10

    .line 498
    .restart local v10    # "subInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v10, :cond_5

    .line 500
    iget-object v12, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mSubInfoListProcessing:[Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;

    aget-object v12, v12, v1

    invoke-virtual {v12}, Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;->is_absent_sub()Z

    move-result v12

    if-nez v12, :cond_4

    .line 501
    const/4 v7, 0x1

    .line 502
    iget-object v12, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mSubInfoListProcessing:[Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;

    aget-object v12, v12, v1

    invoke-virtual {v12}, Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;->clear()V

    .line 496
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 506
    :cond_5
    iget-object v12, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mSubInfoListProcessing:[Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;

    aget-object v12, v12, v1

    invoke-virtual {v12, v10}, Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;->compare(Landroid/telephony/SubscriptionInfo;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 507
    const/4 v7, 0x1

    .line 508
    iget-object v12, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mSubInfoListProcessing:[Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;

    aget-object v12, v12, v1

    invoke-virtual {v12, v10}, Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;->cp(Landroid/telephony/SubscriptionInfo;)V

    goto :goto_3

    .line 513
    .end local v10    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_6
    if-nez v7, :cond_7

    .line 514
    const-string v12, "all sub infos are the same, no process."

    invoke-direct {p0, v12}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 518
    :cond_7
    iget-object v12, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v12}, Lcom/android/internal/telephony/ModemStackController;->isStackReady()Z

    move-result v12

    if-nez v12, :cond_8

    .line 519
    const-string v12, "modem stack is not ready, do not set primary sub."

    invoke-direct {p0, v12}, Lcn/oneplus/telephony/OemDataCardSelectionController;->loge(Ljava/lang/String;)V

    .line 520
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mNeedHandleModemReadyEvent:Z

    goto :goto_0

    .line 524
    :cond_8
    iget-boolean v12, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mInConfigLte:Z

    if-eqz v12, :cond_9

    .line 525
    const-string v12, "In configuring LTE now."

    invoke-direct {p0, v12}, Lcn/oneplus/telephony/OemDataCardSelectionController;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 534
    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/SubscriptionController;->fetchOEMDefaultDataCardIccid()Ljava/lang/String;

    move-result-object v3

    .line 535
    .local v3, "last_data_card_iccid":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/SubscriptionController;->fetchOEMDefaultDataCardSlot()I

    move-result v4

    .line 536
    .local v4, "last_data_slot":I
    const/4 v6, -0x1

    .line 537
    .local v6, "multi_mode_slot":I
    packed-switch v5, :pswitch_data_0

    .line 565
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Fatal, can\'t arrive here. active sub count:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcn/oneplus/telephony/OemDataCardSelectionController;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 539
    :pswitch_0
    if-eqz v3, :cond_a

    .line 541
    const/4 v1, 0x0

    :goto_4
    sget v12, Lcn/oneplus/telephony/OemDataCardSelectionController;->PHONE_COUNT:I

    if-ge v1, v12, :cond_a

    .line 542
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v10

    .line 543
    .restart local v10    # "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v10, :cond_e

    .line 544
    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 545
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "match iccid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " in slot"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    .line 546
    move v6, v1

    .line 554
    .end local v10    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_a
    const/4 v12, -0x1

    if-ne v12, v6, :cond_c

    .line 555
    const/4 v12, -0x1

    if-ne v12, v4, :cond_b

    .line 556
    const/4 v4, 0x0

    .line 558
    :cond_b
    move v6, v4

    .line 570
    :cond_c
    :goto_5
    invoke-virtual {p0}, Lcn/oneplus/telephony/OemDataCardSelectionController;->getPrimarySlot()I

    move-result v8

    .line 571
    .local v8, "primarySlot":I
    iput v6, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mDefault_Data_Slot:I

    .line 572
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v12

    iget v13, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mDefault_Data_Slot:I

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mDefault_Data_Iccid:Ljava/lang/String;

    .line 576
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "multi_mode_slot="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", primarySlot="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", default data iccid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mDefault_Data_Iccid:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    .line 580
    const/4 v9, 0x0

    .line 581
    .local v9, "ret":Z
    sget-boolean v12, Lcom/android/internal/telephony/OemUtils;->Disable_Crossbinding_oemDCS:Z

    if-eqz v12, :cond_d

    .line 582
    invoke-static {}, Lcn/oneplus/telephony/OemTelephonyServiceManager;->getInstance()Lcn/oneplus/telephony/OemTelephonyServiceManager;

    move-result-object v12

    iget-object v13, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mDefault_Data_Iccid:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcn/oneplus/telephony/OemTelephonyServiceManager;->activeQueriedMbnIfNeeded(Ljava/lang/String;)Z

    move-result v9

    .line 583
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "activeQueriedMbnIfNeeded return "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    .line 589
    :cond_d
    if-nez v9, :cond_f

    .line 590
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mInConfigLte:Z

    .line 591
    const/4 v12, 0x2

    invoke-virtual {p0, v12}, Lcn/oneplus/telephony/OemDataCardSelectionController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {p0, v6, v12}, Lcn/oneplus/telephony/OemDataCardSelectionController;->setPreferredNetwork(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 541
    .end local v8    # "primarySlot":I
    .end local v9    # "ret":Z
    .restart local v10    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    .line 562
    .end local v10    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :pswitch_1
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    .line 563
    goto :goto_5

    .line 595
    .restart local v8    # "primarySlot":I
    .restart local v9    # "ret":Z
    :cond_f
    const-string v12, "wait new mbn ready!"

    invoke-direct {p0, v12}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    .line 596
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mWaitforStackReadyAfterMbnActivation:Z

    .line 599
    invoke-direct {p0}, Lcn/oneplus/telephony/OemDataCardSelectionController;->syncPerferredNwmodefromDB()V

    goto/16 :goto_0

    .line 537
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private syncPerferredNwmodefromDB()V
    .locals 1

    .prologue
    .line 750
    invoke-virtual {p0}, Lcn/oneplus/telephony/OemDataCardSelectionController;->getMultiMode()I

    move-result v0

    iput v0, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mPerferredNwmode:I

    .line 751
    return-void
.end method


# virtual methods
.method public getMultiMode()I
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 731
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    sget v3, Lcn/oneplus/telephony/OemDataCardSelectionController;->PHONE_COUNT:I

    if-ge v1, v3, :cond_1

    .line 732
    invoke-direct {p0, v1}, Lcn/oneplus/telephony/OemDataCardSelectionController;->getPreferredNetworkFromDb(I)I

    move-result v0

    .line 733
    .local v0, "current":I
    if-eq v0, v2, :cond_0

    .line 737
    .end local v0    # "current":I
    :goto_1
    return v0

    .line 731
    .restart local v0    # "current":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "current":I
    :cond_1
    move v0, v2

    .line 737
    goto :goto_1
.end method

.method public getMultiMode(Z)I
    .locals 1
    .param p1, "cached"    # Z

    .prologue
    .line 741
    if-eqz p1, :cond_0

    .line 742
    iget v0, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mPerferredNwmode:I

    .line 744
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcn/oneplus/telephony/OemDataCardSelectionController;->getMultiMode()I

    move-result v0

    goto :goto_0
.end method

.method public getPrimarySlot()I
    .locals 3

    .prologue
    .line 754
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    sget v2, Lcn/oneplus/telephony/OemDataCardSelectionController;->PHONE_COUNT:I

    if-ge v1, v2, :cond_2

    .line 755
    invoke-direct {p0, v1}, Lcn/oneplus/telephony/OemDataCardSelectionController;->getPreferredNetworkFromDb(I)I

    move-result v0

    .line 756
    .local v0, "current":I
    const/16 v2, 0x14

    if-eq v0, v2, :cond_0

    const/16 v2, 0x12

    if-eq v0, v2, :cond_0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    if-nez v0, :cond_1

    .line 763
    .end local v0    # "current":I
    .end local v1    # "index":I
    :cond_0
    :goto_1
    return v1

    .line 754
    .restart local v0    # "current":I
    .restart local v1    # "index":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 763
    .end local v0    # "current":I
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 611
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 690
    :cond_0
    :goto_0
    return-void

    .line 613
    :pswitch_0
    const-string v6, "on EVENT MSG_MODEM_STACK_READY"

    invoke-direct {p0, v6}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    .line 614
    iget-boolean v6, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mNeedHandleModemReadyEventdds:Z

    if-eqz v6, :cond_1

    .line 616
    invoke-virtual {p0}, Lcn/oneplus/telephony/OemDataCardSelectionController;->onConfigLteDone()V

    .line 617
    iput-boolean v8, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mNeedHandleModemReadyEventdds:Z

    .line 620
    :cond_1
    iget-boolean v6, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mNeedHandleModemReadyEvent:Z

    if-eqz v6, :cond_2

    .line 621
    invoke-direct {p0}, Lcn/oneplus/telephony/OemDataCardSelectionController;->setLastDataSub()V

    .line 622
    iput-boolean v8, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mNeedHandleModemReadyEvent:Z

    .line 625
    :cond_2
    iget-boolean v6, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mWaitforStackReadyAfterMbnActivation:Z

    if-eqz v6, :cond_0

    sget-boolean v6, Lcom/android/internal/telephony/OemUtils;->Disable_Crossbinding_oemDCS:Z

    if-eqz v6, :cond_0

    .line 626
    iput-boolean v8, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mWaitforStackReadyAfterMbnActivation:Z

    .line 627
    iput-boolean v9, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mInConfigLte:Z

    .line 628
    iget v6, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mDefault_Data_Slot:I

    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcn/oneplus/telephony/OemDataCardSelectionController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p0, v6, v7, v9}, Lcn/oneplus/telephony/OemDataCardSelectionController;->setPreferredNetwork(ILandroid/os/Message;Z)V

    goto :goto_0

    .line 632
    :pswitch_1
    const-string v6, "on EVENT MSG_ALL_CARDS_AVAILABLE"

    invoke-direct {p0, v6}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    .line 633
    invoke-direct {p0}, Lcn/oneplus/telephony/OemDataCardSelectionController;->setLastDataSub()V

    goto :goto_0

    .line 636
    :pswitch_2
    const-string v6, "on EVENT MSG_CONFIG_LTE_DONE"

    invoke-direct {p0, v6}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    .line 637
    iput-boolean v8, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mInConfigLte:Z

    .line 638
    invoke-virtual {p0, p1}, Lcn/oneplus/telephony/OemDataCardSelectionController;->onConfigLteDone(Landroid/os/Message;)V

    goto :goto_0

    .line 641
    :pswitch_3
    const-string v6, "on EVENT MSG_HANDLE_ICC_LOADED"

    invoke-direct {p0, v6}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    .line 642
    invoke-virtual {p0}, Lcn/oneplus/telephony/OemDataCardSelectionController;->onIccLoadedDone()V

    goto :goto_0

    .line 645
    :pswitch_4
    const/4 v0, 0x0

    .line 646
    .local v0, "cardstate_before":Ljava/lang/Integer;
    const/4 v5, 0x0

    .line 647
    .local v5, "req":Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v6, v6, Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;

    if-eqz v6, :cond_3

    .line 648
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v5    # "req":Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;
    check-cast v5, Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;

    .line 649
    .restart local v5    # "req":Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;
    new-instance v0, Ljava/lang/Integer;

    .end local v0    # "cardstate_before":Ljava/lang/Integer;
    iget v6, v5, Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;->mCardState:I

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 655
    .restart local v0    # "cardstate_before":Ljava/lang/Integer;
    :goto_1
    invoke-direct {p0}, Lcn/oneplus/telephony/OemDataCardSelectionController;->copy_card_state()I

    move-result v1

    .line 656
    .local v1, "cardstate_now":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "on EVENT MSG_CHECK_CARD_STATUS_STABLE, card state before:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", card state now:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    .line 658
    if-eqz v0, :cond_0

    .line 659
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v1, v6, :cond_4

    .line 660
    invoke-virtual {p0, v9}, Lcn/oneplus/telephony/OemDataCardSelectionController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 652
    .end local v1    # "cardstate_now":I
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "cardstate_before":Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .restart local v0    # "cardstate_before":Ljava/lang/Integer;
    goto :goto_1

    .line 662
    .restart local v1    # "cardstate_now":I
    :cond_4
    if-eqz v5, :cond_0

    sget-object v6, Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;->SCTE_LOADED:Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;

    iget-object v7, v5, Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;->mTriggerEvent:Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;

    if-ne v6, v7, :cond_0

    iget v6, v5, Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;->mRetry:I

    if-lez v6, :cond_0

    .line 665
    new-instance v4, Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;

    invoke-direct {v4, p0, v5}, Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;-><init>(Lcn/oneplus/telephony/OemDataCardSelectionController;Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;)V

    .line 666
    .local v4, "new_req":Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;
    iget v6, v4, Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;->mRetry:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;->mRetry:I

    .line 667
    iput v1, v4, Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;->mCardState:I

    .line 668
    const/4 v6, 0x5

    invoke-virtual {p0, v6, v4}, Lcn/oneplus/telephony/OemDataCardSelectionController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 669
    .local v2, "delay_msg":Landroid/os/Message;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start retry:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    .line 670
    const-wide/16 v6, 0x7d0

    invoke-virtual {p0, v2, v6, v7}, Lcn/oneplus/telephony/OemDataCardSelectionController;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 675
    .end local v0    # "cardstate_before":Ljava/lang/Integer;
    .end local v1    # "cardstate_now":I
    .end local v2    # "delay_msg":Landroid/os/Message;
    .end local v4    # "new_req":Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;
    .end local v5    # "req":Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 677
    .restart local v0    # "cardstate_before":Ljava/lang/Integer;
    invoke-direct {p0}, Lcn/oneplus/telephony/OemDataCardSelectionController;->copy_card_state()I

    move-result v1

    .line 678
    .restart local v1    # "cardstate_now":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "on EVENT MSG_CHECK_CARD_STATUS_STABLE_ABSENT, card state before:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", card state now:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    .line 680
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v1, v6, :cond_0

    invoke-direct {p0}, Lcn/oneplus/telephony/OemDataCardSelectionController;->all_cards_state_absent()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 682
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/SubscriptionController;->getDummySubIds(I)[I

    move-result-object v3

    .line 685
    .local v3, "dummySubId":[I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v6

    aget v7, v3, v8

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/SubscriptionController;->setDataSubId(I)V

    goto/16 :goto_0

    .line 611
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onConfigLteDone()V
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/oneplus/telephony/OemDataCardSelectionController;->onConfigLteDone(Landroid/os/Message;)V

    .line 393
    return-void
.end method

.method protected onConfigLteDone(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 401
    iget v1, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mDefault_Data_Slot:I

    .line 402
    .local v1, "primarySlot":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 403
    .local v0, "currentDdsSubid":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigLteDone primary Slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", currentDdsSubid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIccLoaded["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mIccLoaded:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    .line 407
    iget-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ModemStackController;->isStackReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modem stack is not ready, do not set dds on sub"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/oneplus/telephony/OemDataCardSelectionController;->loge(Ljava/lang/String;)V

    .line 409
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mNeedHandleModemReadyEventdds:Z

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mIccLoaded:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_2

    .line 414
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 424
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    iget v3, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mDefault_Data_Slot:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->storeOEMDefaultDataCardSlot(I)V

    .line 425
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    iget-object v3, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mDefault_Data_Iccid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->storeOEMDefaultDataCardIccid(Ljava/lang/String;)V

    goto :goto_0

    .line 419
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "icc not loaded in primary Slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", wait and handle icc load event."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/oneplus/telephony/OemDataCardSelectionController;->loge(Ljava/lang/String;)V

    .line 420
    invoke-direct {p0, v1}, Lcn/oneplus/telephony/OemDataCardSelectionController;->setHandleIccLoaded(I)V

    goto :goto_1
.end method

.method protected onIccLoadedDone()V
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/oneplus/telephony/OemDataCardSelectionController;->onConfigLteDone(Landroid/os/Message;)V

    .line 397
    return-void
.end method

.method public setPreferredNetwork(ILandroid/os/Message;)V
    .locals 3
    .param p1, "slot"    # I
    .param p2, "callback"    # Landroid/os/Message;

    .prologue
    .line 713
    invoke-virtual {p0}, Lcn/oneplus/telephony/OemDataCardSelectionController;->getMultiMode()I

    move-result v0

    .line 714
    .local v0, "network":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set dds and multi mode for sub"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    .line 715
    new-instance v1, Lcom/android/internal/telephony/OemPrefNetworkRequest;

    iget-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v0, p2}, Lcom/android/internal/telephony/OemPrefNetworkRequest;-><init>(Landroid/content/Context;IILandroid/os/Message;)V

    invoke-virtual {v1}, Lcom/android/internal/telephony/OemPrefNetworkRequest;->loop()V

    .line 717
    return-void
.end method

.method public setPreferredNetwork(ILandroid/os/Message;Z)V
    .locals 3
    .param p1, "slot"    # I
    .param p2, "callback"    # Landroid/os/Message;
    .param p3, "use_cached_nw_mode"    # Z

    .prologue
    .line 720
    invoke-virtual {p0, p3}, Lcn/oneplus/telephony/OemDataCardSelectionController;->getMultiMode(Z)I

    move-result v0

    .line 721
    .local v0, "network":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set dds and multi mode for sub"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    .line 722
    new-instance v1, Lcom/android/internal/telephony/OemPrefNetworkRequest;

    iget-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v0, p2}, Lcom/android/internal/telephony/OemPrefNetworkRequest;-><init>(Landroid/content/Context;IILandroid/os/Message;)V

    invoke-virtual {v1}, Lcom/android/internal/telephony/OemPrefNetworkRequest;->loop()V

    .line 723
    return-void
.end method
