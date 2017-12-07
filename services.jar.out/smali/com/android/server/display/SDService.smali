.class public final Lcom/android/server/display/SDService;
.super Landroid/hardware/display/ISDService$Stub;
.source "SDService.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mNativeObject:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "SDService"

    sput-object v0, Lcom/android/server/display/SDService;->TAG:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/hardware/display/ISDService$Stub;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/server/display/SDService;->mContext:Landroid/content/Context;

    .line 31
    invoke-static {}, Lcom/android/server/display/SDService;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/SDService;->mNativeObject:J

    .line 29
    return-void
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeDestory(J)V
.end method

.method private static native nativeEnableColorBalance(I)V
.end method

.method private static native nativeEnableMode(I)V
.end method

.method private static native nativeSetUsrColorBalanceConfig(DDD)V
.end method

.method private static native nativeSetUsrSharpness(JI)V
.end method


# virtual methods
.method public SetUsrColorBalanceConfig(DDD)V
    .locals 1
    .param p1, "Red"    # D
    .param p3, "Green"    # D
    .param p5, "Blue"    # D

    .prologue
    .line 49
    invoke-static/range {p1 .. p6}, Lcom/android/server/display/SDService;->nativeSetUsrColorBalanceConfig(DDD)V

    .line 48
    return-void
.end method

.method public SetUsrSharpness(I)V
    .locals 2
    .param p1, "sharpness"    # I

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/android/server/display/SDService;->mNativeObject:J

    invoke-static {v0, v1, p1}, Lcom/android/server/display/SDService;->nativeSetUsrSharpness(JI)V

    .line 53
    return-void
.end method

.method public enableColorBalance(I)V
    .locals 0
    .param p1, "seekbar"    # I

    .prologue
    .line 44
    invoke-static {p1}, Lcom/android/server/display/SDService;->nativeEnableColorBalance(I)V

    .line 43
    return-void
.end method

.method public enableMode(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 39
    invoke-static {p1}, Lcom/android/server/display/SDService;->nativeEnableMode(I)V

    .line 38
    return-void
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 60
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/display/SDService;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 61
    iget-wide v0, p0, Lcom/android/server/display/SDService;->mNativeObject:J

    invoke-static {v0, v1}, Lcom/android/server/display/SDService;->nativeDestory(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_0
    invoke-super {p0}, Landroid/hardware/display/ISDService$Stub;->finalize()V

    .line 58
    return-void

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    invoke-super {p0}, Landroid/hardware/display/ISDService$Stub;->finalize()V

    .line 63
    throw v0
.end method

.method public systemRunning()V
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcom/android/server/display/SDService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "[systemRunning]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method
