.class public Lcom/android/settings_ex/BatteryInfo;
.super Landroid/app/Activity;
.source "BatteryInfo.java"


# static fields
.field private static final EVENT_TICK:I = 0x1


# instance fields
.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mHandler:Landroid/os/Handler;

.field private mHealth:Landroid/widget/TextView;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLevel:Landroid/widget/TextView;

.field private mPower:Landroid/widget/TextView;

.field private mScale:Landroid/widget/TextView;

.field private mScreenStats:Landroid/os/IPowerManager;

.field private mStatus:Landroid/widget/TextView;

.field private mTechnology:Landroid/widget/TextView;

.field private mTemperature:Landroid/widget/TextView;

.field private mUptime:Landroid/widget/TextView;

.field private mVoltage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    new-instance v0, Lcom/android/settings_ex/BatteryInfo$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/BatteryInfo$1;-><init>(Lcom/android/settings_ex/BatteryInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/BatteryInfo;->mHandler:Landroid/os/Handler;

    .line 80
    new-instance v0, Lcom/android/settings_ex/BatteryInfo$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/BatteryInfo$2;-><init>(Lcom/android/settings_ex/BatteryInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/BatteryInfo;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/BatteryInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/BatteryInfo;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings_ex/BatteryInfo;->updateBatteryStats()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/BatteryInfo;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/BatteryInfo;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings_ex/BatteryInfo;->mLevel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/BatteryInfo;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/BatteryInfo;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings_ex/BatteryInfo;->mScale:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/BatteryInfo;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/BatteryInfo;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings_ex/BatteryInfo;->mVoltage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/BatteryInfo;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/BatteryInfo;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings_ex/BatteryInfo;->tenthsToFixedString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/BatteryInfo;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/BatteryInfo;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings_ex/BatteryInfo;->mTemperature:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/BatteryInfo;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/BatteryInfo;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings_ex/BatteryInfo;->mTechnology:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/BatteryInfo;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/BatteryInfo;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings_ex/BatteryInfo;->mStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/BatteryInfo;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/BatteryInfo;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings_ex/BatteryInfo;->mPower:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/BatteryInfo;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/BatteryInfo;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings_ex/BatteryInfo;->mHealth:Landroid/widget/TextView;

    return-object v0
.end method

.method private final tenthsToFixedString(I)Ljava/lang/String;
    .locals 3
    .param p1, "x"    # I

    .prologue
    .line 70
    div-int/lit8 v0, p1, 0xa

    .line 72
    .local v0, "tens":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    mul-int/lit8 v2, v0, 0xa

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateBatteryStats()V
    .locals 6

    .prologue
    .line 190
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 191
    .local v0, "uptime":J
    iget-object v2, p0, Lcom/android/settings_ex/BatteryInfo;->mUptime:Landroid/widget/TextView;

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 148
    const v0, 0x7f04008c

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/BatteryInfo;->setContentView(I)V

    .line 152
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/BatteryInfo;->mIntentFilter:Landroid/content/IntentFilter;

    .line 153
    iget-object v0, p0, Lcom/android/settings_ex/BatteryInfo;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 182
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 183
    iget-object v0, p0, Lcom/android/settings_ex/BatteryInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 186
    iget-object v0, p0, Lcom/android/settings_ex/BatteryInfo;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/BatteryInfo;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 187
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 158
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 160
    const v0, 0x7f120059

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/BatteryInfo;->mStatus:Landroid/widget/TextView;

    .line 161
    const v0, 0x7f120105

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/BatteryInfo;->mPower:Landroid/widget/TextView;

    .line 162
    const v0, 0x7f120106

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/BatteryInfo;->mLevel:Landroid/widget/TextView;

    .line 163
    const v0, 0x7f120107

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/BatteryInfo;->mScale:Landroid/widget/TextView;

    .line 164
    const v0, 0x7f120108

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/BatteryInfo;->mHealth:Landroid/widget/TextView;

    .line 165
    const v0, 0x7f12010b

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/BatteryInfo;->mTechnology:Landroid/widget/TextView;

    .line 166
    const v0, 0x7f120109

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/BatteryInfo;->mVoltage:Landroid/widget/TextView;

    .line 167
    const v0, 0x7f12010a

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/BatteryInfo;->mTemperature:Landroid/widget/TextView;

    .line 168
    const v0, 0x7f12010c

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/BatteryInfo;->mUptime:Landroid/widget/TextView;

    .line 171
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/BatteryInfo;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 173
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/BatteryInfo;->mScreenStats:Landroid/os/IPowerManager;

    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/BatteryInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 177
    iget-object v0, p0, Lcom/android/settings_ex/BatteryInfo;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings_ex/BatteryInfo;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/BatteryInfo;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 178
    return-void
.end method
