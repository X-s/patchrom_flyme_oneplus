.class public Lcom/oneplus/settings/utils/OPZenModeUtils;
.super Ljava/lang/Object;
.source "OPZenModeUtils.java"


# static fields
.field private static final IGNORE_TIME_VALUE:Ljava/lang/Long;

.field private static final ZEN_MODE_ALARMS:I = 0x1

.field private static final ZEN_MODE_IMPORTANT_INTERRUPTIONS:I = 0x2

.field private static final ZEN_MODE_OFF:I = 0x3

.field private static mOPZenModeUtils:Lcom/oneplus/settings/utils/OPZenModeUtils;


# instance fields
.field DateTime:Ljava/util/Date;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mRun:Ljava/lang/Runnable;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mZenMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/utils/OPZenModeUtils;->IGNORE_TIME_VALUE:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/utils/OPZenModeUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/utils/OPZenModeUtils;->mZenMode:I

    .line 21
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/utils/OPZenModeUtils;->DateTime:Ljava/util/Date;

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/utils/OPZenModeUtils;->mHandler:Landroid/os/Handler;

    .line 24
    new-instance v0, Lcom/oneplus/settings/utils/OPZenModeUtils$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/utils/OPZenModeUtils$1;-><init>(Lcom/oneplus/settings/utils/OPZenModeUtils;)V

    iput-object v0, p0, Lcom/oneplus/settings/utils/OPZenModeUtils;->mRun:Ljava/lang/Runnable;

    .line 34
    iput-object p1, p0, Lcom/oneplus/settings/utils/OPZenModeUtils;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/settings/utils/OPZenModeUtils;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    sget-object v0, Lcom/oneplus/settings/utils/OPZenModeUtils;->mOPZenModeUtils:Lcom/oneplus/settings/utils/OPZenModeUtils;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/oneplus/settings/utils/OPZenModeUtils;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/utils/OPZenModeUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/settings/utils/OPZenModeUtils;->mOPZenModeUtils:Lcom/oneplus/settings/utils/OPZenModeUtils;

    .line 41
    :cond_0
    sget-object v0, Lcom/oneplus/settings/utils/OPZenModeUtils;->mOPZenModeUtils:Lcom/oneplus/settings/utils/OPZenModeUtils;

    return-object v0
.end method


# virtual methods
.method public sendAppTracker()V
    .locals 6

    .prologue
    .line 50
    iget-object v3, p0, Lcom/oneplus/settings/utils/OPZenModeUtils;->mContext:Landroid/content/Context;

    const-string v4, "App_Tracker"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/utils/OPZenModeUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 51
    iget-object v3, p0, Lcom/oneplus/settings/utils/OPZenModeUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 52
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd  HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 53
    .local v2, "sDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "date":Ljava/lang/String;
    iget-object v3, p0, Lcom/oneplus/settings/utils/OPZenModeUtils;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v3

    iput v3, p0, Lcom/oneplus/settings/utils/OPZenModeUtils;->mZenMode:I

    .line 55
    iget v3, p0, Lcom/oneplus/settings/utils/OPZenModeUtils;->mZenMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 56
    const-string v3, "zen_mode_alarms"

    invoke-static {v3, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    :goto_0
    const-string v3, "zen_mode"

    iget v4, p0, Lcom/oneplus/settings/utils/OPZenModeUtils;->mZenMode:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 64
    return-void

    .line 57
    :cond_1
    iget v3, p0, Lcom/oneplus/settings/utils/OPZenModeUtils;->mZenMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 58
    const-string v3, "zen_mode_important_interruptions"

    invoke-static {v3, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_2
    iget v3, p0, Lcom/oneplus/settings/utils/OPZenModeUtils;->mZenMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 60
    const-string v3, "zen_mode_off"

    invoke-static {v3, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendAppTrackerDelay()V
    .locals 4

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oneplus/settings/utils/OPZenModeUtils;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/settings/utils/OPZenModeUtils;->mRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 46
    iget-object v0, p0, Lcom/oneplus/settings/utils/OPZenModeUtils;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/settings/utils/OPZenModeUtils;->mRun:Ljava/lang/Runnable;

    sget-object v2, Lcom/oneplus/settings/utils/OPZenModeUtils;->IGNORE_TIME_VALUE:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    return-void
.end method
