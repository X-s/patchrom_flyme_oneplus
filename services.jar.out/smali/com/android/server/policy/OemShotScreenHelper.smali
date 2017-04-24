.class public Lcom/android/server/policy/OemShotScreenHelper;
.super Ljava/lang/Object;
.source "OemShotScreenHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OemShotScreenHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

.field mScreenshotConnection:Landroid/content/ServiceConnection;

.field final mScreenshotLock:Ljava/lang/Object;

.field final mScreenshotTimeout:Ljava/lang/Runnable;

.field private mShotDirection:I

.field private mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v1, p0, Lcom/android/server/policy/OemShotScreenHelper;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 24
    iput-object v1, p0, Lcom/android/server/policy/OemShotScreenHelper;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/OemShotScreenHelper;->mShotDirection:I

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/OemShotScreenHelper;->mScreenshotLock:Ljava/lang/Object;

    .line 33
    iput-object v1, p0, Lcom/android/server/policy/OemShotScreenHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 35
    new-instance v0, Lcom/android/server/policy/OemShotScreenHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemShotScreenHelper$1;-><init>(Lcom/android/server/policy/OemShotScreenHelper;)V

    iput-object v0, p0, Lcom/android/server/policy/OemShotScreenHelper;->mScreenshotTimeout:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/OemShotScreenHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemShotScreenHelper;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/server/policy/OemShotScreenHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/OemShotScreenHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemShotScreenHelper;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/server/policy/OemShotScreenHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/OemShotScreenHelper;)Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemShotScreenHelper;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/server/policy/OemShotScreenHelper;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/OemShotScreenHelper;)Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemShotScreenHelper;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/server/policy/OemShotScreenHelper;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method private takeScreenshot()V
    .locals 8

    .prologue
    .line 50
    iget-object v4, p0, Lcom/android/server/policy/OemShotScreenHelper;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v4

    .line 51
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/OemShotScreenHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v3, :cond_0

    .line 52
    monitor-exit v4

    .line 106
    :goto_0
    return-void

    .line 54
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.systemui"

    const-string v5, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 57
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 58
    const-string v3, "direction"

    iget v5, p0, Lcom/android/server/policy/OemShotScreenHelper;->mShotDirection:I

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    new-instance v1, Lcom/android/server/policy/OemShotScreenHelper$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/OemShotScreenHelper$2;-><init>(Lcom/android/server/policy/OemShotScreenHelper;)V

    .line 100
    .local v1, "conn":Landroid/content/ServiceConnection;
    iget-object v3, p0, Lcom/android/server/policy/OemShotScreenHelper;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v1, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    iput-object v1, p0, Lcom/android/server/policy/OemShotScreenHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 103
    iget-object v3, p0, Lcom/android/server/policy/OemShotScreenHelper;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/OemShotScreenHelper;->mScreenshotTimeout:Ljava/lang/Runnable;

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    :cond_1
    monitor-exit v4

    goto :goto_0

    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "conn":Landroid/content/ServiceConnection;
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public init(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/server/policy/OemShotScreenHelper;->mHandler:Landroid/os/Handler;

    .line 29
    iput-object p2, p0, Lcom/android/server/policy/OemShotScreenHelper;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method public shotScreen(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;I)V
    .locals 0
    .param p1, "statusBar"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "navigationBar"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p3, "direction"    # I

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/server/policy/OemShotScreenHelper;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 110
    iput-object p2, p0, Lcom/android/server/policy/OemShotScreenHelper;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 111
    iput p3, p0, Lcom/android/server/policy/OemShotScreenHelper;->mShotDirection:I

    .line 112
    invoke-direct {p0}, Lcom/android/server/policy/OemShotScreenHelper;->takeScreenshot()V

    .line 113
    return-void
.end method
