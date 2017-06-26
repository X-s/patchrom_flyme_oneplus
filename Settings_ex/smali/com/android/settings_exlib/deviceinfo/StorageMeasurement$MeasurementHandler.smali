.class Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;
.super Landroid/os/Handler;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MeasurementHandler"
.end annotation


# static fields
.field public static final MSG_COMPLETED:I = 0x4

.field public static final MSG_CONNECTED:I = 0x2

.field public static final MSG_DISCONNECT:I = 0x3

.field public static final MSG_INVALIDATE:I = 0x5

.field public static final MSG_MEASURE:I = 0x1


# instance fields
.field private volatile mBound:Z

.field private mCached:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;

.field private final mDefContainerConn:Landroid/content/ServiceConnection;

.field private mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

.field private mLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;


# direct methods
.method public constructor <init>(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;

    .line 298
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 272
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    .line 280
    new-instance v0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler$1;-><init>(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;)V

    iput-object v0, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    .line 299
    return-void
.end method

.method static synthetic access$402(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;
    .param p1, "x1"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 265
    iput-boolean p1, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    return p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 303
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 346
    :goto_0
    return-void

    .line 305
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;

    if-eqz v2, :cond_0

    .line 306
    iget-object v2, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->mMainHandler:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MainHandler;
    invoke-static {v2}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->access$600(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;)Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MainHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;

    invoke-virtual {v2, v4, v3}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 310
    :cond_0
    iget-object v3, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 311
    :try_start_0
    iget-boolean v2, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    if-eqz v2, :cond_1

    .line 312
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;->removeMessages(I)V

    .line 313
    const/4 v2, 0x2

    iget-object v4, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

    invoke-virtual {p0, v2, v4}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;->sendMessage(Landroid/os/Message;)Z

    .line 319
    :goto_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 315
    :cond_1
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    sget-object v4, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 316
    .local v1, "service":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->access$700(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v4, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 323
    .end local v1    # "service":Landroid/content/Intent;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/app/IMediaContainerService;

    .line 324
    .local v0, "imcs":Lcom/android/internal/app/IMediaContainerService;
    iget-object v2, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;

    # invokes: Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->measureExactStorage(Lcom/android/internal/app/IMediaContainerService;)V
    invoke-static {v2, v0}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->access$800(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;)V

    goto :goto_0

    .line 328
    .end local v0    # "imcs":Lcom/android/internal/app/IMediaContainerService;
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 329
    :try_start_2
    iget-boolean v2, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    if-eqz v2, :cond_2

    .line 330
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    .line 331
    iget-object v2, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->access$700(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 333
    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 337
    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;

    iput-object v2, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;

    .line 338
    iget-object v2, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->mMainHandler:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MainHandler;
    invoke-static {v2}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->access$600(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;)Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MainHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;

    invoke-virtual {v2, v4, v3}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 342
    :pswitch_4
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;

    goto/16 :goto_0

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
