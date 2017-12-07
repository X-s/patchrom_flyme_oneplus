.class public Lcom/android/internal/telephony/GsmCdmaConnection;
.super Lcom/android/internal/telephony/Connection;
.source "GsmCdmaConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-internal-telephony-DriverCall$StateSwitchesValues:[I = null

.field private static final DBG:Z = true

.field static final EVENT_DTMF_DELAY_DONE:I = 0x5

.field static final EVENT_DTMF_DONE:I = 0x1

.field static final EVENT_NEXT_POST_DIAL:I = 0x3

.field static final EVENT_PAUSE_DONE:I = 0x2

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "GsmCdmaConnection"

.field static final PAUSE_DELAY_MILLIS_CDMA:I = 0x7d0

.field static final PAUSE_DELAY_MILLIS_GSM:I = 0xbb8

.field private static final VDBG:Z = true

.field static final WAKE_LOCK_TIMEOUT_MILLIS:I = 0xea60


# instance fields
.field mDisconnectTime:J

.field mDisconnected:Z

.field private mDtmfToneDelay:I

.field mHandler:Landroid/os/Handler;

.field mIndex:I

.field private mIsEmergencyCall:Z

.field mOrigConnection:Lcom/android/internal/telephony/Connection;

.field mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

.field mParent:Lcom/android/internal/telephony/GsmCdmaCall;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field mPreciseCause:I

.field mUusInfo:Lcom/android/internal/telephony/UUSInfo;

.field mVendorCause:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/GsmCdmaConnection;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDtmfToneDelay:I

    return v0
.end method

.method private static synthetic -getcom-android-internal-telephony-DriverCall$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/GsmCdmaConnection;->-com-android-internal-telephony-DriverCall$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/GsmCdmaConnection;->-com-android-internal-telephony-DriverCall$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/DriverCall$State;->values()[Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/android/internal/telephony/GsmCdmaConnection;->-com-android-internal-telephony-DriverCall$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/GsmCdmaConnection;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->processNextPostDialChar()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/GsmCdmaConnection;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->releaseWakeLock()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cw"    # Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;
    .param p3, "ct"    # Lcom/android/internal/telephony/GsmCdmaCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/GsmCdmaCall;

    .prologue
    const/4 v1, 0x0

    .line 214
    invoke-virtual {p4}, Lcom/android/internal/telephony/GsmCdmaCall;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Connection;-><init>(I)V

    .line 65
    iput v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPreciseCause:I

    .line 74
    iput-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIsEmergencyCall:Z

    .line 77
    iput v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDtmfToneDelay:I

    .line 215
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->createWakeLock(Landroid/content/Context;)V

    .line 216
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->acquireWakeLock()V

    .line 218
    iput-object p3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    .line 219
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;-><init>(Lcom/android/internal/telephony/GsmCdmaConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    .line 220
    iget-object v0, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mAddress:Ljava/lang/String;

    .line 221
    iget v0, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPresentation:I

    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mNumberPresentation:I

    .line 222
    iget-object v0, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCnapName:Ljava/lang/String;

    .line 223
    iget v0, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->namePresentation:I

    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCnapNamePresentation:I

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIndex:I

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIsIncoming:Z

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCreateTime:J

    .line 227
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mConnectTime:J

    .line 228
    iput-object p4, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 229
    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/GsmCdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 213
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/GsmCdmaCallTracker;I)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;
    .param p2, "dc"    # Lcom/android/internal/telephony/DriverCall;
    .param p3, "ct"    # Lcom/android/internal/telephony/GsmCdmaCallTracker;
    .param p4, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Connection;-><init>(I)V

    .line 65
    iput v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPreciseCause:I

    .line 74
    iput-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIsEmergencyCall:Z

    .line 77
    iput v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDtmfToneDelay:I

    .line 124
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->createWakeLock(Landroid/content/Context;)V

    .line 125
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->acquireWakeLock()V

    .line 127
    iput-object p3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    .line 128
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;-><init>(Lcom/android/internal/telephony/GsmCdmaConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    .line 130
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mAddress:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mAddress:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIsEmergencyCall:Z

    .line 132
    iget-boolean v0, p2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIsIncoming:Z

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCreateTime:J

    .line 134
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCnapName:Ljava/lang/String;

    .line 135
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCnapNamePresentation:I

    .line 136
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mNumberPresentation:I

    .line 137
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 139
    iput p4, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIndex:I

    .line 141
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0, p0, p2}, Lcom/android/internal/telephony/GsmCdmaCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    .line 144
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->fetchDtmfToneDelay(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;Z)V
    .locals 9
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "ct"    # Lcom/android/internal/telephony/GsmCdmaCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/GsmCdmaCall;
    .param p5, "isEmergencyCall"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 150
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/Connection;-><init>(I)V

    .line 65
    iput v6, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPreciseCause:I

    .line 74
    iput-boolean v6, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIsEmergencyCall:Z

    .line 77
    iput v6, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDtmfToneDelay:I

    .line 151
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->createWakeLock(Landroid/content/Context;)V

    .line 152
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->acquireWakeLock()V

    .line 154
    iput-object p3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    .line 155
    new-instance v3, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;

    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;-><init>(Lcom/android/internal/telephony/GsmCdmaConnection;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    .line 157
    const/4 v2, 0x0

    .line 158
    .local v2, "showOrigDialString":Z
    if-eqz p1, :cond_0

    .line 159
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 160
    const-string/jumbo v4, "carrier_config"

    .line 159
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 161
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 162
    .local v1, "pb":Landroid/os/PersistableBundle;
    if-eqz v1, :cond_0

    .line 163
    const-string/jumbo v3, "config_show_orig_dial_string_for_cdma"

    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 166
    .end local v0    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v1    # "pb":Landroid/os/PersistableBundle;
    .end local v2    # "showOrigDialString":Z
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 167
    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDialString:Ljava/lang/String;

    .line 180
    :goto_0
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mAddress:Ljava/lang/String;

    .line 181
    iput-boolean p5, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIsEmergencyCall:Z

    .line 182
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialString:Ljava/lang/String;

    .line 184
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIndex:I

    .line 186
    iput-boolean v6, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIsIncoming:Z

    .line 187
    iput-object v7, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCnapName:Ljava/lang/String;

    .line 188
    iput v8, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCnapNamePresentation:I

    .line 189
    iput v8, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mNumberPresentation:I

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCreateTime:J

    .line 192
    if-eqz p4, :cond_1

    .line 193
    iput-object p4, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 194
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 195
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v3}, Lcom/android/internal/telephony/GsmCdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 207
    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->fetchDtmfToneDelay(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    .line 149
    return-void

    .line 169
    :cond_2
    const-string/jumbo v3, "GsmCdmaConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[GsmCdmaConn] GsmCdmaConnection: dialString="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 170
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/GsmCdmaConnection;->maskDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 169
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    if-eqz v2, :cond_3

    .line 172
    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDialString:Ljava/lang/String;

    .line 174
    :cond_3
    invoke-static {p2}, Lcom/android/internal/telephony/GsmCdmaConnection;->formatDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 175
    const-string/jumbo v3, "GsmCdmaConnection"

    .line 176
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[GsmCdmaConn] GsmCdmaConnection:formated dialString="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 177
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/GsmCdmaConnection;->maskDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 176
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 175
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 198
    :cond_4
    iget-object v3, p4, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_5

    .line 199
    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v3}, Lcom/android/internal/telephony/GsmCdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    goto :goto_1

    .line 201
    :cond_5
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v3}, Lcom/android/internal/telephony/GsmCdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    goto :goto_1
.end method

