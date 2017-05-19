.class Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;
.super Lcom/oneplus/longshot/ILongScreenshotCallback$Stub;
.source "LongScreenshotManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/longshot/LongScreenshotManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LongshotConnection"
.end annotation


# instance fields
.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/longshot/ILongScreenshotListener;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/oneplus/longshot/ILongScreenshot;

.field final synthetic this$0:Lcom/oneplus/longshot/LongScreenshotManagerService;


# direct methods
.method private constructor <init>(Lcom/oneplus/longshot/LongScreenshotManagerService;)V
    .locals 1

    .prologue
    .line 160
    iput-object p1, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->this$0:Lcom/oneplus/longshot/LongScreenshotManagerService;

    invoke-direct {p0}, Lcom/oneplus/longshot/ILongScreenshotCallback$Stub;-><init>()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->mService:Lcom/oneplus/longshot/ILongScreenshot;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->mListeners:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/longshot/LongScreenshotManagerService;Lcom/oneplus/longshot/LongScreenshotManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/longshot/LongScreenshotManagerService;
    .param p2, "x1"    # Lcom/oneplus/longshot/LongScreenshotManagerService$1;

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;-><init>(Lcom/oneplus/longshot/LongScreenshotManagerService;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;)Lcom/oneplus/longshot/ILongScreenshot;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->mService:Lcom/oneplus/longshot/ILongScreenshot;

    return-object v0
.end method


# virtual methods
.method public notifyMove()V
    .locals 6

    .prologue
    .line 197
    const-string v3, "Longshot.ManagerService"

    const-string v4, "notifyMove"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v4, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->mListeners:Ljava/util/List;

    monitor-enter v4

    .line 199
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/longshot/ILongScreenshotListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    .local v2, "listener":Lcom/oneplus/longshot/ILongScreenshotListener;
    :try_start_1
    invoke-interface {v2}, Lcom/oneplus/longshot/ILongScreenshotListener;->onMove()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Longshot.ManagerService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 206
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/oneplus/longshot/ILongScreenshotListener;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 207
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 167
    const-string v1, "Longshot.ManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-static {p2}, Lcom/oneplus/longshot/ILongScreenshot$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/longshot/ILongScreenshot;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->mService:Lcom/oneplus/longshot/ILongScreenshot;

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->mService:Lcom/oneplus/longshot/ILongScreenshot;

    invoke-interface {v1, p0}, Lcom/oneplus/longshot/ILongScreenshot;->start(Lcom/oneplus/longshot/ILongScreenshotCallback;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Longshot.ManagerService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 180
    const-string v0, "Longshot.ManagerService"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {p0}, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->stop()V

    .line 183
    return-void
.end method

.method registerListener(Lcom/oneplus/longshot/ILongScreenshotListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/oneplus/longshot/ILongScreenshotListener;

    .prologue
    .line 210
    iget-object v1, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->mListeners:Ljava/util/List;

    monitor-enter v1

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    monitor-exit v1

    .line 213
    return-void

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 187
    const-string v1, "Longshot.ManagerService"

    const-string v2, "stop"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v1, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->this$0:Lcom/oneplus/longshot/LongScreenshotManagerService;

    # getter for: Lcom/oneplus/longshot/LongScreenshotManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oneplus/longshot/LongScreenshotManagerService;->access$200(Lcom/oneplus/longshot/LongScreenshotManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 189
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->mService:Lcom/oneplus/longshot/ILongScreenshot;

    .line 191
    const-class v1, Landroid/view/WindowManagerPolicy;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerPolicy;

    .line 192
    .local v0, "wm":Landroid/view/WindowManagerPolicy;
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->stopLongshotConnection()V

    .line 193
    return-void
.end method

.method unregisterListener(Lcom/oneplus/longshot/ILongScreenshotListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/oneplus/longshot/ILongScreenshotListener;

    .prologue
    .line 216
    iget-object v1, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->mListeners:Ljava/util/List;

    monitor-enter v1

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 218
    monitor-exit v1

    .line 219
    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
