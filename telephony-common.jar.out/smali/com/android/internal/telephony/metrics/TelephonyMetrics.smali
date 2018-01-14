.class public Lcom/android/internal/telephony/metrics/TelephonyMetrics;
.super Ljava/lang/Object;
.source "TelephonyMetrics.java"


# static fields
.field private static final synthetic -com-android-internal-telephony-Call$StateSwitchesValues:[I = null

.field private static final synthetic -com-android-internal-telephony-PhoneConstants$StateSwitchesValues:[I = null

.field private static final DBG:Z = true

.field private static final MAX_COMPLETED_CALL_SESSIONS:I = 0x32

.field private static final MAX_COMPLETED_SMS_SESSIONS:I = 0x1f4

.field private static final MAX_TELEPHONY_EVENTS:I = 0x3e8

.field private static final SESSION_START_PRECISION_MINUTES:I = 0x5

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z

.field private static sInstance:Lcom/android/internal/telephony/metrics/TelephonyMetrics;


# instance fields
.field private final mCompletedCallSessions:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mCompletedSmsSessions:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/android/internal/telephony/TelephonyProto$SmsSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mInProgressCallSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/telephony/metrics/InProgressCallSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mInProgressSmsSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/telephony/metrics/InProgressSmsSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastImsCapabilities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastImsConnectionState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastServiceState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private mStartElapsedTimeMs:J

.field private mStartSystemTimeMs:J

.field private final mTelephonyEvents:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyEventsDropped:Z


# direct methods
.method private static synthetic -getcom-android-internal-telephony-Call$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->-com-android-internal-telephony-Call$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->-com-android-internal-telephony-Call$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/Call$State;->values()[Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    sput-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->-com-android-internal-telephony-Call$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1

    :catch_8
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-android-internal-telephony-PhoneConstants$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->-com-android-internal-telephony-PhoneConstants$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->-com-android-internal-telephony-PhoneConstants$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneConstants$State;->values()[Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->-com-android-internal-telephony-PhoneConstants$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const-class v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    .line 112
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    .line 115
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    .line 118
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    .line 121
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    .line 124
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    .line 130
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    .line 136
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEventsDropped:Z

    .line 148
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->reset()V

    .line 147
    return-void
.end method

.method private declared-synchronized addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    .prologue
    monitor-enter p0

    .line 761
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    .line 762
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 763
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEventsDropped:Z

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 760
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V
    .locals 3
    .param p1, "timestamp"    # J
    .param p3, "phoneId"    # I
    .param p4, "eventBuilder"    # Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    .prologue
    monitor-enter p0

    .line 614
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 615
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-eqz v0, :cond_0

    .line 616
    invoke-virtual {v0, p1, p2, p4}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 613
    return-void

    .end local v0    # "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized annotateInProgressSmsSession(JILcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    .locals 3
    .param p1, "timestamp"    # J
    .param p3, "phoneId"    # I
    .param p4, "eventBuilder"    # Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    .prologue
    monitor-enter p0

    .line 629
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    .line 630
    .local v0, "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    if-eqz v0, :cond_0

    .line 631
    invoke-virtual {v0, p1, p2, p4}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(JLcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 628
    return-void

    .end local v0    # "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized buildProto()Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;
    .locals 8

    .prologue
    monitor-enter p0

    .line 452
    :try_start_0
    new-instance v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    invoke-direct {v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;-><init>()V

    .line 454
    .local v2, "log":Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;
    iget-object v5, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    iput-object v5, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    .line 455
    iget-object v5, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    iget-object v6, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    invoke-interface {v5, v6}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 456
    iget-boolean v5, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEventsDropped:Z

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->setEventsDropped(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    .line 459
    iget-object v5, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    iput-object v5, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    .line 460
    iget-object v5, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    iget-object v6, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    invoke-interface {v5, v6}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 463
    iget-object v5, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    iput-object v5, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    .line 464
    iget-object v5, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    iget-object v6, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    invoke-interface {v5, v6}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 467
    invoke-static {}, Lcom/android/internal/telephony/RIL;->getTelephonyRILTimingHistograms()Ljava/util/List;

    move-result-object v4

    .line 468
    .local v4, "rilHistograms":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    iput-object v5, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    .line 469
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 470
    iget-object v5, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    new-instance v6, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    invoke-direct {v6}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;-><init>()V

    aput-object v6, v5, v1

    .line 471
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyHistogram;

    .line 472
    .local v3, "rilHistogram":Landroid/telephony/TelephonyHistogram;
    iget-object v5, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    aget-object v0, v5, v1

    .line 474
    .local v0, "histogramProto":Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getCategory()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->setCategory(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    .line 475
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getId()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->setId(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    .line 476
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getMinTime()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->setMinTimeMillis(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    .line 477
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getMaxTime()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->setMaxTimeMillis(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    .line 478
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getAverageTime()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->setAvgTimeMillis(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    .line 479
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getSampleCount()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->setCount(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    .line 480
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getBucketCount()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->setBucketCount(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    .line 481
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getBucketEndPoints()[I

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    .line 482
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getBucketCounters()[I

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    .line 469
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 486
    .end local v0    # "histogramProto":Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .end local v3    # "rilHistogram":Landroid/telephony/TelephonyHistogram;
    :cond_0
    new-instance v5, Lcom/android/internal/telephony/TelephonyProto$Time;

    invoke-direct {v5}, Lcom/android/internal/telephony/TelephonyProto$Time;-><init>()V

    iput-object v5, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    .line 487
    iget-object v5, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    iget-wide v6, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartSystemTimeMs:J

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/TelephonyProto$Time;->setSystemTimestampMillis(J)Lcom/android/internal/telephony/TelephonyProto$Time;

    .line 488
    iget-object v5, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    iget-wide v6, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/TelephonyProto$Time;->setElapsedTimestampMillis(J)Lcom/android/internal/telephony/TelephonyProto$Time;

    .line 490
    new-instance v5, Lcom/android/internal/telephony/TelephonyProto$Time;

    invoke-direct {v5}, Lcom/android/internal/telephony/TelephonyProto$Time;-><init>()V

    iput-object v5, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    .line 491
    iget-object v5, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/TelephonyProto$Time;->setSystemTimestampMillis(J)Lcom/android/internal/telephony/TelephonyProto$Time;

    .line 492
    iget-object v5, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/TelephonyProto$Time;->setElapsedTimestampMillis(J)Lcom/android/internal/telephony/TelephonyProto$Time;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 494
    return-object v2

    .end local v1    # "i":I
    .end local v2    # "log":Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;
    .end local v4    # "rilHistograms":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private static callSessionEventToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "event"    # I

    .prologue
    .line 229
    packed-switch p0, :pswitch_data_0

    .line 275
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 231
    :pswitch_0
    const-string/jumbo v0, "EVENT_UNKNOWN"

    return-object v0

    .line 233
    :pswitch_1
    const-string/jumbo v0, "SETTINGS_CHANGED"

    return-object v0

    .line 235
    :pswitch_2
    const-string/jumbo v0, "RIL_SERVICE_STATE_CHANGED"

    return-object v0

    .line 237
    :pswitch_3
    const-string/jumbo v0, "IMS_CONNECTION_STATE_CHANGED"

    return-object v0

    .line 239
    :pswitch_4
    const-string/jumbo v0, "IMS_CAPABILITIES_CHANGED"

    return-object v0

    .line 241
    :pswitch_5
    const-string/jumbo v0, "DATA_CALL_LIST_CHANGED"

    return-object v0

    .line 243
    :pswitch_6
    const-string/jumbo v0, "RIL_REQUEST"

    return-object v0

    .line 245
    :pswitch_7
    const-string/jumbo v0, "RIL_RESPONSE"

    return-object v0

    .line 247
    :pswitch_8
    const-string/jumbo v0, "RIL_CALL_RING"

    return-object v0

    .line 249
    :pswitch_9
    const-string/jumbo v0, "RIL_CALL_SRVCC"

    return-object v0

    .line 251
    :pswitch_a
    const-string/jumbo v0, "RIL_CALL_LIST_CHANGED"

    return-object v0

    .line 253
    :pswitch_b
    const-string/jumbo v0, "IMS_COMMAND"

    return-object v0

    .line 255
    :pswitch_c
    const-string/jumbo v0, "IMS_COMMAND_RECEIVED"

    return-object v0

    .line 257
    :pswitch_d
    const-string/jumbo v0, "IMS_COMMAND_FAILED"

    return-object v0

    .line 259
    :pswitch_e
    const-string/jumbo v0, "IMS_COMMAND_COMPLETE"

    return-object v0

    .line 261
    :pswitch_f
    const-string/jumbo v0, "IMS_CALL_RECEIVE"

    return-object v0

    .line 263
    :pswitch_10
    const-string/jumbo v0, "IMS_CALL_STATE_CHANGED"

    return-object v0

    .line 265
    :pswitch_11
    const-string/jumbo v0, "IMS_CALL_TERMINATED"

    return-object v0

    .line 267
    :pswitch_12
    const-string/jumbo v0, "IMS_CALL_HANDOVER"

    return-object v0

    .line 269
    :pswitch_13
    const-string/jumbo v0, "IMS_CALL_HANDOVER_FAILED"

    return-object v0

    .line 271
    :pswitch_14
    const-string/jumbo v0, "PHONE_STATE_CHANGED"

    return-object v0

    .line 273
    :pswitch_15
    const-string/jumbo v0, "NITZ_TIME"

    return-object v0

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method private static convertProtoToBase64String(Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;)Ljava/lang/String;
    .locals 2
    .param p0, "proto"    # Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    .prologue
    .line 402
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v0

    const/4 v1, 0x0

    .line 401
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized finishCallSession(Lcom/android/internal/telephony/metrics/InProgressCallSession;)V
    .locals 3
    .param p1, "inProgressCallSession"    # Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .prologue
    monitor-enter p0

    .line 719
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;-><init>()V

    .line 720
    .local v0, "callSession":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    iget-object v1, p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;->events:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    iput-object v1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    .line 721
    iget-object v1, p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;->events:Ljava/util/Deque;

    iget-object v2, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    invoke-interface {v1, v2}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 722
    iget v1, p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startSystemTimeMin:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->setStartTimeMinutes(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    .line 723
    iget v1, p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;->phoneId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->setPhoneId(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    .line 724
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->isEventsDropped()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->setEventsDropped(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    .line 725
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_0

    .line 726
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 728
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 729
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;->phoneId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 718
    return-void

    .end local v0    # "callSession":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized finishSmsSessionIfNeeded(Lcom/android/internal/telephony/metrics/InProgressSmsSession;)V
    .locals 3
    .param p1, "inProgressSmsSession"    # Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    .prologue
    monitor-enter p0

    .line 739
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->getNumExpectedResponses()I

    move-result v1

    if-nez v1, :cond_1

    .line 740
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$SmsSession;-><init>()V

    .line 741
    .local v0, "smsSession":Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    iget-object v1, p1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->events:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    iput-object v1, v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    .line 742
    iget-object v1, p1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->events:Ljava/util/Deque;

    iget-object v2, v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    invoke-interface {v1, v2}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 743
    iget v1, p1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->startSystemTimeMin:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->setStartTimeMinutes(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    .line 744
    iget v1, p1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->phoneId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->setPhoneId(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    .line 745
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->isEventsDropped()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->setEventsDropped(Z)Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    .line 746
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_0

    .line 747
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 749
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 750
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->phoneId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "smsSession":Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    :cond_1
    monitor-exit p0

    .line 738
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getCallId(Lcom/android/ims/internal/ImsCallSession;)I
    .locals 3
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    const/4 v2, -0x1

    .line 1316
    if-nez p1, :cond_0

    .line 1317
    return v2

    .line 1321
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/android/ims/internal/ImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1322
    :catch_0
    move-exception v0

    .line 1323
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return v2
.end method

.method public static declared-synchronized getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    .locals 2

    .prologue
    const-class v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    monitor-enter v1

    .line 157
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->sInstance:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->sInstance:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 161
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->sInstance:Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized printAllMetrics(Ljava/io/PrintWriter;)V
    .locals 17
    .param p1, "rawWriter"    # Ljava/io/PrintWriter;

    .prologue
    monitor-enter p0

    .line 315
    :try_start_0
    new-instance v9, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v12, "  "

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v12}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 317
    .local v9, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string/jumbo v12, "Telephony metrics proto:"

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 318
    const-string/jumbo v12, "------------------------------------------"

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    const-string/jumbo v12, "Telephony events:"

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 321
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "event$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    .line 322
    .local v7, "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    invoke-virtual {v7}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->hasTimestampMillis()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 323
    invoke-virtual {v7}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getTimestampMillis()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    .line 324
    const-string/jumbo v12, " ["

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v7}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->hasPhoneId()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v7}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getPhoneId()I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 326
    :cond_1
    const-string/jumbo v12, "] "

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v7}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->hasType()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 329
    const-string/jumbo v12, "T="

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v7}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getType()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_3

    .line 331
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getType()I

    move-result v13

    invoke-static {v13}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->telephonyEventToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 332
    const-string/jumbo v13, "("

    .line 331
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 332
    iget-object v13, v7, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    invoke-virtual {v13}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->getDataRat()I

    move-result v13

    .line 331
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 332
    const-string/jumbo v13, ")"

    .line 331
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 337
    :cond_2
    :goto_1
    const-string/jumbo v12, ""

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v7    # "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .end local v8    # "event$iterator":Ljava/util/Iterator;
    .end local v9    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 334
    .restart local v7    # "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .restart local v8    # "event$iterator":Ljava/util/Iterator;
    .restart local v9    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_3
    :try_start_1
    invoke-virtual {v7}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getType()I

    move-result v12

    invoke-static {v12}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->telephonyEventToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 341
    .end local v7    # "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    :cond_4
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 342
    const-string/jumbo v12, "Call sessions:"

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 345
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "callSession$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    .line 346
    .local v2, "callSession":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    invoke-virtual {v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->hasStartTimeMinutes()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 347
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Start time in minutes: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->getStartTimeMinutes()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    :cond_5
    invoke-virtual {v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->hasEventsDropped()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 350
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Events dropped: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->getEventsDropped()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    :cond_6
    const-string/jumbo v12, "Events: "

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 353
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 354
    iget-object v13, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    const/4 v12, 0x0

    array-length v14, v13

    :goto_3
    if-ge v12, v14, :cond_8

    aget-object v6, v13, v12

    .line 355
    .local v6, "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    invoke-virtual {v6}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->getDelay()I

    move-result v15

    invoke-virtual {v9, v15}, Ljava/io/PrintWriter;->print(I)V

    .line 356
    const-string/jumbo v15, " T="

    invoke-virtual {v9, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v6}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->getType()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 358
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->getType()I

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->callSessionEventToString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 359
    const-string/jumbo v16, "("

    .line 358
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 359
    iget-object v0, v6, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->getDataRat()I

    move-result v16

    .line 358
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 359
    const-string/jumbo v16, ")"

    .line 358
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 354
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 361
    :cond_7
    invoke-virtual {v6}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->getType()I

    move-result v15

    invoke-static {v15}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->callSessionEventToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 364
    .end local v6    # "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    :cond_8
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto/16 :goto_2

    .line 367
    .end local v2    # "callSession":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    :cond_9
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 368
    const-string/jumbo v12, "Sms sessions:"

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 371
    const/4 v4, 0x0

    .line 372
    .local v4, "count":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "smsSession$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    .line 373
    .local v10, "smsSession":Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    add-int/lit8 v4, v4, 0x1

    .line 374
    invoke-virtual {v10}, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->hasStartTimeMinutes()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 375
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "] Start time in minutes: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 376
    invoke-virtual {v10}, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->getStartTimeMinutes()I

    move-result v13

    .line 375
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 378
    :cond_a
    invoke-virtual {v10}, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->hasEventsDropped()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 379
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, ", events dropped: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->getEventsDropped()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 381
    :cond_b
    const-string/jumbo v12, "Events: "

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 383
    iget-object v13, v10, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    const/4 v12, 0x0

    array-length v14, v13

    :goto_6
    if-ge v12, v14, :cond_c

    aget-object v5, v13, v12

    .line 384
    .local v5, "event":Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    invoke-virtual {v5}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->getDelay()I

    move-result v15

    invoke-virtual {v9, v15}, Ljava/io/PrintWriter;->print(I)V

    .line 385
    const-string/jumbo v15, " T="

    invoke-virtual {v9, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v5}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->getType()I

    move-result v15

    invoke-static {v15}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->smsSessionEventToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 388
    .end local v5    # "event":Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    :cond_c
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto/16 :goto_5

    .line 391
    .end local v10    # "smsSession":Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    :cond_d
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 314
    return-void
.end method

.method private declared-synchronized reset()V
    .locals 8

    .prologue
    monitor-enter p0

    .line 409
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->clear()V

    .line 410
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->clear()V

    .line 411
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->clear()V

    .line 413
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEventsDropped:Z

    .line 415
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartSystemTimeMs:J

    .line 416
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    .line 420
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 421
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 423
    .local v2, "key":I
    new-instance v4, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    iget-wide v6, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    invoke-direct {v4, v6, v7, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(JI)V

    .line 424
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    .line 423
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setServiceState(Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    move-result-object v0

    .line 425
    .local v0, "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    .line 420
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 428
    .end local v0    # "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .end local v2    # "key":I
    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 429
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 431
    .restart local v2    # "key":I
    new-instance v4, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    iget-wide v6, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    invoke-direct {v4, v6, v7, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(JI)V

    .line 432
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .line 431
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    move-result-object v0

    .line 433
    .restart local v0    # "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    .line 428
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 436
    .end local v0    # "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .end local v2    # "key":I
    :cond_1
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 437
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 439
    .restart local v2    # "key":I
    new-instance v4, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    iget-wide v6, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    invoke-direct {v4, v6, v7, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(JI)V

    .line 440
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    .line 439
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    move-result-object v0

    .line 441
    .restart local v0    # "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .end local v2    # "key":I
    :cond_2
    monitor-exit p0

    .line 408
    return-void

    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method static roundSessionStart(J)I
    .locals 4
    .param p0, "timestamp"    # J

    .prologue
    .line 504
    const-wide/32 v0, 0x493e0

    div-long v0, p0, v0

    .line 505
    const-wide/16 v2, 0x5

    .line 504
    mul-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static smsSessionEventToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "event"    # I

    .prologue
    .line 285
    packed-switch p0, :pswitch_data_0

    .line 305
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 287
    :pswitch_0
    const-string/jumbo v0, "EVENT_UNKNOWN"

    return-object v0

    .line 289
    :pswitch_1
    const-string/jumbo v0, "SETTINGS_CHANGED"

    return-object v0

    .line 291
    :pswitch_2
    const-string/jumbo v0, "RIL_SERVICE_STATE_CHANGED"

    return-object v0

    .line 293
    :pswitch_3
    const-string/jumbo v0, "IMS_CONNECTION_STATE_CHANGED"

    return-object v0

    .line 295
    :pswitch_4
    const-string/jumbo v0, "IMS_CAPABILITIES_CHANGED"

    return-object v0

    .line 297
    :pswitch_5
    const-string/jumbo v0, "DATA_CALL_LIST_CHANGED"

    return-object v0

    .line 299
    :pswitch_6
    const-string/jumbo v0, "SMS_SEND"

    return-object v0

    .line 301
    :pswitch_7
    const-string/jumbo v0, "SMS_SEND_RESULT"

    return-object v0

    .line 303
    :pswitch_8
    const-string/jumbo v0, "SMS_RECEIVED"

    return-object v0

    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private declared-synchronized startNewCallSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressCallSession;
    .locals 8
    .param p1, "phoneId"    # I

    .prologue
    monitor-enter p0

    .line 642
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 643
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_2

    .line 645
    new-instance v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .end local v0    # "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;-><init>(I)V

    .line 646
    .restart local v0    # "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 650
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    .line 651
    .local v3, "serviceState":Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    if-eqz v3, :cond_0

    .line 652
    iget-wide v4, v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    new-instance v6, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    .line 653
    const/4 v7, 0x2

    .line 652
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setServiceState(Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 657
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .line 658
    .local v1, "imsCapabilities":Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    if-eqz v1, :cond_1

    .line 659
    iget-wide v4, v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    new-instance v6, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    .line 660
    const/4 v7, 0x4

    .line 659
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    invoke-virtual {v6, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 664
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    .line 665
    .local v2, "imsConnectionState":Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;
    if-eqz v2, :cond_2

    .line 666
    iget-wide v4, v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    new-instance v6, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    .line 667
    const/4 v7, 0x3

    .line 666
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "imsCapabilities":Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .end local v2    # "imsConnectionState":Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;
    .end local v3    # "serviceState":Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    :cond_2
    monitor-exit p0

    .line 671
    return-object v0

    .end local v0    # "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized startNewSmsSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    .locals 8
    .param p1, "phoneId"    # I

    .prologue
    monitor-enter p0

    .line 681
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    .line 682
    .local v3, "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    if-nez v3, :cond_2

    .line 684
    new-instance v3, Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    .end local v3    # "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    invoke-direct {v3, p1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;-><init>(I)V

    .line 685
    .restart local v3    # "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 689
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    .line 690
    .local v2, "serviceState":Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    if-eqz v2, :cond_0

    .line 691
    iget-wide v4, v3, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->startElapsedTimeMs:J

    new-instance v6, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    .line 692
    const/4 v7, 0x2

    .line 691
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setServiceState(Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(JLcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 696
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .line 697
    .local v0, "imsCapabilities":Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    if-eqz v0, :cond_1

    .line 698
    iget-wide v4, v3, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->startElapsedTimeMs:J

    new-instance v6, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    .line 699
    const/4 v7, 0x4

    .line 698
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(JLcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 703
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    .line 704
    .local v1, "imsConnectionState":Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;
    if-eqz v1, :cond_2

    .line 705
    iget-wide v4, v3, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->startElapsedTimeMs:J

    new-instance v6, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    .line 706
    const/4 v7, 0x3

    .line 705
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    invoke-virtual {v6, v1}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(JLcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "imsCapabilities":Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .end local v1    # "imsConnectionState":Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;
    .end local v2    # "serviceState":Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    :cond_2
    monitor-exit p0

    .line 710
    return-object v3

    .end local v3    # "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private static telephonyEventToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "event"    # I

    .prologue
    .line 192
    packed-switch p0, :pswitch_data_0

    .line 218
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 194
    :pswitch_0
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 196
    :pswitch_1
    const-string/jumbo v0, "SETTINGS_CHANGED"

    return-object v0

    .line 198
    :pswitch_2
    const-string/jumbo v0, "RIL_SERVICE_STATE_CHANGED"

    return-object v0

    .line 200
    :pswitch_3
    const-string/jumbo v0, "IMS_CONNECTION_STATE_CHANGED"

    return-object v0

    .line 202
    :pswitch_4
    const-string/jumbo v0, "IMS_CAPABILITIES_CHANGED"

    return-object v0

    .line 204
    :pswitch_5
    const-string/jumbo v0, "DATA_CALL_SETUP"

    return-object v0

    .line 206
    :pswitch_6
    const-string/jumbo v0, "DATA_CALL_SETUP_RESPONSE"

    return-object v0

    .line 208
    :pswitch_7
    const-string/jumbo v0, "DATA_CALL_LIST_CHANGED"

    return-object v0

    .line 210
    :pswitch_8
    const-string/jumbo v0, "DATA_CALL_DEACTIVATE"

    return-object v0

    .line 212
    :pswitch_9
    const-string/jumbo v0, "DATA_CALL_DEACTIVATE_RESPONSE"

    return-object v0

    .line 214
    :pswitch_a
    const-string/jumbo v0, "DATA_STALL_ACTION"

    return-object v0

    .line 216
    :pswitch_b
    const-string/jumbo v0, "MODEM_RESTART"

    return-object v0

    .line 192
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private toCallSessionRilRequest(I)I
    .locals 3
    .param p1, "r"    # I

    .prologue
    .line 1108
    sparse-switch p1, :sswitch_data_0

    .line 1132
    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown RIL request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    const/4 v0, 0x0

    return v0

    .line 1110
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 1113
    :sswitch_1
    const/4 v0, 0x2

    return v0

    .line 1118
    :sswitch_2
    const/4 v0, 0x3

    return v0

    .line 1121
    :sswitch_3
    const/4 v0, 0x4

    return v0

    .line 1124
    :sswitch_4
    const/4 v0, 0x5

    return v0

    .line 1127
    :sswitch_5
    const/4 v0, 0x6

    return v0

    .line 1130
    :sswitch_6
    const/4 v0, 0x7

    return v0

    .line 1108
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xc -> :sswitch_2
        0xd -> :sswitch_2
        0xe -> :sswitch_2
        0xf -> :sswitch_4
        0x10 -> :sswitch_6
        0x24 -> :sswitch_3
        0x28 -> :sswitch_1
        0x54 -> :sswitch_5
    .end sparse-switch
.end method

.method private toImsReasonInfoProto(Lcom/android/ims/ImsReasonInfo;)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;
    .locals 3
    .param p1, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1423
    new-instance v1, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;-><init>()V

    .line 1424
    .local v1, "ri":Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;
    if-eqz p1, :cond_0

    .line 1425
    invoke-virtual {p1}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->setReasonCode(I)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    .line 1426
    invoke-virtual {p1}, Lcom/android/ims/ImsReasonInfo;->getExtraCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->setExtraCode(I)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    .line 1427
    invoke-virtual {p1}, Lcom/android/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v0

    .line 1428
    .local v0, "extraMessage":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1429
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->setExtraMessage(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    .line 1432
    .end local v0    # "extraMessage":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private toPdpType(Ljava/lang/String;)I
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 930
    const-string/jumbo v0, "IP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    const/4 v0, 0x1

    return v0

    .line 930
    :cond_0
    const-string/jumbo v0, "IPV6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 934
    const/4 v0, 0x2

    return v0

    .line 930
    :cond_1
    const-string/jumbo v0, "IPV4V6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 936
    const/4 v0, 0x3

    return v0

    .line 930
    :cond_2
    const-string/jumbo v0, "PPP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 938
    const/4 v0, 0x4

    return v0

    .line 940
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    const/4 v0, 0x0

    return v0
.end method

.method static toPrivacyFuzzedTimeInterval(JJ)I
    .locals 4
    .param p0, "previousTimestamp"    # J
    .param p2, "currentTimestamp"    # J

    .prologue
    .line 516
    sub-long v0, p2, p0

    .line 517
    .local v0, "diff":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 518
    const/4 v2, 0x0

    return v2

    .line 519
    :cond_0
    const-wide/16 v2, 0xa

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 520
    const/4 v2, 0x1

    return v2

    .line 521
    :cond_1
    const-wide/16 v2, 0x14

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 522
    const/4 v2, 0x2

    return v2

    .line 523
    :cond_2
    const-wide/16 v2, 0x32

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    .line 524
    const/4 v2, 0x3

    return v2

    .line 525
    :cond_3
    const-wide/16 v2, 0x64

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4

    .line 526
    const/4 v2, 0x4

    return v2

    .line 527
    :cond_4
    const-wide/16 v2, 0xc8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_5

    .line 528
    const/4 v2, 0x5

    return v2

    .line 529
    :cond_5
    const-wide/16 v2, 0x1f4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_6

    .line 530
    const/4 v2, 0x6

    return v2

    .line 531
    :cond_6
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_7

    .line 532
    const/4 v2, 0x7

    return v2

    .line 533
    :cond_7
    const-wide/16 v2, 0x7d0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_8

    .line 534
    const/16 v2, 0x8

    return v2

    .line 535
    :cond_8
    const-wide/16 v2, 0x1388

    cmp-long v2, v0, v2

    if-gtz v2, :cond_9

    .line 536
    const/16 v2, 0x9

    return v2

    .line 537
    :cond_9
    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-gtz v2, :cond_a

    .line 538
    const/16 v2, 0xa

    return v2

    .line 539
    :cond_a
    const-wide/16 v2, 0x7530

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    .line 540
    const/16 v2, 0xb

    return v2

    .line 541
    :cond_b
    const-wide/32 v2, 0xea60

    cmp-long v2, v0, v2

    if-gtz v2, :cond_c

    .line 542
    const/16 v2, 0xc

    return v2

    .line 543
    :cond_c
    const-wide/32 v2, 0x2bf20

    cmp-long v2, v0, v2

    if-gtz v2, :cond_d

    .line 544
    const/16 v2, 0xd

    return v2

    .line 545
    :cond_d
    const-wide/32 v2, 0x927c0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_e

    .line 546
    const/16 v2, 0xe

    return v2

    .line 547
    :cond_e
    const-wide/32 v2, 0x1b7740

    cmp-long v2, v0, v2

    if-gtz v2, :cond_f

    .line 548
    const/16 v2, 0xf

    return v2

    .line 549
    :cond_f
    const-wide/32 v2, 0x36ee80

    cmp-long v2, v0, v2

    if-gtz v2, :cond_10

    .line 550
    const/16 v2, 0x10

    return v2

    .line 551
    :cond_10
    const-wide/32 v2, 0x6ddd00

    cmp-long v2, v0, v2

    if-gtz v2, :cond_11

    .line 552
    const/16 v2, 0x11

    return v2

    .line 553
    :cond_11
    const-wide/32 v2, 0xdbba00

    cmp-long v2, v0, v2

    if-gtz v2, :cond_12

    .line 554
    const/16 v2, 0x12

    return v2

    .line 556
    :cond_12
    const/16 v2, 0x13

    return v2
.end method

.method private toServiceStateProto(Landroid/telephony/ServiceState;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    .locals 3
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 567
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;-><init>()V

    .line 569
    .local v0, "ssProto":Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->setVoiceRoamingType(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    .line 570
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->setDataRoamingType(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    .line 572
    new-instance v1, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-direct {v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;-><init>()V

    iput-object v1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    .line 574
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 575
    iget-object v1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->setAlphaLong(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    .line 578
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 579
    iget-object v1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorAlphaShort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->setAlphaShort(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    .line 582
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 583
    iget-object v1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->setNumeric(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    .line 586
    :cond_2
    new-instance v1, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-direct {v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;-><init>()V

    iput-object v1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    .line 588
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 589
    iget-object v1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->setAlphaLong(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    .line 592
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 593
    iget-object v1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorAlphaShort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->setAlphaShort(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    .line 596
    :cond_4
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 597
    iget-object v1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->setNumeric(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    .line 600
    :cond_5
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->setVoiceRat(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    .line 601
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->setDataRat(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    .line 602
    return-object v0
.end method

.method private writeOnCallSolicitedResponse(IIII)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "rilError"    # I
    .param p4, "rilRequest"    # I

    .prologue
    .line 1181
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 1182
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 1183
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Call session is missing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    :goto_0
    return-void

    .line 1185
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    .line 1186
    const/4 v2, 0x7

    .line 1185
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1187
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toCallSessionRilRequest(I)I

    move-result v2

    .line 1185
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequest(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequestId(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilError(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    goto :goto_0
.end method

.method private writeOnDeactivateDataCallResponse(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "rilError"    # I

    .prologue
    .line 1233
    new-instance v0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    .line 1234
    add-int/lit8 v1, p2, 0x1

    .line 1233
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setDeactivateDataCallResponse(I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    .line 1232
    return-void
.end method

.method private writeOnSetupDataCallResponse(IIIILcom/android/internal/telephony/dataconnection/DataCallResponse;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "rilError"    # I
    .param p4, "rilRequest"    # I
    .param p5, "response"    # Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    .prologue
    .line 1148
    new-instance v1, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    invoke-direct {v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;-><init>()V

    .line 1149
    .local v1, "setupDataCallResponse":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;-><init>()V

    .line 1151
    .local v0, "dataCall":Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    if-eqz p5, :cond_1

    .line 1153
    iget v2, p5, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    if-nez v2, :cond_2

    const/4 v2, 0x1

    .line 1152
    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->setStatus(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    .line 1154
    iget v2, p5, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->suggestedRetryTime:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->setSuggestedRetryTimeMillis(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    .line 1156
    iget v2, p5, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->setCid(I)Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    .line 1157
    iget-object v2, p5, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1158
    iget-object v2, p5, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toPdpType(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->setType(I)Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    .line 1161
    :cond_0
    iget-object v2, p5, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1162
    iget-object v2, p5, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->setIframe(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    .line 1165
    :cond_1
    iput-object v0, v1, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->call:Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    .line 1167
    new-instance v2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setSetupDataCallResponse(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    .line 1146
    return-void

    .line 1153
    :cond_2
    iget v2, p5, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    goto :goto_0
.end method

.method private declared-synchronized writeOnSmsSolicitedResponse(IIILcom/android/internal/telephony/SmsResponse;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "rilError"    # I
    .param p4, "response"    # Lcom/android/internal/telephony/SmsResponse;

    .prologue
    monitor-enter p0

    .line 1204
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    .line 1205
    .local v1, "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    if-nez v1, :cond_0

    .line 1206
    sget-object v2, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "SMS session is missing"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 1202
    return-void

    .line 1209
    :cond_0
    const/4 v0, 0x0

    .line 1210
    .local v0, "errorCode":I
    if-eqz p4, :cond_1

    .line 1211
    :try_start_1
    iget v0, p4, Lcom/android/internal/telephony/SmsResponse;->mErrorCode:I

    .line 1214
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    .line 1215
    const/4 v3, 0x7

    .line 1214
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setErrorCode(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setRilErrno(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setRilRequestId(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 1221
    invoke-virtual {v1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->decreaseExpectedResponse()V

    .line 1222
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishSmsSessionIfNeeded(Lcom/android/internal/telephony/metrics/InProgressSmsSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "errorCode":I
    .end local v1    # "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 172
    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    .line 173
    aget-object v0, p3, v1

    const-string/jumbo v1, "--metrics"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->printAllMetrics(Ljava/io/PrintWriter;)V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    const-string/jumbo v1, "--metricsproto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->buildProto()Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertProtoToBase64String(Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->reset()V

    goto :goto_0
.end method

.method public writeDataStallEvent(II)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "recoveryAction"    # I

    .prologue
    .line 799
    new-instance v0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setDataStallRecoveryAction(I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    .line 798
    return-void
.end method

.method public writeImsCallState(ILcom/android/ims/internal/ImsCallSession;Lcom/android/internal/telephony/Call$State;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p3, "callState"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 1337
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->-getcom-android-internal-telephony-Call$StateSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1357
    const/4 v1, 0x0

    .line 1360
    .local v1, "state":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 1361
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 1362
    sget-object v2, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Call session is missing"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    :goto_1
    return-void

    .line 1339
    .end local v0    # "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    .end local v1    # "state":I
    :pswitch_0
    const/4 v1, 0x1

    .restart local v1    # "state":I
    goto :goto_0

    .line 1341
    .end local v1    # "state":I
    :pswitch_1
    const/4 v1, 0x2

    .restart local v1    # "state":I
    goto :goto_0

    .line 1343
    .end local v1    # "state":I
    :pswitch_2
    const/4 v1, 0x3

    .restart local v1    # "state":I
    goto :goto_0

    .line 1345
    .end local v1    # "state":I
    :pswitch_3
    const/4 v1, 0x4

    .restart local v1    # "state":I
    goto :goto_0

    .line 1347
    .end local v1    # "state":I
    :pswitch_4
    const/4 v1, 0x5

    .restart local v1    # "state":I
    goto :goto_0

    .line 1349
    .end local v1    # "state":I
    :pswitch_5
    const/4 v1, 0x6

    .restart local v1    # "state":I
    goto :goto_0

    .line 1351
    .end local v1    # "state":I
    :pswitch_6
    const/4 v1, 0x7

    .restart local v1    # "state":I
    goto :goto_0

    .line 1353
    .end local v1    # "state":I
    :pswitch_7
    const/16 v1, 0x8

    .restart local v1    # "state":I
    goto :goto_0

    .line 1355
    .end local v1    # "state":I
    :pswitch_8
    const/16 v1, 0x9

    .restart local v1    # "state":I
    goto :goto_0

    .line 1364
    .restart local v0    # "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    .line 1365
    const/16 v3, 0x10

    .line 1364
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1366
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Lcom/android/ims/internal/ImsCallSession;)I

    move-result v3

    .line 1364
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallState(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    goto :goto_1

    .line 1337
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public writeImsSetFeatureValue(IIIII)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "feature"    # I
    .param p3, "network"    # I
    .param p4, "value"    # I
    .param p5, "status"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 814
    new-instance v1, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    invoke-direct {v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;-><init>()V

    .line 815
    .local v1, "s":Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    packed-switch p2, :pswitch_data_0

    .line 830
    :goto_0
    new-instance v2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setSettings(Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    move-result-object v0

    .line 831
    .local v0, "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    .line 833
    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getTimestampMillis()J

    move-result-wide v4

    .line 834
    new-instance v2, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setSettings(Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v2

    .line 833
    invoke-direct {p0, v4, v5, p1, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 836
    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getTimestampMillis()J

    move-result-wide v4

    .line 837
    new-instance v2, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setSettings(Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v2

    .line 836
    invoke-direct {p0, v4, v5, p1, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressSmsSession(JILcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 813
    return-void

    .line 817
    .end local v0    # "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    :pswitch_0
    if-eqz p4, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->setIsEnhanced4GLteModeEnabled(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    goto :goto_0

    .line 820
    :pswitch_1
    if-eqz p4, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->setIsWifiCallingEnabled(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    goto :goto_0

    .line 823
    :pswitch_2
    if-eqz p4, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->setIsVtOverLteEnabled(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    goto :goto_0

    .line 826
    :pswitch_3
    if-eqz p4, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->setIsVtOverWifiEnabled(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    goto :goto_0

    .line 815
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public writeNITZEvent(IJ)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "timestamp"    # J

    .prologue
    .line 1526
    new-instance v1, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v1, p2, p3}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setNITZ(J)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    move-result-object v0

    .line 1527
    .local v0, "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    .line 1529
    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getTimestampMillis()J

    move-result-wide v2

    .line 1530
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    .line 1531
    const/16 v4, 0x15

    .line 1530
    invoke-direct {v1, v4}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    invoke-virtual {v1, p2, p3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setNITZ(J)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1529
    invoke-direct {p0, v2, v3, p1, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1525
    return-void
.end method

.method public writeOnImsCallHandoverEvent(IILcom/android/ims/internal/ImsCallSession;IILcom/android/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "eventType"    # I
    .param p3, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p4, "srcAccessTech"    # I
    .param p5, "targetAccessTech"    # I
    .param p6, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1468
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 1469
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 1470
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Call session is missing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    :goto_0
    return-void

    .line 1473
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    invoke-direct {v1, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1474
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Lcom/android/ims/internal/ImsCallSession;)I

    move-result v2

    .line 1473
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setSrcAccessTech(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setTargetAccessTech(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1477
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toImsReasonInfoProto(Lcom/android/ims/ImsReasonInfo;)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    move-result-object v2

    .line 1473
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsReasonInfo(Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1472
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    goto :goto_0
.end method

.method public writeOnImsCallHeld(ILcom/android/ims/internal/ImsCallSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 1540
    return-void
.end method

.method public writeOnImsCallHoldFailed(ILcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p3, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1543
    return-void
.end method

.method public writeOnImsCallHoldReceived(ILcom/android/ims/internal/ImsCallSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 1541
    return-void
.end method

.method public writeOnImsCallProgressing(ILcom/android/ims/internal/ImsCallSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 1536
    return-void
.end method

.method public writeOnImsCallReceive(ILcom/android/ims/internal/ImsCallSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 1393
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallStart(ILcom/android/ims/internal/ImsCallSession;)V

    .line 1392
    return-void
.end method

.method public writeOnImsCallResumeFailed(ILcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p3, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1547
    return-void
.end method

.method public writeOnImsCallResumeReceived(ILcom/android/ims/internal/ImsCallSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 1545
    return-void
.end method

.method public writeOnImsCallResumed(ILcom/android/ims/internal/ImsCallSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 1544
    return-void
.end method

.method public writeOnImsCallStart(ILcom/android/ims/internal/ImsCallSession;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 1378
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewCallSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressCallSession;

    move-result-object v0

    .line 1381
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1382
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Lcom/android/ims/internal/ImsCallSession;)I

    move-result v2

    .line 1381
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1383
    const/4 v2, 0x1

    .line 1381
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsCommand(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1380
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1377
    return-void
.end method

.method public writeOnImsCallStartFailed(ILcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p3, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1539
    return-void
.end method

.method public writeOnImsCallStarted(ILcom/android/ims/internal/ImsCallSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 1537
    return-void
.end method

.method public writeOnImsCallTerminated(ILcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p3, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1444
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 1445
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 1446
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Call session is missing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    :goto_0
    return-void

    .line 1449
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1450
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Lcom/android/ims/internal/ImsCallSession;)I

    move-result v2

    .line 1449
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1451
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toImsReasonInfoProto(Lcom/android/ims/ImsReasonInfo;)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    move-result-object v2

    .line 1449
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsReasonInfo(Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1448
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    goto :goto_0
.end method

.method public declared-synchronized writeOnImsCapabilities(I[Z)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "capabilities"    # [Z

    .prologue
    monitor-enter p0

    .line 900
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;-><init>()V

    .line 902
    .local v0, "cap":Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    const/4 v2, 0x0

    aget-boolean v2, p2, v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->setVoiceOverLte(Z)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .line 903
    const/4 v2, 0x1

    aget-boolean v2, p2, v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->setVideoOverLte(Z)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .line 904
    const/4 v2, 0x2

    aget-boolean v2, p2, v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->setVoiceOverWifi(Z)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .line 905
    const/4 v2, 0x3

    aget-boolean v2, p2, v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->setVideoOverWifi(Z)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .line 906
    const/4 v2, 0x4

    aget-boolean v2, p2, v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->setUtOverLte(Z)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .line 907
    const/4 v2, 0x5

    aget-boolean v2, p2, v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->setUtOverWifi(Z)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .line 909
    new-instance v2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    move-result-object v1

    .line 910
    .local v1, "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 911
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    .line 913
    invoke-virtual {v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getTimestampMillis()J

    move-result-wide v2

    .line 914
    new-instance v4, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    .line 915
    const/4 v5, 0x4

    .line 914
    invoke-direct {v4, v5}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 916
    iget-object v5, v1, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .line 914
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v4

    .line 913
    invoke-direct {p0, v2, v3, p1, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 917
    invoke-virtual {v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getTimestampMillis()J

    move-result-wide v2

    .line 918
    new-instance v4, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    .line 919
    const/4 v5, 0x4

    .line 918
    invoke-direct {v4, v5}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 920
    iget-object v5, v1, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .line 918
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v4

    .line 917
    invoke-direct {p0, v2, v3, p1, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressSmsSession(JILcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 899
    return-void

    .end local v0    # "cap":Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .end local v1    # "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public writeOnImsCommand(ILcom/android/ims/internal/ImsCallSession;I)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p3, "command"    # I

    .prologue
    .line 1405
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 1406
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 1407
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Call session is missing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    :goto_0
    return-void

    .line 1410
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1411
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Lcom/android/ims/internal/ImsCallSession;)I

    move-result v2

    .line 1410
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsCommand(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1409
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    goto :goto_0
.end method

.method public declared-synchronized writeOnImsConnectionState(IILcom/android/ims/ImsReasonInfo;)V
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "state"    # I
    .param p3, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    monitor-enter p0

    .line 862
    :try_start_0
    new-instance v2, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    invoke-direct {v2}, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;-><init>()V

    .line 863
    .local v2, "imsState":Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;
    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->setState(I)Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    .line 864
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 866
    if-eqz p3, :cond_1

    .line 867
    new-instance v3, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    invoke-direct {v3}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;-><init>()V

    .line 869
    .local v3, "ri":Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;
    invoke-virtual {p3}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->setReasonCode(I)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    .line 870
    invoke-virtual {p3}, Lcom/android/ims/ImsReasonInfo;->getExtraCode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->setExtraCode(I)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    .line 871
    invoke-virtual {p3}, Lcom/android/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v1

    .line 872
    .local v1, "extraMessage":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 873
    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->setExtraMessage(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    .line 876
    :cond_0
    iput-object v3, v2, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    .line 879
    .end local v1    # "extraMessage":Ljava/lang/String;
    .end local v3    # "ri":Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;
    :cond_1
    new-instance v4, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v4, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    move-result-object v0

    .line 881
    .local v0, "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    .line 883
    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getTimestampMillis()J

    move-result-wide v4

    .line 884
    new-instance v6, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    .line 885
    const/4 v7, 0x3

    .line 884
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 886
    iget-object v7, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    .line 884
    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v6

    .line 883
    invoke-direct {p0, v4, v5, p1, v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 887
    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getTimestampMillis()J

    move-result-wide v4

    .line 888
    new-instance v6, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    .line 889
    const/4 v7, 0x3

    .line 888
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 890
    iget-object v7, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    .line 888
    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v6

    .line 887
    invoke-direct {p0, v4, v5, p1, v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressSmsSession(JILcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 861
    return-void

    .end local v0    # "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .end local v2    # "imsState":Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public writeOnRilSolicitedResponse(IIIILjava/lang/Object;)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "rilError"    # I
    .param p4, "rilRequest"    # I
    .param p5, "ret"    # Ljava/lang/Object;

    .prologue
    .line 1248
    sparse-switch p4, :sswitch_data_0

    .line 1247
    :goto_0
    return-void

    :sswitch_0
    move-object v5, p5

    .line 1250
    check-cast v5, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    .local v5, "dataCall":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1251
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnSetupDataCallResponse(IIIILcom/android/internal/telephony/dataconnection/DataCallResponse;)V

    goto :goto_0

    .line 1254
    .end local v5    # "dataCall":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    :sswitch_1
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnDeactivateDataCallResponse(II)V

    goto :goto_0

    .line 1261
    :sswitch_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnCallSolicitedResponse(IIII)V

    goto :goto_0

    :sswitch_3
    move-object v6, p5

    .line 1267
    check-cast v6, Lcom/android/internal/telephony/SmsResponse;

    .line 1268
    .local v6, "smsResponse":Lcom/android/internal/telephony/SmsResponse;
    invoke-direct {p0, p1, p2, p3, v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnSmsSolicitedResponse(IIILcom/android/internal/telephony/SmsResponse;)V

    goto :goto_0

    .line 1248
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xc -> :sswitch_2
        0xd -> :sswitch_2
        0xe -> :sswitch_2
        0x19 -> :sswitch_3
        0x1a -> :sswitch_3
        0x1b -> :sswitch_0
        0x28 -> :sswitch_2
        0x29 -> :sswitch_1
        0x57 -> :sswitch_3
        0x71 -> :sswitch_3
    .end sparse-switch
.end method

.method public writeOnRilTimeoutResponse(III)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "rilRequest"    # I

    .prologue
    .line 1548
    return-void
.end method

.method public writePhoneState(ILcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "phoneState"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .prologue
    .line 1281
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->-getcom-android-internal-telephony-PhoneConstants$StateSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1292
    const/4 v1, 0x0

    .line 1296
    .local v1, "state":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 1297
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 1298
    sget-object v2, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Call session is missing"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    :goto_1
    return-void

    .line 1283
    .end local v0    # "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    .end local v1    # "state":I
    :pswitch_0
    const/4 v1, 0x1

    .line 1284
    .restart local v1    # "state":I
    goto :goto_0

    .line 1286
    .end local v1    # "state":I
    :pswitch_1
    const/4 v1, 0x2

    .line 1287
    .restart local v1    # "state":I
    goto :goto_0

    .line 1289
    .end local v1    # "state":I
    :pswitch_2
    const/4 v1, 0x3

    .line 1290
    .restart local v1    # "state":I
    goto :goto_0

    .line 1300
    .restart local v0    # "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1301
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishCallSession(Lcom/android/internal/telephony/metrics/InProgressCallSession;)V

    .line 1303
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    .line 1304
    const/16 v3, 0x14

    .line 1303
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setPhoneState(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    goto :goto_1

    .line 1281
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public writeRilAnswer(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I

    .prologue
    .line 1073
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 1074
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 1075
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Call session is missing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    :goto_0
    return-void

    .line 1078
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1079
    const/4 v2, 0x2

    .line 1078
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequest(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequestId(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1077
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    goto :goto_0
.end method

.method public writeRilCallRing(I[C)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "response"    # [C

    .prologue
    .line 1040
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewCallSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressCallSession;

    move-result-object v0

    .line 1042
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    iget-wide v2, v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    .line 1043
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v4, 0x8

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1042
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1039
    return-void
.end method

.method public writeRilDataCallList(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataCallResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 998
    .local p2, "dcsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataCallResponse;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    .line 1000
    .local v0, "dataCalls":[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1001
    new-instance v2, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    invoke-direct {v2}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;-><init>()V

    aput-object v2, v0, v1

    .line 1002
    aget-object v3, v0, v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    iget v2, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->setCid(I)Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    .line 1003
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1004
    aget-object v3, v0, v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->setIframe(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    .line 1006
    :cond_0
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1007
    aget-object v3, v0, v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toPdpType(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->setType(I)Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    .line 1000
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1011
    :cond_2
    new-instance v2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setDataCalls([Lcom/android/internal/telephony/TelephonyProto$RilDataCall;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    .line 996
    return-void
.end method

.method public writeRilDeactivateDataCall(IIII)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "cid"    # I
    .param p4, "reason"    # I

    .prologue
    .line 982
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;-><init>()V

    .line 983
    .local v0, "deactivateDataCall":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->setCid(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    .line 984
    add-int/lit8 v1, p4, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->setReason(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    .line 986
    new-instance v1, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setDeactivateDataCall(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    .line 980
    return-void
.end method

.method public writeRilDial(IIILcom/android/internal/telephony/UUSInfo;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "clirMode"    # I
    .param p4, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;

    .prologue
    .line 1024
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewCallSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressCallSession;

    move-result-object v0

    .line 1026
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    iget-wide v2, v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    .line 1027
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 v4, 0x6

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1028
    const/4 v4, 0x1

    .line 1027
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequest(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequestId(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1026
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1022
    return-void
.end method

.method public writeRilHangup(III)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "callId"    # I

    .prologue
    .line 1054
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 1055
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 1056
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Call session is missing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    :goto_0
    return-void

    .line 1059
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1060
    const/4 v2, 0x3

    .line 1059
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequest(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequestId(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1058
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    goto :goto_0
.end method

.method public writeRilNewSms(III)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "tech"    # I
    .param p3, "format"    # I

    .prologue
    .line 1509
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewSmsSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    move-result-object v0

    .line 1511
    .local v0, "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    new-instance v1, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setTech(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setFormat(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 1516
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishSmsSessionIfNeeded(Lcom/android/internal/telephony/metrics/InProgressSmsSession;)V

    .line 1508
    return-void
.end method

.method public writeRilSendSms(IIII)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "tech"    # I
    .param p4, "format"    # I

    .prologue
    .line 1490
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewSmsSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    move-result-object v0

    .line 1492
    .local v0, "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    new-instance v1, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    invoke-virtual {v1, p3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setTech(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setRilRequestId(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setFormat(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 1498
    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->increaseExpectedResponse()V

    .line 1489
    return-void
.end method

.method public writeRilSetupDataCall(IIIILjava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "radioTechnology"    # I
    .param p4, "profile"    # I
    .param p5, "apn"    # Ljava/lang/String;
    .param p6, "authType"    # I
    .param p7, "protocol"    # Ljava/lang/String;

    .prologue
    .line 958
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;-><init>()V

    .line 959
    .local v0, "setupDataCall":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->setRat(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    .line 960
    add-int/lit8 v1, p4, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->setDataProfile(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    .line 961
    if-eqz p5, :cond_0

    .line 962
    invoke-virtual {v0, p5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->setApn(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    .line 964
    :cond_0
    if-eqz p7, :cond_1

    .line 965
    invoke-direct {p0, p7}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toPdpType(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->setType(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    .line 968
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setSetupDataCall(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    .line 956
    return-void
.end method

.method public writeRilSrvcc(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "rilSrvccState"    # I

    .prologue
    .line 1091
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 1092
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 1093
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Call session is missing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    :goto_0
    return-void

    .line 1096
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1097
    add-int/lit8 v2, p2, 0x1

    .line 1096
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setSrvccState(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1095
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    goto :goto_0
.end method

.method public declared-synchronized writeServiceStateChanged(ILandroid/telephony/ServiceState;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    monitor-enter p0

    .line 776
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    .line 777
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toServiceStateProto(Landroid/telephony/ServiceState;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    move-result-object v2

    .line 776
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setServiceState(Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    move-result-object v0

    .line 779
    .local v0, "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    iget-object v2, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 780
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    .line 782
    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getTimestampMillis()J

    move-result-wide v2

    .line 783
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    .line 784
    const/4 v4, 0x2

    .line 783
    invoke-direct {v1, v4}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 785
    iget-object v4, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    .line 783
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setServiceState(Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 782
    invoke-direct {p0, v2, v3, p1, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 786
    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getTimestampMillis()J

    move-result-wide v2

    .line 787
    new-instance v1, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    .line 788
    const/4 v4, 0x2

    .line 787
    invoke-direct {v1, v4}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 789
    iget-object v4, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    .line 787
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setServiceState(Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v1

    .line 786
    invoke-direct {p0, v2, v3, p1, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressSmsSession(JILcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 774
    return-void

    .end local v0    # "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public writeSetPreferredNetworkType(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 848
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;-><init>()V

    .line 849
    .local v0, "s":Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->setPreferredNetworkMode(I)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    .line 850
    new-instance v1, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setSettings(Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    .line 847
    return-void
.end method
