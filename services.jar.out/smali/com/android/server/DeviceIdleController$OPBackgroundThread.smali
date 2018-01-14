.class final Lcom/android/server/DeviceIdleController$OPBackgroundThread;
.super Landroid/os/HandlerThread;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OPBackgroundThread"
.end annotation


# static fields
.field private static mHandler:Landroid/os/Handler;

.field private static mInstance:Lcom/android/server/DeviceIdleController$OPBackgroundThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1168
    const-string/jumbo v0, "OPBackgroundThread"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 1167
    return-void
.end method

.method public static destroyThread()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1186
    sget-object v0, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->mInstance:Lcom/android/server/DeviceIdleController$OPBackgroundThread;

    if-eqz v0, :cond_0

    .line 1187
    sget-object v0, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->mInstance:Lcom/android/server/DeviceIdleController$OPBackgroundThread;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->quit()Z

    .line 1188
    sput-object v1, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->mInstance:Lcom/android/server/DeviceIdleController$OPBackgroundThread;

    .line 1189
    sput-object v1, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->mHandler:Landroid/os/Handler;

    .line 1185
    :cond_0
    return-void
.end method

.method public static post(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1179
    sget-object v0, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1178
    return-void
.end method

.method public static postDelayed(Ljava/lang/Runnable;J)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "nDelay"    # J

    .prologue
    .line 1182
    sget-object v0, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1181
    return-void
.end method

.method public static prepareThread()V
    .locals 2

    .prologue
    .line 1171
    sget-object v0, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->mInstance:Lcom/android/server/DeviceIdleController$OPBackgroundThread;

    if-nez v0, :cond_0

    .line 1172
    new-instance v0, Lcom/android/server/DeviceIdleController$OPBackgroundThread;

    invoke-direct {v0}, Lcom/android/server/DeviceIdleController$OPBackgroundThread;-><init>()V

    sput-object v0, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->mInstance:Lcom/android/server/DeviceIdleController$OPBackgroundThread;

    .line 1173
    sget-object v0, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->mInstance:Lcom/android/server/DeviceIdleController$OPBackgroundThread;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->start()V

    .line 1174
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->mInstance:Lcom/android/server/DeviceIdleController$OPBackgroundThread;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->mHandler:Landroid/os/Handler;

    .line 1170
    :cond_0
    return-void
.end method
