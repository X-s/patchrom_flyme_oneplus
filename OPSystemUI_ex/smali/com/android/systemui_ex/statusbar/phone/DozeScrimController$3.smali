.class Lcom/android/systemui_ex/statusbar/phone/DozeScrimController$3;
.super Ljava/lang/Object;
.source "DozeScrimController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController$3;->this$0:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    .line 222
    const-string v0, "DozeScrimController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pulse in, mDozing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController$3;->this$0:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->mDozing:Z
    invoke-static {v3}, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->access$200(Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPulseReason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController$3;->this$0:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->mPulseReason:I
    invoke-static {v3}, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->access$300(Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;)I

    move-result v3

    invoke-static {v3}, Lcom/android/systemui_ex/doze/DozeLog;->pulseReasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController$3;->this$0:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->mDozing:Z
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->access$200(Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController$3;->this$0:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->mPulseReason:I
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->access$300(Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;)I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui_ex/doze/DozeLog;->tracePulseStart(I)V

    .line 226
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController$3;->this$0:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->mPulseReason:I
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->access$300(Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    move v9, v1

    .line 227
    .local v9, "pickup":Z
    :goto_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController$3;->this$0:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController$3;->this$0:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->mDozeParameters:Lcom/android/systemui_ex/statusbar/phone/DozeParameters;
    invoke-static {v3}, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->access$400(Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;)Lcom/android/systemui_ex/statusbar/phone/DozeParameters;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/android/systemui_ex/statusbar/phone/DozeParameters;->getPulseInDuration(Z)I

    move-result v3

    int-to-long v3, v3

    if-eqz v9, :cond_2

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController$3;->this$0:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->mPulseInInterpolatorPickup:Landroid/view/animation/Interpolator;
    invoke-static {v5}, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->access$500(Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;)Landroid/view/animation/Interpolator;

    move-result-object v5

    :goto_2
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController$3;->this$0:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->mDozeParameters:Lcom/android/systemui_ex/statusbar/phone/DozeParameters;
    invoke-static {v6}, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->access$400(Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;)Lcom/android/systemui_ex/statusbar/phone/DozeParameters;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/systemui_ex/statusbar/phone/DozeParameters;->getPulseInDelay(Z)I

    move-result v6

    int-to-long v6, v6

    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController$3;->this$0:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->mPulseInFinished:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->access$700(Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;)Ljava/lang/Runnable;

    move-result-object v8

    # invokes: Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->startScrimAnimation(ZFJLandroid/view/animation/Interpolator;JLjava/lang/Runnable;)V
    invoke-static/range {v0 .. v8}, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->access$800(Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;ZFJLandroid/view/animation/Interpolator;JLjava/lang/Runnable;)V

    .line 234
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController$3;->this$0:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->pulseStarted()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->access$900(Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;)V

    goto :goto_0

    .line 226
    .end local v9    # "pickup":Z
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 227
    .restart local v9    # "pickup":Z
    :cond_2
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController$3;->this$0:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->mPulseInInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v5}, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->access$600(Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;)Landroid/view/animation/Interpolator;

    move-result-object v5

    goto :goto_2
.end method
