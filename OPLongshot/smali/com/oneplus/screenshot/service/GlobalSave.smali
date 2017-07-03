.class public Lcom/oneplus/screenshot/service/GlobalSave;
.super Ljava/lang/Object;
.source "GlobalSave.java"

# interfaces
.implements Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;


# static fields
.field private static final NOTIFICATION_ID_REPEAT:I = 0x3e8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mCachable:Lcom/oneplus/screenshot/util/Cachable;

.field private mContext:Landroid/content/Context;

.field private mNotificationId:I

.field private mSaveTask:Lcom/oneplus/screenshot/service/SaveTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Longshot."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/oneplus/screenshot/service/GlobalSave;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/screenshot/service/GlobalSave;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mContext:Landroid/content/Context;

    .line 27
    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mBundle:Landroid/os/Bundle;

    .line 28
    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mCachable:Lcom/oneplus/screenshot/util/Cachable;

    .line 29
    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mSaveTask:Lcom/oneplus/screenshot/service/SaveTask;

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mNotificationId:I

    .line 36
    iput-object p1, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mBundle:Landroid/os/Bundle;

    .line 38
    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/oneplus/screenshot/ScreenshotApplication;

    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mCachable:Lcom/oneplus/screenshot/util/Cachable;

    .line 39
    return-void
.end method

.method private nextNotificationId()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mNotificationId:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method private onFinished()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 76
    sget-object v0, Lcom/oneplus/screenshot/service/GlobalSave;->TAG:Ljava/lang/String;

    const-string v1, "onFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iput-object v2, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mSaveTask:Lcom/oneplus/screenshot/service/SaveTask;

    .line 79
    iget-object v1, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mCachable:Lcom/oneplus/screenshot/util/Cachable;

    monitor-enter v1

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mCachable:Lcom/oneplus/screenshot/util/Cachable;

    invoke-interface {v0}, Lcom/oneplus/screenshot/util/Cachable;->clearCache()V

    .line 81
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    iput-object v2, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mCachable:Lcom/oneplus/screenshot/util/Cachable;

    .line 83
    invoke-static {}, Lcom/oneplus/screenshot/service/GlobalNotification;->recycle()V

    .line 84
    return-void

    .line 81
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public onSaveCancelled()V
    .locals 2

    .prologue
    .line 69
    sget-object v0, Lcom/oneplus/screenshot/service/GlobalSave;->TAG:Ljava/lang/String;

    const-string v1, "onSaveCancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-direct {p0}, Lcom/oneplus/screenshot/service/GlobalSave;->onFinished()V

    .line 71
    return-void
.end method

.method public onSaveFinished()V
    .locals 2

    .prologue
    .line 63
    sget-object v0, Lcom/oneplus/screenshot/service/GlobalSave;->TAG:Ljava/lang/String;

    const-string v1, "onSaveFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-direct {p0}, Lcom/oneplus/screenshot/service/GlobalSave;->onFinished()V

    .line 65
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 45
    sget-object v1, Lcom/oneplus/screenshot/service/GlobalSave;->TAG:Ljava/lang/String;

    const-string v2, "start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-direct {p0}, Lcom/oneplus/screenshot/service/GlobalSave;->nextNotificationId()I

    move-result v1

    iput v1, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mNotificationId:I

    .line 47
    iget-object v1, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mContext:Landroid/content/Context;

    const-string v2, ""

    const-string v3, ""

    invoke-static {v1, v4, v2, v3}, Lcom/oneplus/screenshot/longshot/util/Configs;->showNotifyWindow(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    .line 48
    sput-boolean v4, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LONGSHOT_RUNNING:Z

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "cache":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    iget-object v2, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mCachable:Lcom/oneplus/screenshot/util/Cachable;

    monitor-enter v2

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mCachable:Lcom/oneplus/screenshot/util/Cachable;

    invoke-interface {v1}, Lcom/oneplus/screenshot/util/Cachable;->getCache()Ljava/util/List;

    move-result-object v0

    .line 53
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    new-instance v1, Lcom/oneplus/screenshot/service/SaveTask;

    iget-object v2, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mNotificationId:I

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/oneplus/screenshot/service/SaveTask;-><init>(Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;Landroid/content/Context;Ljava/util/List;I)V

    iput-object v1, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mSaveTask:Lcom/oneplus/screenshot/service/SaveTask;

    .line 55
    iget-object v1, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mSaveTask:Lcom/oneplus/screenshot/service/SaveTask;

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/oneplus/screenshot/service/SaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 56
    return-void

    .line 53
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
