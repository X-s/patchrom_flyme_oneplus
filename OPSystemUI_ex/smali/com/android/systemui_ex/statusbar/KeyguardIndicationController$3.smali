.class Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$3;
.super Landroid/os/Handler;
.source "KeyguardIndicationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$3;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 272
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$3;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    # getter for: Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->access$900(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$3;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->access$902(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$3;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    # invokes: Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->updateIndication()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->access$800(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)V

    .line 276
    :cond_0
    return-void
.end method
