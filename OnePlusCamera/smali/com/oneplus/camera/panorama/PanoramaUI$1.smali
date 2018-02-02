.class Lcom/oneplus/camera/panorama/PanoramaUI$1;
.super Ljava/lang/Object;
.source "PanoramaUI.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/panorama/PanoramaUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/panorama/PanoramaUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/panorama/PanoramaUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/panorama/PanoramaUI;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/oneplus/camera/panorama/PanoramaUI$1;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 218
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI$1;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-static {v0, p1}, Lcom/oneplus/camera/panorama/PanoramaUI;->-wrap4(Lcom/oneplus/camera/panorama/PanoramaUI;Landroid/hardware/SensorEvent;)V

    .line 212
    return-void
.end method
