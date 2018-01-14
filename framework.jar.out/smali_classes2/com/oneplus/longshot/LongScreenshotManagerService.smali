.class public Lcom/oneplus/longshot/LongScreenshotManagerService;
.super Lcom/oneplus/longshot/ILongScreenshotManager$Stub;
.source "LongScreenshotManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;
    }
.end annotation


# static fields
.field private static final COMPONENT_LONGSHOT:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String; = "Longshot.ManagerService"

.field private static sInstance:Lcom/oneplus/longshot/LongScreenshotManagerService;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLongshot:Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;


# direct methods
.method static synthetic -get0(Lcom/oneplus/longshot/LongScreenshotManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Landroid/content/ComponentName;

    .line 29
    const-string/jumbo v1, "com.oneplus.screenshot"

    .line 30
    const-string/jumbo v2, "com.oneplus.screenshot.LongshotService"

    .line 28
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/longshot/LongScreenshotManagerService;->COMPONENT_LONGSHOT:Landroid/content/ComponentName;

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/longshot/LongScreenshotManagerService;->sInstance:Lcom/oneplus/longshot/LongScreenshotManagerService;

    .line 21
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Lcom/oneplus/longshot/ILongScreenshotManager$Stub;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/oneplus/longshot/LongScreenshotManagerService;->mContext:Landroid/content/Context;

    .line 42
    new-instance v0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;-><init>(Lcom/oneplus/longshot/LongScreenshotManagerService;Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;)V

    iput-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManagerService;->mLongshot:Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;

    .line 48
    iput-object p1, p0, Lcom/oneplus/longshot/LongScreenshotManagerService;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method private bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 3
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I

    .prologue
    .line 167
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 168
    :cond_0
    const-string/jumbo v0, "Longshot.ManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "--- bind failed: service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", conn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v0, 0x0

    return v0

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method private createIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 157
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private createLongshotIntent(ZZ)Landroid/content/Intent;
    .locals 2
    .param p1, "statusBarVisible"    # Z
    .param p2, "navBarVisible"    # Z

    .prologue
    .line 161
    sget-object v0, Lcom/oneplus/longshot/LongScreenshotManagerService;->COMPONENT_LONGSHOT:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/oneplus/longshot/LongScreenshotManagerService;->createIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 162
    const-string/jumbo v1, "statusbar_visible"

    .line 161
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 163
    const-string/jumbo v1, "navigationbar_visible"

    .line 161
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/longshot/LongScreenshotManagerService;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    sget-object v0, Lcom/oneplus/longshot/LongScreenshotManagerService;->sInstance:Lcom/oneplus/longshot/LongScreenshotManagerService;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/oneplus/longshot/LongScreenshotManagerService;

    invoke-direct {v0, p0}, Lcom/oneplus/longshot/LongScreenshotManagerService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/longshot/LongScreenshotManagerService;->sInstance:Lcom/oneplus/longshot/LongScreenshotManagerService;

    .line 58
    :cond_0
    sget-object v0, Lcom/oneplus/longshot/LongScreenshotManagerService;->sInstance:Lcom/oneplus/longshot/LongScreenshotManagerService;

    return-object v0
.end method


# virtual methods
.method public isLongshotHandleState()Z
    .locals 5

    .prologue
    .line 108
    const/4 v2, 0x0

    .line 110
    .local v2, "result":Z
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/longshot/LongScreenshotManagerService;->mLongshot:Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;

    invoke-static {v3}, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->-get0(Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;)Lcom/oneplus/longshot/ILongScreenshot;

    move-result-object v3

    invoke-interface {v3}, Lcom/oneplus/longshot/ILongScreenshot;->isHandleState()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 116
    .end local v2    # "result":Z
    :goto_0
    return v2

    .line 113
    .restart local v2    # "result":Z
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "Longshot.ManagerService"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isLongshotMode()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManagerService;->mLongshot:Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;

    invoke-static {v0}, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->-get0(Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;)Lcom/oneplus/longshot/ILongScreenshot;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLongshotMoveState()Z
    .locals 5

    .prologue
    .line 95
    const/4 v2, 0x0

    .line 97
    .local v2, "result":Z
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/longshot/LongScreenshotManagerService;->mLongshot:Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;

    invoke-static {v3}, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->-get0(Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;)Lcom/oneplus/longshot/ILongScreenshot;

    move-result-object v3

    invoke-interface {v3}, Lcom/oneplus/longshot/ILongScreenshot;->isMoveState()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 103
    .end local v2    # "result":Z
    :goto_0
    return v2

    .line 100
    .restart local v2    # "result":Z
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "Longshot.ManagerService"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public notifyLongshotScroll(Z)V
    .locals 4
    .param p1, "isOverScroll"    # Z

    .prologue
    .line 85
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/longshot/LongScreenshotManagerService;->mLongshot:Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;

    invoke-static {v2}, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->-get0(Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;)Lcom/oneplus/longshot/ILongScreenshot;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/oneplus/longshot/ILongScreenshot;->notifyScroll(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "Longshot.ManagerService"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public notifyScrollViewTop(I)V
    .locals 4
    .param p1, "viewTop"    # I

    .prologue
    .line 127
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/longshot/LongScreenshotManagerService;->mLongshot:Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;

    invoke-static {v2}, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->-get0(Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;)Lcom/oneplus/longshot/ILongScreenshot;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/oneplus/longshot/ILongScreenshot;->notifyScrollViewTop(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "Longshot.ManagerService"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 128
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public registerLongshotListener(Lcom/oneplus/longshot/ILongScreenshotListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/longshot/ILongScreenshotListener;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManagerService;->mLongshot:Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;

    invoke-virtual {v0, p1}, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->registerListener(Lcom/oneplus/longshot/ILongScreenshotListener;)V

    .line 73
    return-void
.end method

.method public stopLongshot()V
    .locals 3

    .prologue
    .line 143
    iget-object v1, p0, Lcom/oneplus/longshot/LongScreenshotManagerService;->mLongshot:Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;

    invoke-static {v1}, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->-get0(Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;)Lcom/oneplus/longshot/ILongScreenshot;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 144
    const-string/jumbo v1, "Longshot.ManagerService"

    const-string/jumbo v2, "stopLongshot"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/longshot/LongScreenshotManagerService;->mLongshot:Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;

    invoke-static {v1}, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->-get0(Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;)Lcom/oneplus/longshot/ILongScreenshot;

    move-result-object v1

    invoke-interface {v1}, Lcom/oneplus/longshot/ILongScreenshot;->stopLongshot()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Longshot.ManagerService"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public takeLongshot(ZZ)V
    .locals 4
    .param p1, "statusBarVisible"    # Z
    .param p2, "navBarVisible"    # Z

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/oneplus/longshot/LongScreenshotManagerService;->stopLongshot()V

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/oneplus/longshot/LongScreenshotManagerService;->createLongshotIntent(ZZ)Landroid/content/Intent;

    move-result-object v1

    .line 68
    iget-object v2, p0, Lcom/oneplus/longshot/LongScreenshotManagerService;->mLongshot:Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;

    const/4 v3, 0x1

    .line 67
    invoke-direct {p0, v1, v2, v3}, Lcom/oneplus/longshot/LongScreenshotManagerService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 69
    .local v0, "result":Z
    const-string/jumbo v1, "Longshot.ManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start : bindService="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method public unregisterLongshotListener(Lcom/oneplus/longshot/ILongScreenshotListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/longshot/ILongScreenshotListener;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManagerService;->mLongshot:Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;

    invoke-virtual {v0, p1}, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->unregisterListener(Lcom/oneplus/longshot/ILongScreenshotListener;)V

    .line 78
    return-void
.end method
