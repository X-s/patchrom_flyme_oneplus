.class Lcom/android/server/display/DisplayPowerState$3;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerState;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 311
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/display/DisplayPowerState;->-set3(Lcom/android/server/display/DisplayPowerState;Z)Z

    .line 313
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState;->-get6(Lcom/android/server/display/DisplayPowerState;)I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 314
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState;->-get2(Lcom/android/server/display/DisplayPowerState;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState;->-get5(Lcom/android/server/display/DisplayPowerState;)I

    move-result v0

    .line 315
    .local v0, "brightness":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState;->-get4(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v2}, Lcom/android/server/display/DisplayPowerState;->-get6(Lcom/android/server/display/DisplayPowerState;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->setState(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 316
    sget-boolean v1, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 317
    const-string/jumbo v1, "DisplayPowerState"

    const-string/jumbo v2, "Screen ready"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v1, v3}, Lcom/android/server/display/DisplayPowerState;->-set2(Lcom/android/server/display/DisplayPowerState;Z)Z

    .line 320
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState;->-wrap0(Lcom/android/server/display/DisplayPowerState;)V

    .line 310
    :cond_1
    :goto_1
    return-void

    .line 314
    .end local v0    # "brightness":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "brightness":I
    goto :goto_0

    .line 322
    :cond_3
    sget-boolean v1, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 323
    const-string/jumbo v1, "DisplayPowerState"

    const-string/jumbo v2, "Screen not ready"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
