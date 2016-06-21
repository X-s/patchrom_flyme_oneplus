.class Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$MyTimerTask;
.super Ljava/util/TimerTask;
.source "KeyguardChargeAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTimerTask"
.end annotation


# instance fields
.field handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$MyTimerTask;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 292
    iput-object p2, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$MyTimerTask;->handler:Landroid/os/Handler;

    .line 293
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$MyTimerTask;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$MyTimerTask;->handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 298
    return-void
.end method