.method private acquireWakeLock()V
    .locals 1

    .prologue
    .line 1091
    const-string/jumbo v0, "acquireWakeLock"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 1092
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1090
    return-void
.end method

.method private createWakeLock(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1085
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1086
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "GsmCdmaConnection"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1084
    return-void
.end method

.method private doDisconnect()V
    .locals 4

    .prologue
    .line 870
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIndex:I

    .line 871
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnectTime:J

    .line 872
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mConnectTimeReal:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDuration:J

    .line 873
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnected:Z

    .line 874
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->clearPostDialListeners()V

    .line 869
    return-void
.end method

.method static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 243
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private fetchDtmfToneDelay(Lcom/android/internal/telephony/GsmCdmaPhone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;

    .prologue
    .line 1192
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "carrier_config"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1191
    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 1193
    .local v1, "configMgr":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 1194
    .local v0, "b":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_0

    .line 1195
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getDtmfToneDelayKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDtmfToneDelay:I

    .line 1190
    :cond_0
    return-void
.end method

.method private static findNextPCharOrNonPOrNonWCharIndex(Ljava/lang/String;I)I
    .locals 5
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "currIndex"    # I

    .prologue
    .line 1132
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->isWait(C)Z

    move-result v3

    .line 1133
    .local v3, "wMatched":Z
    add-int/lit8 v1, p1, 0x1

    .line 1134
    .local v1, "index":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1135
    .end local v3    # "wMatched":Z
    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1136
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1138
    .local v0, "cNext":C
    invoke-static {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isWait(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1139
    const/4 v3, 0x1

    .line 1143
    :cond_0
    invoke-static {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isWait(C)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPause(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1146
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1151
    .end local v0    # "cNext":C
    :cond_2
    if-ge v1, v2, :cond_3

    add-int/lit8 v4, p1, 0x1

    if-le v1, v4, :cond_3

    .line 1152
    if-nez v3, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPause(C)Z

    move-result v4

    .line 1151
    if-eqz v4, :cond_3

    .line 1153
    add-int/lit8 v4, p1, 0x1

    return v4

    .line 1155
    :cond_3
    return v1
.end method

.method private static findPOrWCharToAppend(Ljava/lang/String;II)C
    .locals 3
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "currPwIndex"    # I
    .param p2, "nextNonPwCharIndex"    # I

    .prologue
    .line 1164
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1168
    .local v0, "c":C
    invoke-static {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPause(C)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x2c

    .line 1176
    .local v1, "ret":C
    :goto_0
    add-int/lit8 v2, p1, 0x1

    if-le p2, v2, :cond_0

    .line 1177
    const/16 v1, 0x3b

    .line 1179
    :cond_0
    return v1

    .line 1168
    .end local v1    # "ret":C
    :cond_1
    const/16 v1, 0x3b

    .restart local v1    # "ret":C
    goto :goto_0
.end method

.method public static formatDialString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 265
    if-nez p0, :cond_0

    .line 266
    return-object v6

    .line 268
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 269
    .local v2, "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .local v5, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 273
    .local v1, "currIndex":I
    :goto_0
    if-ge v1, v2, :cond_5

    .line 274
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 275
    .local v0, "c":C
    invoke-static {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPause(C)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isWait(C)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 276
    :cond_1
    add-int/lit8 v6, v2, -0x1

    if-ge v1, v6, :cond_2

    .line 278
    invoke-static {p0, v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->findNextPCharOrNonPOrNonWCharIndex(Ljava/lang/String;I)I

    move-result v3

    .line 280
    .local v3, "nextIndex":I
    if-ge v3, v2, :cond_3

    .line 281
    invoke-static {p0, v1, v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->findPOrWCharToAppend(Ljava/lang/String;II)C

    move-result v4

    .line 282
    .local v4, "pC":C
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 286
    add-int/lit8 v6, v1, 0x1

    if-le v3, v6, :cond_2

    .line 287
    add-int/lit8 v1, v3, -0x1

    .line 297
    .end local v3    # "nextIndex":I
    .end local v4    # "pC":C
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    .restart local v3    # "nextIndex":I
    :cond_3
    if-ne v3, v2, :cond_2

    .line 291
    add-int/lit8 v1, v2, -0x1

    goto :goto_1

    .line 295
    .end local v3    # "nextIndex":I
    :cond_4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 299
    .end local v0    # "c":C
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private isConnectingInOrOut()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1029
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 1030
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    .line 1031
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPause(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 1115
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPhoneTypeGsm()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1200
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWait(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 1119
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWild(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 1123
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1204
    const-string/jumbo v0, "GsmCdmaConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[GsmCdmaConn] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    return-void
.end method

.method private maskDialString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 1184
    return-object p1
.end method

.method private parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/GsmCdmaCall;
    .locals 3
    .param p1, "state"    # Lcom/android/internal/telephony/DriverCall$State;

    .prologue
    .line 1036
    invoke-static {}, Lcom/android/internal/telephony/GsmCdmaConnection;->-getcom-android-internal-telephony-DriverCall$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1053
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "illegal call state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1040
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    return-object v0

    .line 1044
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    return-object v0

    .line 1049
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    return-object v0

    .line 1036
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private processNextPostDialChar()V
    .locals 9

    .prologue
    .line 966
    const/4 v1, 0x0

    .line 969
    .local v1, "c":C
    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v7, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v6, v7, :cond_0

    .line 970
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->releaseWakeLock()V

    .line 971
    return-void

    .line 974
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialString:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 975
    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mNextPostDialChar:I

    if-gt v6, v7, :cond_4

    .line 976
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/GsmCdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 979
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->releaseWakeLock()V

    .line 982
    const/4 v1, 0x0

    .line 1001
    .end local v1    # "c":C
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->notifyPostDialListenersNextChar(C)V

    .line 1004
    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPostDialHandler()Landroid/os/Registrant;

    move-result-object v4

    .line 1008
    .local v4, "postDialHandler":Landroid/os/Registrant;
    if-eqz v4, :cond_3

    .line 1009
    invoke-virtual {v4}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v3

    .local v3, "notifyMessage":Landroid/os/Message;
    if-eqz v3, :cond_3

    .line 1011
    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 1012
    .local v5, "state":Lcom/android/internal/telephony/Connection$PostDialState;
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1013
    .local v0, "ar":Landroid/os/AsyncResult;
    iput-object p0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1014
    iput-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 1017
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 1020
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 965
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "notifyMessage":Landroid/os/Message;
    .end local v5    # "state":Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_3
    return-void

    .line 986
    .end local v4    # "postDialHandler":Landroid/os/Registrant;
    .restart local v1    # "c":C
    :cond_4
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/GsmCdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 988
    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialString:Ljava/lang/String;

    iget v7, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mNextPostDialChar:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mNextPostDialChar:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 990
    .local v1, "c":C
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->processPostDialChar(C)Z

    move-result v2

    .line 992
    .local v2, "isValid":Z
    if-nez v2, :cond_2

    .line 994
    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 996
    const-string/jumbo v6, "GsmCdmaConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processNextPostDialChar: c="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " isn\'t valid!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    return-void
.end method

.method private processPostDialChar(C)Z
    .locals 6
    .param p1, "c"    # C

    .prologue
    const/4 v3, 0x1

    .line 889
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    .line 917
    :goto_0
    return v3

    .line 891
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPause(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 892
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 893
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 907
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 908
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xbb8

    :goto_1
    int-to-long v4, v0

    .line 907
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 908
    :cond_2
    const/16 v0, 0x7d0

    goto :goto_1

    .line 909
    :cond_3
    invoke-static {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->isWait(C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 910
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    .line 911
    :cond_4
    invoke-static {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->isWild(C)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 912
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    .line 914
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private releaseAllWakeLocks()V
    .locals 2

    .prologue
    .line 1107
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 1108
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1109
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1107
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    monitor-exit v1

    .line 1106
    return-void
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    .line 1097
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 1098
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1099
    const-string/jumbo v0, "releaseWakeLock"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 1100
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1096
    return-void

    .line 1097
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V
    .locals 6
    .param p1, "s"    # Lcom/android/internal/telephony/Connection$PostDialState;

    .prologue
    const/4 v2, 0x4

    .line 1064
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq p1, v1, :cond_0

    .line 1065
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne p1, v1, :cond_2

    .line 1066
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 1067
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1068
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1072
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1073
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1079
    .end local v0    # "msg":Landroid/os/Message;
    :goto_1
    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 1080
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->notifyPostDialListeners()V

    .line 1063
    return-void

    .line 1070
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->acquireWakeLock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1066
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1076
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1077
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->releaseWakeLock()V

    goto :goto_1
.end method


# virtual methods
.method public cancelPostDial()V
    .locals 1

    .prologue
    .line 415
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 414
    return-void
.end method

.method compareTo(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 3
    .param p1, "c"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    const/4 v2, 0x1

    .line 309
    iget-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIsIncoming:Z

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    :goto_0
    if-nez v1, :cond_1

    return v2

    :cond_0
    move v1, v2

    goto :goto_0

    .line 314
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v1, :cond_2

    return v2

    .line 319
    :cond_2
    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v2, p1, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "cAddress":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIsIncoming:Z

    iget-boolean v2, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mAddress:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method disconnectCauseFromCode(I)I
    .locals 7
    .param p1, "causeCode"    # I

    .prologue
    const/16 v6, 0x13

    const/4 v5, 0x2

    .line 441
    sparse-switch p1, :sswitch_data_0

    .line 640
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v1

    .line 641
    .local v1, "phone":Lcom/android/internal/telephony/GsmCdmaPhone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 642
    .local v2, "serviceState":I
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 643
    .local v0, "cardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v3

    .line 645
    .local v3, "uiccAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :goto_0
    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 646
    const/16 v4, 0x11

    return v4

    .line 443
    .end local v0    # "cardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v1    # "phone":Lcom/android/internal/telephony/GsmCdmaPhone;
    .end local v2    # "serviceState":I
    .end local v3    # "uiccAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :sswitch_0
    const/16 v4, 0x3a

    return v4

    .line 446
    :sswitch_1
    const/16 v4, 0x40

    return v4

    .line 449
    :sswitch_2
    const/16 v4, 0x3b

    return v4

    .line 452
    :sswitch_3
    const/16 v4, 0x3c

    return v4

    .line 455
    :sswitch_4
    const/16 v4, 0x3d

    return v4

    .line 458
    :sswitch_5
    const/16 v4, 0x41

    return v4

    .line 461
    :sswitch_6
    const/16 v4, 0x42

    return v4

    .line 464
    :sswitch_7
    const/16 v4, 0x43

    return v4

    .line 467
    :sswitch_8
    const/16 v4, 0x3e

    return v4

    .line 470
    :sswitch_9
    const/4 v4, 0x7

    return v4

    .line 473
    :sswitch_a
    const/16 v4, 0x44

    return v4

    .line 476
    :sswitch_b
    const/16 v4, 0x45

    return v4

    .line 479
    :sswitch_c
    const/16 v4, 0x46

    return v4

    .line 482
    :sswitch_d
    const/16 v4, 0x39

    return v4

    .line 485
    :sswitch_e
    const/16 v4, 0x47

    return v4

    .line 488
    :sswitch_f
    const/16 v4, 0x48

    return v4

    .line 491
    :sswitch_10
    const/16 v4, 0x49

    return v4

    .line 494
    :sswitch_11
    const/16 v4, 0x4a

    return v4

    .line 497
    :sswitch_12
    const/16 v4, 0x4b

    return v4

    .line 500
    :sswitch_13
    const/16 v4, 0x4c

    return v4

    .line 503
    :sswitch_14
    const/16 v4, 0x4d

    return v4

    .line 506
    :sswitch_15
    const/16 v4, 0x4e

    return v4

    .line 509
    :sswitch_16
    const/16 v4, 0x4f

    return v4

    .line 512
    :sswitch_17
    const/16 v4, 0x3f

    return v4

    .line 515
    :sswitch_18
    const/16 v4, 0x50

    return v4

    .line 518
    :sswitch_19
    const/16 v4, 0x51

    return v4

    .line 521
    :sswitch_1a
    const/16 v4, 0x52

    return v4

    .line 524
    :sswitch_1b
    const/16 v4, 0x53

    return v4

    .line 527
    :sswitch_1c
    const/16 v4, 0x54

    return v4

    .line 530
    :sswitch_1d
    const/16 v4, 0x55

    return v4

    .line 533
    :sswitch_1e
    const/16 v4, 0x56

    return v4

    .line 536
    :sswitch_1f
    const/16 v4, 0x57

    return v4

    .line 539
    :sswitch_20
    const/16 v4, 0x58

    return v4

    .line 542
    :sswitch_21
    const/16 v4, 0x59

    return v4

    .line 545
    :sswitch_22
    const/16 v4, 0x5a

    return v4

    .line 548
    :sswitch_23
    const/16 v4, 0x5b

    return v4

    .line 551
    :sswitch_24
    const/16 v4, 0x5c

    return v4

    .line 554
    :sswitch_25
    const/16 v4, 0x5d

    return v4

    .line 557
    :sswitch_26
    const/16 v4, 0x5e

    return v4

    .line 560
    :sswitch_27
    const/16 v4, 0x5f

    return v4

    .line 563
    :sswitch_28
    const/16 v4, 0x60

    return v4

    .line 566
    :sswitch_29
    const/16 v4, 0x61

    return v4

    .line 569
    :sswitch_2a
    const/16 v4, 0x62

    return v4

    .line 572
    :sswitch_2b
    const/16 v4, 0x63

    return v4

    .line 575
    :sswitch_2c
    const/16 v4, 0x66

    return v4

    .line 578
    :sswitch_2d
    const/16 v4, 0x67

    return v4

    .line 581
    :sswitch_2e
    const/16 v4, 0x69

    return v4

    .line 584
    :sswitch_2f
    const/4 v4, 0x4

    return v4

    .line 587
    :sswitch_30
    const/16 v4, 0xf

    return v4

    .line 590
    :sswitch_31
    const/16 v4, 0x14

    return v4

    .line 593
    :sswitch_32
    const/16 v4, 0x15

    return v4

    .line 596
    :sswitch_33
    const/16 v4, 0x19

    return v4

    .line 599
    :sswitch_34
    const/16 v4, 0x2e

    return v4

    .line 602
    :sswitch_35
    const/16 v4, 0x2f

    return v4

    .line 605
    :sswitch_36
    const/16 v4, 0x30

    return v4

    .line 608
    :sswitch_37
    const/16 v4, 0x1a

    return v4

    .line 611
    :sswitch_38
    const/16 v4, 0x1b

    return v4

    .line 614
    :sswitch_39
    const/16 v4, 0x1c

    return v4

    .line 617
    :sswitch_3a
    const/16 v4, 0x1d

    return v4

    .line 620
    :sswitch_3b
    const/16 v4, 0x1e

    return v4

    .line 623
    :sswitch_3c
    const/16 v4, 0x1f

    return v4

    .line 626
    :sswitch_3d
    const/16 v4, 0x20

    return v4

    .line 629
    :sswitch_3e
    const/16 v4, 0x21

    return v4

    .line 632
    :sswitch_3f
    const/16 v4, 0x22

    return v4

    .line 635
    :sswitch_40
    const/16 v4, 0x23

    return v4

    .line 644
    .restart local v0    # "cardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .restart local v1    # "phone":Lcom/android/internal/telephony/GsmCdmaPhone;
    .restart local v2    # "serviceState":I
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .restart local v3    # "uiccAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    goto/16 :goto_0

    .line 648
    :cond_1
    iget-boolean v4, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIsEmergencyCall:Z

    if-nez v4, :cond_5

    .line 653
    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    .line 654
    if-ne v2, v5, :cond_3

    .line 655
    :cond_2
    const/16 v4, 0x12

    return v4

    .line 659
    :cond_3
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v3, v4, :cond_5

    .line 660
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 661
    return v6

    .line 663
    :cond_4
    iget v4, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    if-nez v4, :cond_5

    .line 665
    return v6

    .line 670
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 671
    const v4, 0xffff

    if-ne p1, v4, :cond_8

    .line 672
    iget-object v4, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 673
    const/16 v4, 0x16

    return v4

    .line 674
    :cond_6
    iget-object v4, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 675
    const/16 v4, 0x18

    return v4

    .line 676
    :cond_7
    iget-object v4, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 677
    const/16 v4, 0x17

    return v4

    .line 681
    :cond_8
    const/16 v4, 0x10

    if-ne p1, v4, :cond_9

    .line 682
    return v5

    .line 686
    :cond_9
    const/16 v4, 0x24

    return v4

    .line 441
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_33
        0x3 -> :sswitch_0
        0x6 -> :sswitch_1
        0x8 -> :sswitch_2
        0x11 -> :sswitch_2f
        0x12 -> :sswitch_3
        0x13 -> :sswitch_4
        0x15 -> :sswitch_5
        0x16 -> :sswitch_6
        0x19 -> :sswitch_7
        0x1a -> :sswitch_2e
        0x1b -> :sswitch_8
        0x1c -> :sswitch_9
        0x1d -> :sswitch_a
        0x1e -> :sswitch_b
        0x1f -> :sswitch_c
        0x22 -> :sswitch_d
        0x26 -> :sswitch_e
        0x29 -> :sswitch_f
        0x2a -> :sswitch_10
        0x2b -> :sswitch_11
        0x2c -> :sswitch_12
        0x2f -> :sswitch_13
        0x31 -> :sswitch_14
        0x32 -> :sswitch_15
        0x37 -> :sswitch_16
        0x39 -> :sswitch_17
        0x3a -> :sswitch_18
        0x3f -> :sswitch_19
        0x41 -> :sswitch_1a
        0x44 -> :sswitch_30
        0x45 -> :sswitch_1b
        0x46 -> :sswitch_1c
        0x4f -> :sswitch_1d
        0x51 -> :sswitch_1e
        0x57 -> :sswitch_1f
        0x58 -> :sswitch_20
        0x5b -> :sswitch_21
        0x5f -> :sswitch_22
        0x60 -> :sswitch_23
        0x61 -> :sswitch_24
        0x62 -> :sswitch_25
        0x63 -> :sswitch_26
        0x64 -> :sswitch_27
        0x65 -> :sswitch_28
        0x66 -> :sswitch_29
        0x6f -> :sswitch_2a
        0x7f -> :sswitch_2b
        0xf0 -> :sswitch_31
        0xf1 -> :sswitch_32
        0xf4 -> :sswitch_34
        0xf5 -> :sswitch_35
        0xf6 -> :sswitch_36
        0x145 -> :sswitch_2c
        0x146 -> :sswitch_2d
        0x3e8 -> :sswitch_37
        0x3e9 -> :sswitch_38
        0x3ea -> :sswitch_39
        0x3eb -> :sswitch_3a
        0x3ec -> :sswitch_3b
        0x3ed -> :sswitch_3c
        0x3ee -> :sswitch_3d
        0x3ef -> :sswitch_3e
        0x3f0 -> :sswitch_3f
        0x3f1 -> :sswitch_40
    .end sparse-switch
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->clearPostDialListeners()V

    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaCall;->detach(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    .line 238
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->releaseAllWakeLocks()V

    .line 233
    return-void
.end method

.method fakeHoldBeforeDial()V
    .locals 2

    .prologue
    .line 824
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaCall;->detach(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    .line 828
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 829
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/GsmCdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 831
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->onStartedHolding()V

    .line 823
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 957
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 958
    const-string/jumbo v0, "GsmCdmaConnection"

    const-string/jumbo v1, "[GsmCdmaConn] UNEXPECTED; mPartialWakeLock is held when finalizing."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->clearPostDialListeners()V

    .line 961
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->releaseWakeLock()V

    .line 949
    return-void
.end method

.method public bridge synthetic getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v0

    return-object v0
.end method

.method public getCall()Lcom/android/internal/telephony/GsmCdmaCall;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    return-object v0
.end method

.method public getDisconnectTime()J
    .locals 2

    .prologue
    .line 335
    iget-wide v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnectTime:J

    return-wide v0
.end method

.method getGsmCdmaIndex()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 836
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIndex:I

    if-ltz v0, :cond_0

    .line 837
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 839
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v1, "GsmCdma index not yet assigned"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHoldDurationMillis()J
    .locals 4

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    .line 342
    const-wide/16 v0, 0x0

    return-wide v0

    .line 344
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHoldingStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 1209
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mNumberPresentation:I

    return v0
.end method

.method public getOrigConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    return-object v0
.end method

.method public getOrigDialString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDialString:Ljava/lang/String;

    return-object v0
.end method

.method public getPreciseDisconnectCause()I
    .locals 1

    .prologue
    .line 1218
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPreciseCause:I

    return v0
.end method

.method public getRemainingPostDialString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 923
    invoke-super {p0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v1

    .line 924
    .local v1, "subStr":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 934
    :cond_0
    :goto_0
    return-object v1

    .line 925
    :cond_1
    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 926
    .local v2, "wIndex":I
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 928
    .local v0, "pIndex":I
    if-lez v2, :cond_3

    if-lt v2, v0, :cond_2

    if-gtz v0, :cond_3

    .line 929
    :cond_2
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 930
    :cond_3
    if-lez v0, :cond_0

    .line 931
    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnected:Z

    if-eqz v0, :cond_0

    .line 351
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    return-object v0

    .line 353
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    return-object v0
.end method

.method public getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .locals 1

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    return-object v0
.end method

.method public getVendorDisconnectCause()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mVendorCause:Ljava/lang/String;

    return-object v0
.end method

.method public hangup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnected:Z

    if-nez v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangup(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    .line 358
    return-void

    .line 362
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isMultiparty()Z
    .locals 1

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isMultiparty()Z

    move-result v0

    return v0

    .line 1248
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public migrateFrom(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 1228
    if-nez p1, :cond_0

    return-void

    .line 1230
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Connection;->migrateFrom(Lcom/android/internal/telephony/Connection;)V

    .line 1232
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUUSInfo()Lcom/android/internal/telephony/UUSInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 1234
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->setUserData(Ljava/lang/Object;)V

    .line 1227
    return-void
.end method

.method onConnectedInOrOut()V
    .locals 4

    .prologue
    .line 848
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mConnectTime:J

    .line 849
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mConnectTimeReal:J

    .line 850
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDuration:J

    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConnectedInOrOut: connectTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mConnectTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 858
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIsIncoming:Z

    if-nez v0, :cond_0

    .line 860
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->processNextPostDialChar()V

    .line 847
    :goto_0
    return-void

    .line 864
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->releaseWakeLock()V

    goto :goto_0
.end method

.method public onDisconnect(I)Z
    .locals 5
    .param p1, "cause"    # I

    .prologue
    const/4 v4, 0x0

    .line 703
    const/4 v0, 0x0

    .line 705
    .local v0, "changed":Z
    iput p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    .line 707
    iget-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnected:Z

    if-nez v1, :cond_1

    .line 708
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->doDisconnect()V

    .line 710
    const-string/jumbo v1, "GsmCdmaConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDisconnect: cause="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyDisconnect(Lcom/android/internal/telephony/Connection;)V

    .line 714
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eqz v1, :cond_0

    .line 715
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/GsmCdmaCall;->connectionDisconnected(Lcom/android/internal/telephony/GsmCdmaConnection;)Z

    move-result v0

    .line 718
    .end local v0    # "changed":Z
    :cond_0
    iput-object v4, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    .line 720
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->clearPostDialListeners()V

    .line 721
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->releaseWakeLock()V

    .line 722
    return v0
.end method

.method onHangupLocal()V
    .locals 1

    .prologue
    .line 425
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    .line 426
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPreciseCause:I

    .line 427
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mVendorCause:Ljava/lang/String;

    .line 424
    return-void
.end method

.method onLocalDisconnect()V
    .locals 2

    .prologue
    .line 729
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnected:Z

    if-nez v0, :cond_0

    .line 730
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->doDisconnect()V

    .line 731
    const-string/jumbo v0, "GsmCdmaConnection"

    const-string/jumbo v1, "onLoalDisconnect"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaCall;->detach(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    .line 737
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->releaseWakeLock()V

    .line 728
    return-void
.end method

.method onRemoteDisconnect(ILjava/lang/String;)V
    .locals 1
    .param p1, "causeCode"    # I
    .param p2, "vendorCause"    # Ljava/lang/String;

    .prologue
    .line 692
    iput p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPreciseCause:I

    .line 693
    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mVendorCause:Ljava/lang/String;

    .line 694
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->disconnectCauseFromCode(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->onDisconnect(I)Z

    .line 691
    return-void
.end method

.method onStartedHolding()V
    .locals 2

    .prologue
    .line 879
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHoldingStartTime:J

    .line 878
    return-void
.end method

.method public proceedAfterWaitChar()V
    .locals 3

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    .line 378
    const-string/jumbo v0, "GsmCdmaConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GsmCdmaConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WAIT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 379
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 378
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return-void

    .line 383
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 385
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->processNextPostDialChar()V

    .line 376
    return-void
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 390
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v1, v2, :cond_0

    .line 391
    const-string/jumbo v1, "GsmCdmaConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GsmCdmaConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WILD but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 392
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 391
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    return-void

    .line 396
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 402
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialString:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mNextPostDialChar:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialString:Ljava/lang/String;

    .line 404
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mNextPostDialChar:I

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "proceedAfterWildChar: new postDialString is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 407
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialString:Ljava/lang/String;

    .line 406
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 410
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->processNextPostDialChar()V

    .line 389
    return-void
.end method

.method public separate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnected:Z

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->separate(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    .line 367
    return-void

    .line 371
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public update(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 7
    .param p1, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    .line 744
    const/4 v0, 0x0

    .line 745
    .local v0, "changed":Z
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isConnectingInOrOut()Z

    move-result v3

    .line 746
    .local v3, "wasConnectingInOrOut":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_5

    const/4 v4, 0x1

    .line 748
    .local v4, "wasHolding":Z
    :goto_0
    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/GsmCdmaConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v1

    .line 750
    .local v1, "newParent":Lcom/android/internal/telephony/GsmCdmaCall;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parent= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", newParent= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 753
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v5, :cond_6

    .line 754
    const-string/jumbo v5, "update: mOrigConnection is not null"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 766
    :cond_0
    :goto_1
    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 767
    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCnapName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 768
    const/4 v0, 0x1

    .line 769
    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCnapName:Ljava/lang/String;

    .line 776
    :cond_1
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "--dssds----"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCnapName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 777
    iget v5, p1, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v5, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCnapNamePresentation:I

    .line 778
    iget v5, p1, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v5, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mNumberPresentation:I

    .line 780
    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eq v1, v5, :cond_9

    .line 781
    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eqz v5, :cond_2

    .line 782
    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/GsmCdmaCall;->detach(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    .line 784
    :cond_2
    invoke-virtual {v1, p0, p1}, Lcom/android/internal/telephony/GsmCdmaCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    .line 785
    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 786
    const/4 v0, 0x1

    .line 796
    .end local v0    # "changed":Z
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update: parent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 797
    const-string/jumbo v6, ", hasNewParent="

    .line 796
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 797
    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eq v1, v5, :cond_b

    const/4 v5, 0x1

    .line 796
    :goto_4
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 798
    const-string/jumbo v6, ", wasConnectingInOrOut="

    .line 796
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 799
    const-string/jumbo v6, ", wasHolding="

    .line 796
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 800
    const-string/jumbo v6, ", isConnectingInOrOut="

    .line 796
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 800
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isConnectingInOrOut()Z

    move-result v6

    .line 796
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 801
    const-string/jumbo v6, ", changed="

    .line 796
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 795
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 804
    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isConnectingInOrOut()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 808
    :cond_3
    :goto_5
    if-eqz v0, :cond_4

    if-eqz v4, :cond_d

    .line 813
    :cond_4
    :goto_6
    return v0

    .line 746
    .end local v1    # "newParent":Lcom/android/internal/telephony/GsmCdmaCall;
    .end local v4    # "wasHolding":Z
    .restart local v0    # "changed":Z
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "wasHolding":Z
    goto/16 :goto_0

    .line 756
    .restart local v1    # "newParent":Lcom/android/internal/telephony/GsmCdmaCall;
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " mNumberConverted "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mNumberConverted:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 757
    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mAddress:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/internal/telephony/GsmCdmaConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mNumberConverted:Z

    if-eqz v5, :cond_7

    .line 758
    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mConvertedNumber:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/internal/telephony/GsmCdmaConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 759
    :cond_7
    const-string/jumbo v5, "update: phone # changed!"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 760
    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mAddress:Ljava/lang/String;

    .line 761
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 771
    :cond_8
    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCnapName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 772
    const/4 v0, 0x1

    .line 773
    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCnapName:Ljava/lang/String;

    goto/16 :goto_2

    .line 789
    :cond_9
    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v5, p0, p1}, Lcom/android/internal/telephony/GsmCdmaCall;->update(Lcom/android/internal/telephony/GsmCdmaConnection;Lcom/android/internal/telephony/DriverCall;)Z

    move-result v2

    .line 790
    .local v2, "parentStateChange":Z
    if-nez v0, :cond_a

    move v0, v2

    .local v0, "changed":Z
    goto/16 :goto_3

    .local v0, "changed":Z
    :cond_a
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 797
    .end local v0    # "changed":Z
    .end local v2    # "parentStateChange":Z
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 805
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->onConnectedInOrOut()V

    goto :goto_5

    .line 808
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_4

    .line 810
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->onStartedHolding()V

    goto :goto_6
.end method

.method public updateParent(Lcom/android/internal/telephony/GsmCdmaCall;Lcom/android/internal/telephony/GsmCdmaCall;)V
    .locals 1
    .param p1, "oldParent"    # Lcom/android/internal/telephony/GsmCdmaCall;
    .param p2, "newParent"    # Lcom/android/internal/telephony/GsmCdmaCall;

    .prologue
    .line 939
    if-eq p2, p1, :cond_1

    .line 940
    if-eqz p1, :cond_0

    .line 941
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/GsmCdmaCall;->detach(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    .line 943
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p2, p0, v0}, Lcom/android/internal/telephony/GsmCdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 944
    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 938
    :cond_1
    return-void
.end method
