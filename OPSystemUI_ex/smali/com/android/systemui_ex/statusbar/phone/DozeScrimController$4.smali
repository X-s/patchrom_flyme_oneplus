.class Lcom/android/systemui_ex/statusbar/phone/DozeScrimController$4;
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
    .line 238
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController$4;->this$0:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 241
    const-string v0, "DozeScrimController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pulse in finished, mDozing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController$4;->this$0:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->mDozing:Z
    invoke-static {v2}, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->access$200(Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController$4;->this$0:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->mDozing:Z
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->access$200(Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController$4;->this$0:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->mPulseReason:I
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->access$300(Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 245
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController$4;->this$0:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->access$1100(Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController$4;->this$0:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->access$1000(Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController$4;->this$0:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->mDozeParameters:Lcom/android/systemui_ex/statusbar/phone/DozeParameters;
    invoke-static {v2}, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->access$400(Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;)Lcom/android/systemui_ex/statusbar/phone/DozeParameters;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui_ex/statusbar/phone/DozeParameters;->getPulseVisibleDuration(Z)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController$4;->this$0:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->access$1100(Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController$4;->this$0:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->access$1000(Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController$4;->this$0:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->mDozeParameters:Lcom/android/systemui_ex/statusbar/phone/DozeParameters;
    invoke-static {v2}, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->access$400(Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;)Lcom/android/systemui_ex/statusbar/phone/DozeParameters;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/systemui_ex/statusbar/phone/DozeParameters;->getPulseVisibleDuration(Z)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
