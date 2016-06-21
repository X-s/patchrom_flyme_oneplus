.class public Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;
.super Lcom/android/systemui_ex/controlpanel/qs/QSTile;
.source "OPCellularTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MobileDataObserver;,
        Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MyHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui_ex/controlpanel/qs/QSTile",
        "<",
        "Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mHandler:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MyHandler;

.field private mIsCurrentEnabled:Z

.field private mListening:Z

.field private mMobileDataObserver:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MobileDataObserver;

.field private mStateBeforeAirplaneMode:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->showLogs()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V

    .line 55
    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MyHandler;-><init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$1;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mHandler:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MyHandler;

    .line 209
    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$3;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$3;-><init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mContentResolver:Landroid/content/ContentResolver;

    .line 62
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 63
    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MobileDataObserver;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mHandler:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MobileDataObserver;-><init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mMobileDataObserver:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MobileDataObserver;

    .line 64
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->getLastMobileDataState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mIsCurrentEnabled:Z

    .line 65
    iget-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mIsCurrentEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mStateBeforeAirplaneMode:Z

    .line 66
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->setMobileData(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->refreshState()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->refreshState()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->refreshState()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1402(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mStateBeforeAirplaneMode:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->refreshState()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->onMobileDataStateChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->handleClickInner()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mIsCurrentEnabled:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mIsCurrentEnabled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->getLastMobileDataState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->refreshState()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->isMSim()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private getLastMobileDataState()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 297
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->isMSim()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 298
    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "mobile_data0"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 299
    .local v0, "sim0":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "mobile_data1"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 301
    .local v1, "sim1":Z
    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_3

    .line 304
    .end local v0    # "sim0":Z
    .end local v1    # "sim1":Z
    :cond_0
    :goto_2
    return v2

    :cond_1
    move v0, v3

    .line 298
    goto :goto_0

    .restart local v0    # "sim0":Z
    :cond_2
    move v1, v3

    .line 299
    goto :goto_1

    .restart local v1    # "sim1":Z
    :cond_3
    move v2, v3

    .line 302
    goto :goto_2

    .line 304
    .end local v0    # "sim0":Z
    .end local v1    # "sim1":Z
    :cond_4
    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "mobile_data0"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_2
.end method

.method private handleClickInner()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1f4

    const/4 v0, 0x0

    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 144
    invoke-direct {p0, v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->onMobileDataStateChanged(Z)V

    .line 145
    iget-boolean v2, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mIsCurrentEnabled:Z

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mIsCurrentEnabled:Z

    .line 146
    sget-boolean v0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OPCellularTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleClick:mIsCurrentEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mIsCurrentEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mIsCurrentEnabled:Z

    if-eqz v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mHandler:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MyHandler;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MyHandler;->removeMessages(I)V

    .line 150
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mHandler:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MyHandler;

    invoke-virtual {v0, v4}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MyHandler;->removeMessages(I)V

    .line 151
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mHandler:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MyHandler;

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 158
    :goto_0
    return-void

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mHandler:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MyHandler;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MyHandler;->removeMessages(I)V

    .line 155
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mHandler:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MyHandler;

    invoke-virtual {v0, v4}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MyHandler;->removeMessages(I)V

    .line 156
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mHandler:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MyHandler;

    invoke-virtual {v0, v4, v6, v7}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 288
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isMSim()Z
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onMobileDataStateChanged(Z)V
    .locals 3
    .param p1, "isResumeFromAirplaneMode"    # Z

    .prologue
    .line 197
    if-eqz p1, :cond_0

    .line 198
    iget-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mStateBeforeAirplaneMode:Z

    iput-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mIsCurrentEnabled:Z

    .line 199
    sget-boolean v0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPCellularTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isResumeFromAirplaneMode => onMobileDataStateChanged:mIsCurrentEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mIsCurrentEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->refreshState()V

    .line 206
    return-void
.end method

.method private setMobileData(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 161
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->isMSim()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 163
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 164
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    aget v2, v1, v4

    if-lez v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    aget v3, v1, v4

    invoke-virtual {v2, v3, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 162
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    .end local v1    # "subId":[I
    :cond_1
    sget-boolean v2, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "OPCellularTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMobileData:enable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 171
    :cond_3
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method protected handleClick()V
    .locals 3

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->isAirplaneModeOn()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->refreshState()V

    .line 140
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oem.ctaSwitch.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    iget-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mIsCurrentEnabled:Z

    if-nez v1, :cond_2

    .line 118
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 119
    .local v0, "dialog":Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0196

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 120
    const v1, 0x1040013

    new-instance v2, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$1;

    invoke-direct {v2, p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$1;-><init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 126
    const v1, 0x1040009

    new-instance v2, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$2;

    invoke-direct {v2, p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$2;-><init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 131
    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;->show()V

    goto :goto_0

    .line 134
    .end local v0    # "dialog":Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->handleClickInner()V

    goto :goto_0

    .line 138
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->handleClickInner()V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 177
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00f6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 178
    const v0, 0x7f020152

    iput v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->iconId:I

    .line 180
    sget-boolean v0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPCellularTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUpdateState:mIsCurrentEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mIsCurrentEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->isAirplaneModeOn()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    if-nez v0, :cond_3

    .line 183
    :cond_1
    sget-boolean v0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "OPCellularTile"

    const-string v1, "can\'t detect any SIM card on the device or it\'s in airplane mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_2
    iput-boolean v3, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    .line 194
    :goto_0
    return-void

    .line 189
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mIsCurrentEnabled:Z

    if-eqz v0, :cond_4

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    goto :goto_0

    .line 192
    :cond_4
    iput-boolean v3, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    goto :goto_0
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 41
    check-cast p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    .end local p1    # "x0":Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->handleUpdateState(Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected isShortcutTile()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method protected newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 4
    .param p1, "listening"    # Z

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mListening:Z

    if-ne v0, p1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 97
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mListening:Z

    .line 98
    if-eqz p1, :cond_1

    .line 99
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mMobileDataObserver:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MobileDataObserver;

    invoke-virtual {v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MobileDataObserver;->startObserving()V

    .line 100
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->getLastMobileDataState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mIsCurrentEnabled:Z

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mMobileDataObserver:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MobileDataObserver;

    invoke-virtual {v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MobileDataObserver;->endObserving()V

    .line 105
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
