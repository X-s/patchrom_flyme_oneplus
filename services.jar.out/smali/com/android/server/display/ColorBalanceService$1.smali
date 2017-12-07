.class Lcom/android/server/display/ColorBalanceService$1;
.super Ljava/lang/Object;
.source "ColorBalanceService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ColorBalanceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/ColorBalanceService;


# direct methods
.method constructor <init>(Lcom/android/server/display/ColorBalanceService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/ColorBalanceService;

    .prologue
    .line 1519
    iput-object p1, p0, Lcom/android/server/display/ColorBalanceService$1;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1538
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v2, 0x0

    .line 1523
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$1;->this$0:Lcom/android/server/display/ColorBalanceService;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/android/server/display/ColorBalanceService;->-set13(Lcom/android/server/display/ColorBalanceService;I)I

    .line 1526
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$1;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/display/ColorBalanceService;->-get4(Lcom/android/server/display/ColorBalanceService;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1527
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$1;->this$0:Lcom/android/server/display/ColorBalanceService;

    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService$1;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v1}, Lcom/android/server/display/ColorBalanceService;->-get19(Lcom/android/server/display/ColorBalanceService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/ColorBalanceService;->-set0(Lcom/android/server/display/ColorBalanceService;I)I

    .line 1531
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$1;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/display/ColorBalanceService;->-get18(Lcom/android/server/display/ColorBalanceService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$1;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/display/ColorBalanceService;->-get10(Lcom/android/server/display/ColorBalanceService;)I

    move-result v0

    const/16 v1, 0x23

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$1;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/display/ColorBalanceService;->-get15(Lcom/android/server/display/ColorBalanceService;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1533
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$1;->this$0:Lcom/android/server/display/ColorBalanceService;

    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService$1;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v1}, Lcom/android/server/display/ColorBalanceService;->-get19(Lcom/android/server/display/ColorBalanceService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/ColorBalanceService;->-wrap5(Lcom/android/server/display/ColorBalanceService;I)V

    .line 1521
    :cond_0
    return-void

    .line 1529
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$1;->this$0:Lcom/android/server/display/ColorBalanceService;

    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService$1;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v1}, Lcom/android/server/display/ColorBalanceService;->-get4(Lcom/android/server/display/ColorBalanceService;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService$1;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v2}, Lcom/android/server/display/ColorBalanceService;->-get19(Lcom/android/server/display/ColorBalanceService;)I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/display/ColorBalanceService;->-set0(Lcom/android/server/display/ColorBalanceService;I)I

    goto :goto_0
.end method
