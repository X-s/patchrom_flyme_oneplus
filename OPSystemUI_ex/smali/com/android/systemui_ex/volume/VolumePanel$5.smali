.class Lcom/android/systemui_ex/volume/VolumePanel$5;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Lcom/android/systemui_ex/volume/ZenModePanel$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/volume/VolumePanel;->initZenModePanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/volume/VolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/volume/VolumePanel;)V
    .locals 0

    .prologue
    .line 574
    iput-object p1, p0, Lcom/android/systemui_ex/volume/VolumePanel$5;->this$0:Lcom/android/systemui_ex/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel$5;->this$0:Lcom/android/systemui_ex/volume/VolumePanel;

    # getter for: Lcom/android/systemui_ex/volume/VolumePanel;->mZenPanelExpanded:Z
    invoke-static {v0}, Lcom/android/systemui_ex/volume/VolumePanel;->access$1500(Lcom/android/systemui_ex/volume/VolumePanel;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 600
    :goto_0
    return-void

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel$5;->this$0:Lcom/android/systemui_ex/volume/VolumePanel;

    # setter for: Lcom/android/systemui_ex/volume/VolumePanel;->mZenPanelExpanded:Z
    invoke-static {v0, p1}, Lcom/android/systemui_ex/volume/VolumePanel;->access$1502(Lcom/android/systemui_ex/volume/VolumePanel;Z)Z

    .line 598
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel$5;->this$0:Lcom/android/systemui_ex/volume/VolumePanel;

    # invokes: Lcom/android/systemui_ex/volume/VolumePanel;->updateTimeoutDelay()V
    invoke-static {v0}, Lcom/android/systemui_ex/volume/VolumePanel;->access$1600(Lcom/android/systemui_ex/volume/VolumePanel;)V

    .line 599
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel$5;->this$0:Lcom/android/systemui_ex/volume/VolumePanel;

    # invokes: Lcom/android/systemui_ex/volume/VolumePanel;->resetTimeout()V
    invoke-static {v0}, Lcom/android/systemui_ex/volume/VolumePanel;->access$1100(Lcom/android/systemui_ex/volume/VolumePanel;)V

    goto :goto_0
.end method

.method public onInteraction()V
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel$5;->this$0:Lcom/android/systemui_ex/volume/VolumePanel;

    # invokes: Lcom/android/systemui_ex/volume/VolumePanel;->resetTimeout()V
    invoke-static {v0}, Lcom/android/systemui_ex/volume/VolumePanel;->access$1100(Lcom/android/systemui_ex/volume/VolumePanel;)V

    .line 589
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel$5;->this$0:Lcom/android/systemui_ex/volume/VolumePanel;

    # getter for: Lcom/android/systemui_ex/volume/VolumePanel;->mZenPanelCallback:Lcom/android/systemui_ex/volume/ZenModePanel$Callback;
    invoke-static {v0}, Lcom/android/systemui_ex/volume/VolumePanel;->access$1400(Lcom/android/systemui_ex/volume/VolumePanel;)Lcom/android/systemui_ex/volume/ZenModePanel$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel$5;->this$0:Lcom/android/systemui_ex/volume/VolumePanel;

    # getter for: Lcom/android/systemui_ex/volume/VolumePanel;->mZenPanelCallback:Lcom/android/systemui_ex/volume/ZenModePanel$Callback;
    invoke-static {v0}, Lcom/android/systemui_ex/volume/VolumePanel;->access$1400(Lcom/android/systemui_ex/volume/VolumePanel;)Lcom/android/systemui_ex/volume/ZenModePanel$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui_ex/volume/ZenModePanel$Callback;->onInteraction()V

    .line 592
    :cond_0
    return-void
.end method

.method public onMoreSettings()V
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel$5;->this$0:Lcom/android/systemui_ex/volume/VolumePanel;

    # getter for: Lcom/android/systemui_ex/volume/VolumePanel;->mCallback:Lcom/android/systemui_ex/volume/VolumePanel$Callback;
    invoke-static {v0}, Lcom/android/systemui_ex/volume/VolumePanel;->access$1300(Lcom/android/systemui_ex/volume/VolumePanel;)Lcom/android/systemui_ex/volume/VolumePanel$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel$5;->this$0:Lcom/android/systemui_ex/volume/VolumePanel;

    # getter for: Lcom/android/systemui_ex/volume/VolumePanel;->mCallback:Lcom/android/systemui_ex/volume/VolumePanel$Callback;
    invoke-static {v0}, Lcom/android/systemui_ex/volume/VolumePanel;->access$1300(Lcom/android/systemui_ex/volume/VolumePanel;)Lcom/android/systemui_ex/volume/VolumePanel$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui_ex/volume/VolumePanel$Callback;->onZenSettings()V

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel$5;->this$0:Lcom/android/systemui_ex/volume/VolumePanel;

    # getter for: Lcom/android/systemui_ex/volume/VolumePanel;->mZenPanelCallback:Lcom/android/systemui_ex/volume/ZenModePanel$Callback;
    invoke-static {v0}, Lcom/android/systemui_ex/volume/VolumePanel;->access$1400(Lcom/android/systemui_ex/volume/VolumePanel;)Lcom/android/systemui_ex/volume/ZenModePanel$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel$5;->this$0:Lcom/android/systemui_ex/volume/VolumePanel;

    # getter for: Lcom/android/systemui_ex/volume/VolumePanel;->mZenPanelCallback:Lcom/android/systemui_ex/volume/ZenModePanel$Callback;
    invoke-static {v0}, Lcom/android/systemui_ex/volume/VolumePanel;->access$1400(Lcom/android/systemui_ex/volume/VolumePanel;)Lcom/android/systemui_ex/volume/ZenModePanel$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui_ex/volume/ZenModePanel$Callback;->onMoreSettings()V

    .line 584
    :cond_1
    return-void
.end method
