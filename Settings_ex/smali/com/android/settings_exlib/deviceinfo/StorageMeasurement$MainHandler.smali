.class Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MainHandler;
.super Landroid/os/Handler;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;


# direct methods
.method private constructor <init>(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MainHandler;->this$0:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;
    .param p2, "x1"    # Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$1;

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MainHandler;-><init>(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 257
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;

    .line 258
    .local v0, "details":Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;
    iget-object v2, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MainHandler;->this$0:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->access$300(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MainHandler;->this$0:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->access$300(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementReceiver;

    move-object v1, v2

    .line 259
    .local v1, "receiver":Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :goto_0
    if-eqz v1, :cond_0

    .line 260
    invoke-interface {v1, v0}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementReceiver;->onDetailsChanged(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    .line 262
    :cond_0
    return-void

    .line 258
    .end local v1    # "receiver":Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
