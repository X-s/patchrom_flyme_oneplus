.class Lcom/android/server/display/ColorBalanceService$2;
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
    .line 1542
    iput-object p1, p0, Lcom/android/server/display/ColorBalanceService$2;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1567
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v1, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1545
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$2;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/display/ColorBalanceService;->-get18(Lcom/android/server/display/ColorBalanceService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1547
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$2;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/display/ColorBalanceService;->-get10(Lcom/android/server/display/ColorBalanceService;)I

    move-result v0

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$2;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/display/ColorBalanceService;->-get13(Lcom/android/server/display/ColorBalanceService;)I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    float-to-int v0, v0

    if-ge v0, v1, :cond_3

    .line 1548
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$2;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/display/ColorBalanceService;->-get13(Lcom/android/server/display/ColorBalanceService;)I

    move-result v0

    if-ge v0, v3, :cond_1

    .line 1549
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$2;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/display/ColorBalanceService;->-get13(Lcom/android/server/display/ColorBalanceService;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/display/ColorBalanceService;->-set8(Lcom/android/server/display/ColorBalanceService;I)I

    .line 1550
    const-string/jumbo v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mLowLightCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService$2;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v2}, Lcom/android/server/display/ColorBalanceService;->-get13(Lcom/android/server/display/ColorBalanceService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$2;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/display/ColorBalanceService;->-get13(Lcom/android/server/display/ColorBalanceService;)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1552
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$2;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/display/ColorBalanceService;->-get11(Lcom/android/server/display/ColorBalanceService;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/display/ColorBalanceService;->-set7(Lcom/android/server/display/ColorBalanceService;I)I

    .line 1553
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$2;->this$0:Lcom/android/server/display/ColorBalanceService;

    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService$2;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v1}, Lcom/android/server/display/ColorBalanceService;->-get11(Lcom/android/server/display/ColorBalanceService;)I

    move-result v1

    const/16 v2, 0x10

    const/16 v3, 0x5dc

    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 1560
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$2;->this$0:Lcom/android/server/display/ColorBalanceService;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/android/server/display/ColorBalanceService;->-set6(Lcom/android/server/display/ColorBalanceService;I)I

    .line 1544
    :cond_2
    return-void

    .line 1557
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$2;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v0, v4}, Lcom/android/server/display/ColorBalanceService;->-set8(Lcom/android/server/display/ColorBalanceService;I)I

    .line 1558
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$2;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/display/ColorBalanceService;->-get11(Lcom/android/server/display/ColorBalanceService;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/display/ColorBalanceService;->-set7(Lcom/android/server/display/ColorBalanceService;I)I

    goto :goto_0
.end method
