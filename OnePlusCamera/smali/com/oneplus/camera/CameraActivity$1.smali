.class Lcom/oneplus/camera/CameraActivity$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity$1;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 456
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$1;->this$0:Lcom/oneplus/camera/CameraActivity;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    # invokes: Lcom/oneplus/camera/CameraActivity;->onAccelerometerValuesChanged([F)V
    invoke-static {v0, v1}, Lcom/oneplus/camera/CameraActivity;->access$000(Lcom/oneplus/camera/CameraActivity;[F)V

    .line 452
    return-void
.end method
