.class Lcom/android/systemui_ex/settings/ToggleSlider$2;
.super Ljava/lang/Object;
.source "ToggleSlider.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/settings/ToggleSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/settings/ToggleSlider;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/settings/ToggleSlider;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/systemui_ex/settings/ToggleSlider$2;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider$2;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    # getter for: Lcom/android/systemui_ex/settings/ToggleSlider;->mListener:Lcom/android/systemui_ex/settings/ToggleSlider$Listener;
    invoke-static {v0}, Lcom/android/systemui_ex/settings/ToggleSlider;->access$100(Lcom/android/systemui_ex/settings/ToggleSlider;)Lcom/android/systemui_ex/settings/ToggleSlider$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider$2;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    # getter for: Lcom/android/systemui_ex/settings/ToggleSlider;->mListener:Lcom/android/systemui_ex/settings/ToggleSlider$Listener;
    invoke-static {v0}, Lcom/android/systemui_ex/settings/ToggleSlider;->access$100(Lcom/android/systemui_ex/settings/ToggleSlider;)Lcom/android/systemui_ex/settings/ToggleSlider$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/settings/ToggleSlider$2;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    iget-object v2, p0, Lcom/android/systemui_ex/settings/ToggleSlider$2;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    # getter for: Lcom/android/systemui_ex/settings/ToggleSlider;->mTracking:Z
    invoke-static {v2}, Lcom/android/systemui_ex/settings/ToggleSlider;->access$200(Lcom/android/systemui_ex/settings/ToggleSlider;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui_ex/settings/ToggleSlider$2;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    # getter for: Lcom/android/systemui_ex/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v3}, Lcom/android/systemui_ex/settings/ToggleSlider;->access$400(Lcom/android/systemui_ex/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-interface {v0, v1, v2, v3, p2}, Lcom/android/systemui_ex/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui_ex/settings/ToggleSlider;ZZI)V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider$2;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    # getter for: Lcom/android/systemui_ex/settings/ToggleSlider;->mMirror:Lcom/android/systemui_ex/settings/ToggleSlider;
    invoke-static {v0}, Lcom/android/systemui_ex/settings/ToggleSlider;->access$300(Lcom/android/systemui_ex/settings/ToggleSlider;)Lcom/android/systemui_ex/settings/ToggleSlider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider$2;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    # getter for: Lcom/android/systemui_ex/settings/ToggleSlider;->mMirror:Lcom/android/systemui_ex/settings/ToggleSlider;
    invoke-static {v0}, Lcom/android/systemui_ex/settings/ToggleSlider;->access$300(Lcom/android/systemui_ex/settings/ToggleSlider;)Lcom/android/systemui_ex/settings/ToggleSlider;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui_ex/settings/ToggleSlider;->setValue(I)V

    .line 153
    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v5, 0x1

    .line 157
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider$2;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    # setter for: Lcom/android/systemui_ex/settings/ToggleSlider;->mTracking:Z
    invoke-static {v0, v5}, Lcom/android/systemui_ex/settings/ToggleSlider;->access$202(Lcom/android/systemui_ex/settings/ToggleSlider;Z)Z

    .line 159
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider$2;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    # getter for: Lcom/android/systemui_ex/settings/ToggleSlider;->mListener:Lcom/android/systemui_ex/settings/ToggleSlider$Listener;
    invoke-static {v0}, Lcom/android/systemui_ex/settings/ToggleSlider;->access$100(Lcom/android/systemui_ex/settings/ToggleSlider;)Lcom/android/systemui_ex/settings/ToggleSlider$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider$2;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    # getter for: Lcom/android/systemui_ex/settings/ToggleSlider;->mListener:Lcom/android/systemui_ex/settings/ToggleSlider$Listener;
    invoke-static {v0}, Lcom/android/systemui_ex/settings/ToggleSlider;->access$100(Lcom/android/systemui_ex/settings/ToggleSlider;)Lcom/android/systemui_ex/settings/ToggleSlider$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/settings/ToggleSlider$2;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    iget-object v2, p0, Lcom/android/systemui_ex/settings/ToggleSlider$2;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    # getter for: Lcom/android/systemui_ex/settings/ToggleSlider;->mTracking:Z
    invoke-static {v2}, Lcom/android/systemui_ex/settings/ToggleSlider;->access$200(Lcom/android/systemui_ex/settings/ToggleSlider;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui_ex/settings/ToggleSlider$2;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    # getter for: Lcom/android/systemui_ex/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v3}, Lcom/android/systemui_ex/settings/ToggleSlider;->access$400(Lcom/android/systemui_ex/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    iget-object v4, p0, Lcom/android/systemui_ex/settings/ToggleSlider$2;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    # getter for: Lcom/android/systemui_ex/settings/ToggleSlider;->mSlider:Landroid/widget/SeekBar;
    invoke-static {v4}, Lcom/android/systemui_ex/settings/ToggleSlider;->access$000(Lcom/android/systemui_ex/settings/ToggleSlider;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/systemui_ex/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui_ex/settings/ToggleSlider;ZZI)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider$2;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    # getter for: Lcom/android/systemui_ex/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v0}, Lcom/android/systemui_ex/settings/ToggleSlider;->access$400(Lcom/android/systemui_ex/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 166
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider$2;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    # getter for: Lcom/android/systemui_ex/settings/ToggleSlider;->mMirror:Lcom/android/systemui_ex/settings/ToggleSlider;
    invoke-static {v0}, Lcom/android/systemui_ex/settings/ToggleSlider;->access$300(Lcom/android/systemui_ex/settings/ToggleSlider;)Lcom/android/systemui_ex/settings/ToggleSlider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider$2;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    # getter for: Lcom/android/systemui_ex/settings/ToggleSlider;->mMirror:Lcom/android/systemui_ex/settings/ToggleSlider;
    invoke-static {v0}, Lcom/android/systemui_ex/settings/ToggleSlider;->access$300(Lcom/android/systemui_ex/settings/ToggleSlider;)Lcom/android/systemui_ex/settings/ToggleSlider;

    move-result-object v0

    # getter for: Lcom/android/systemui_ex/settings/ToggleSlider;->mSlider:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/systemui_ex/settings/ToggleSlider;->access$000(Lcom/android/systemui_ex/settings/ToggleSlider;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setPressed(Z)V

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider$2;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    # getter for: Lcom/android/systemui_ex/settings/ToggleSlider;->mMirrorController:Lcom/android/systemui_ex/statusbar/policy/BrightnessMirrorController;
    invoke-static {v0}, Lcom/android/systemui_ex/settings/ToggleSlider;->access$500(Lcom/android/systemui_ex/settings/ToggleSlider;)Lcom/android/systemui_ex/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider$2;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    # getter for: Lcom/android/systemui_ex/settings/ToggleSlider;->mMirrorController:Lcom/android/systemui_ex/statusbar/policy/BrightnessMirrorController;
    invoke-static {v0}, Lcom/android/systemui_ex/settings/ToggleSlider;->access$500(Lcom/android/systemui_ex/settings/ToggleSlider;)Lcom/android/systemui_ex/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/policy/BrightnessMirrorController;->showMirror()V

    .line 172
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider$2;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    # getter for: Lcom/android/systemui_ex/settings/ToggleSlider;->mMirrorController:Lcom/android/systemui_ex/statusbar/policy/BrightnessMirrorController;
    invoke-static {v0}, Lcom/android/systemui_ex/settings/ToggleSlider;->access$500(Lcom/android/systemui_ex/settings/ToggleSlider;)Lcom/android/systemui_ex/statusbar/policy/BrightnessMirrorController;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider$2;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    invoke-virtual {v0}, Lcom/android/systemui_ex/settings/ToggleSlider;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/policy/BrightnessMirrorController;->setLocation(Landroid/view/View;)V

    .line 174
    :cond_2
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v5, 0x0

    .line 178
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider$2;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    # setter for: Lcom/android/systemui_ex/settings/ToggleSlider;->mTracking:Z
    invoke-static {v0, v5}, Lcom/android/systemui_ex/settings/ToggleSlider;->access$202(Lcom/android/systemui_ex/settings/ToggleSlider;Z)Z

    .line 180
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider$2;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    # getter for: Lcom/android/systemui_ex/settings/ToggleSlider;->mListener:Lcom/android/systemui_ex/settings/ToggleSlider$Listener;
    invoke-static {v0}, Lcom/android/systemui_ex/settings/ToggleSlider;->access$100(Lcom/android/systemui_ex/settings/ToggleSlider;)Lcom/android/systemui_ex/settings/ToggleSlider$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider$2;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    # getter for: Lcom/android/systemui_ex/settings/ToggleSlider;->mListener:Lcom/android/systemui_ex/settings/ToggleSlider$Listener;
    invoke-static {v0}, Lcom/android/systemui_ex/settings/ToggleSlider;->access$100(Lcom/android/systemui_ex/settings/ToggleSlider;)Lcom/android/systemui_ex/settings/ToggleSlider$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/settings/ToggleSlider$2;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    iget-object v2, p0, Lcom/android/systemui_ex/settings/ToggleSlider$2;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    # getter for: Lcom/android/systemui_ex/settings/ToggleSlider;->mTracking:Z
    invoke-static {v2}, Lcom/android/systemui_ex/settings/ToggleSlider;->access$200(Lcom/android/systemui_ex/settings/ToggleSlider;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui_ex/settings/ToggleSlider$2;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    # getter for: Lcom/android/systemui_ex/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v3}, Lcom/android/systemui_ex/settings/ToggleSlider;->access$400(Lcom/android/systemui_ex/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    iget-object v4, p0, Lcom/android/systemui_ex/settings/ToggleSlider$2;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    # getter for: Lcom/android/systemui_ex/settings/ToggleSlider;->mSlider:Landroid/widget/SeekBar;
    invoke-static {v4}, Lcom/android/systemui_ex/settings/ToggleSlider;->access$000(Lcom/android/systemui_ex/settings/ToggleSlider;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/systemui_ex/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui_ex/settings/ToggleSlider;ZZI)V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider$2;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    # getter for: Lcom/android/systemui_ex/settings/ToggleSlider;->mMirror:Lcom/android/systemui_ex/settings/ToggleSlider;
    invoke-static {v0}, Lcom/android/systemui_ex/settings/ToggleSlider;->access$300(Lcom/android/systemui_ex/settings/ToggleSlider;)Lcom/android/systemui_ex/settings/ToggleSlider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider$2;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    # getter for: Lcom/android/systemui_ex/settings/ToggleSlider;->mMirror:Lcom/android/systemui_ex/settings/ToggleSlider;
    invoke-static {v0}, Lcom/android/systemui_ex/settings/ToggleSlider;->access$300(Lcom/android/systemui_ex/settings/ToggleSlider;)Lcom/android/systemui_ex/settings/ToggleSlider;

    move-result-object v0

    # getter for: Lcom/android/systemui_ex/settings/ToggleSlider;->mSlider:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/systemui_ex/settings/ToggleSlider;->access$000(Lcom/android/systemui_ex/settings/ToggleSlider;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setPressed(Z)V

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider$2;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    # getter for: Lcom/android/systemui_ex/settings/ToggleSlider;->mMirrorController:Lcom/android/systemui_ex/statusbar/policy/BrightnessMirrorController;
    invoke-static {v0}, Lcom/android/systemui_ex/settings/ToggleSlider;->access$500(Lcom/android/systemui_ex/settings/ToggleSlider;)Lcom/android/systemui_ex/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider$2;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    # getter for: Lcom/android/systemui_ex/settings/ToggleSlider;->mMirrorController:Lcom/android/systemui_ex/statusbar/policy/BrightnessMirrorController;
    invoke-static {v0}, Lcom/android/systemui_ex/settings/ToggleSlider;->access$500(Lcom/android/systemui_ex/settings/ToggleSlider;)Lcom/android/systemui_ex/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/policy/BrightnessMirrorController;->hideMirror()V

    .line 192
    :cond_2
    return-void
.end method
