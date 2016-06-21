.class Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$1;
.super Landroid/content/BroadcastReceiver;
.source "VolumeStateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;

    const-string v1, "switch_state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->mCurrentVolumeState:I
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->access$002(Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;I)I

    .line 51
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->updateVolumeStateIcon(Z)V

    .line 52
    return-void
.end method
