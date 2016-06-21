.class Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$1;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$1;->this$0:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 74
    const-string v0, "ControlPanel.BrightnessController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged : progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui_ex/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$1;->this$0:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

    # setter for: Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mCurrentProgress:I
    invoke-static {v0, p2}, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->access$002(Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;I)I

    .line 76
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$1;->this$0:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mState:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;

    sget-object v1, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;->STATE_CLCIK:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;

    if-ne v0, v1, :cond_1

    .line 77
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$1;->this$0:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

    sget-object v1, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;->STATE_ANIMATE:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;

    iput-object v1, v0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mState:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$1;->this$0:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mState:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;

    sget-object v1, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;->STATE_ANIMATE:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;

    if-ne v0, v1, :cond_2

    .line 80
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$1;->this$0:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

    sget-object v1, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;->STATE_SCROLL:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;

    iput-object v1, v0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mState:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;

    .line 81
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$1;->this$0:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

    # getter for: Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mBackgroundTransparencyCallback:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel$BackgroundTransparencyCallback;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->access$100(Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;)Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel$BackgroundTransparencyCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel$BackgroundTransparencyCallback;->setBackgroundTransparent()V

    .line 82
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$1;->this$0:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

    # getter for: Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mFunctionControlPanel:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->access$200(Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;)Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$1;->this$0:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

    # invokes: Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->updateBrightness(I)V
    invoke-static {v0, p2}, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->access$300(Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;I)V

    goto :goto_0

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$1;->this$0:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mState:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;

    sget-object v1, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;->STATE_SCROLL:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;

    if-ne v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$1;->this$0:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

    # invokes: Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->updateBrightness(I)V
    invoke-static {v0, p2}, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->access$300(Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 67
    const-string v0, "ControlPanel.BrightnessController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartTrackingTouch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$1;->this$0:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

    # getter for: Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mCurrentProgress:I
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->access$000(Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui_ex/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$1;->this$0:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

    sget-object v1, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;->STATE_CLCIK:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;

    iput-object v1, v0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mState:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;

    .line 69
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 58
    const-string v0, "ControlPanel.BrightnessController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopTrackingTouch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$1;->this$0:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

    # getter for: Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mCurrentProgress:I
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->access$000(Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui_ex/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$1;->this$0:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

    sget-object v1, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;->STATE_RELEASE:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;

    iput-object v1, v0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mState:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;

    .line 60
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$1;->this$0:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

    # getter for: Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mBackgroundTransparencyCallback:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel$BackgroundTransparencyCallback;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->access$100(Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;)Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel$BackgroundTransparencyCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel$BackgroundTransparencyCallback;->resumeBackgroundTransparency()V

    .line 61
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$1;->this$0:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

    # getter for: Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mFunctionControlPanel:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->access$200(Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;)Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$1;->this$0:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$1;->this$0:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

    # getter for: Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mCurrentProgress:I
    invoke-static {v1}, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->access$000(Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;)I

    move-result v1

    # invokes: Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->updateBrightness(I)V
    invoke-static {v0, v1}, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->access$300(Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;I)V

    .line 63
    return-void
.end method
