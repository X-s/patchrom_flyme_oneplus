.class Lcom/android/systemui_ex/statusbar/phone/DozeScrimController$5;
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
    .line 252
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController$5;->this$0:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 255
    const-string v0, "DozeScrimController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pulse out, mDozing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController$5;->this$0:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->mDozing:Z
    invoke-static {v2}, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->access$200(Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController$5;->this$0:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->mDozing:Z
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->access$200(Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController$5;->this$0:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController$5;->this$0:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->mDozeParameters:Lcom/android/systemui_ex/statusbar/phone/DozeParameters;
    invoke-static {v3}, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->access$400(Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;)Lcom/android/systemui_ex/statusbar/phone/DozeParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/phone/DozeParameters;->getPulseOutDuration()I

    move-result v3

    int-to-long v3, v3

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController$5;->this$0:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->mPulseOutInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v5}, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->access$1200(Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;)Landroid/view/animation/Interpolator;

    move-result-object v5

    const-wide/16 v6, 0x0

    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController$5;->this$0:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->mPulseOutFinished:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->access$1300(Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;)Ljava/lang/Runnable;

    move-result-object v8

    # invokes: Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->startScrimAnimation(ZFJLandroid/view/animation/Interpolator;JLjava/lang/Runnable;)V
    invoke-static/range {v0 .. v8}, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->access$800(Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;ZFJLandroid/view/animation/Interpolator;JLjava/lang/Runnable;)V

    goto :goto_0
.end method
