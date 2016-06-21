.class Lcom/android/systemui_ex/volume/ZenModePanel$9;
.super Lcom/android/systemui_ex/statusbar/policy/ZenModeController$Callback;
.source "ZenModePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/volume/ZenModePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/volume/ZenModePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/volume/ZenModePanel;)V
    .locals 0

    .prologue
    .line 781
    iput-object p1, p0, Lcom/android/systemui_ex/volume/ZenModePanel$9;->this$0:Lcom/android/systemui_ex/volume/ZenModePanel;

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/ZenModeController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConditionsChanged([Landroid/service/notification/Condition;)V
    .locals 2
    .param p1, "conditions"    # [Landroid/service/notification/Condition;

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel$9;->this$0:Lcom/android/systemui_ex/volume/ZenModePanel;

    # getter for: Lcom/android/systemui_ex/volume/ZenModePanel;->mHandler:Lcom/android/systemui_ex/volume/ZenModePanel$H;
    invoke-static {v0}, Lcom/android/systemui_ex/volume/ZenModePanel;->access$1500(Lcom/android/systemui_ex/volume/ZenModePanel;)Lcom/android/systemui_ex/volume/ZenModePanel$H;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui_ex/volume/ZenModePanel$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 789
    return-void
.end method

.method public onExitConditionChanged(Landroid/service/notification/Condition;)V
    .locals 2
    .param p1, "exitCondition"    # Landroid/service/notification/Condition;

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel$9;->this$0:Lcom/android/systemui_ex/volume/ZenModePanel;

    # getter for: Lcom/android/systemui_ex/volume/ZenModePanel;->mHandler:Lcom/android/systemui_ex/volume/ZenModePanel$H;
    invoke-static {v0}, Lcom/android/systemui_ex/volume/ZenModePanel;->access$1500(Lcom/android/systemui_ex/volume/ZenModePanel;)Lcom/android/systemui_ex/volume/ZenModePanel$H;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui_ex/volume/ZenModePanel$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 794
    return-void
.end method

.method public onZenChanged(I)V
    .locals 3
    .param p1, "zen"    # I

    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel$9;->this$0:Lcom/android/systemui_ex/volume/ZenModePanel;

    # getter for: Lcom/android/systemui_ex/volume/ZenModePanel;->mHandler:Lcom/android/systemui_ex/volume/ZenModePanel$H;
    invoke-static {v0}, Lcom/android/systemui_ex/volume/ZenModePanel;->access$1500(Lcom/android/systemui_ex/volume/ZenModePanel;)Lcom/android/systemui_ex/volume/ZenModePanel$H;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui_ex/volume/ZenModePanel$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 785
    return-void
.end method
