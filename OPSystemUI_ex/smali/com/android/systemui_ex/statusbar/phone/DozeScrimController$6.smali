.class Lcom/android/systemui_ex/statusbar/phone/DozeScrimController$6;
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
    .line 262
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController$6;->this$0:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 265
    const-string v0, "DozeScrimController"

    const-string v1, "Pulse out finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-static {}, Lcom/android/systemui_ex/doze/DozeLog;->tracePulseFinish()V

    .line 269
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController$6;->this$0:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->pulseFinished()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->access$1400(Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;)V

    .line 270
    return-void
.end method
