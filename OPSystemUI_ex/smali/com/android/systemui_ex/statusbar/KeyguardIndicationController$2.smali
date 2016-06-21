.class Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 260
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$2;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$2;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    # getter for: Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mVisible:Z
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->access$400(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$2;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    # invokes: Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->updateIndication()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->access$800(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)V

    .line 266
    :cond_0
    return-void
.end method
