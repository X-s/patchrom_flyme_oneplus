.class Lcom/android/systemui_ex/settings/ToggleSlider$1;
.super Ljava/lang/Object;
.source "ToggleSlider.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 126
    iput-object p1, p0, Lcom/android/systemui_ex/settings/ToggleSlider$1;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "toggle"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider$1;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    # getter for: Lcom/android/systemui_ex/settings/ToggleSlider;->mSlider:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/systemui_ex/settings/ToggleSlider;->access$000(Lcom/android/systemui_ex/settings/ToggleSlider;)Landroid/widget/SeekBar;

    move-result-object v1

    if-nez p2, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 131
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider$1;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    # getter for: Lcom/android/systemui_ex/settings/ToggleSlider;->mListener:Lcom/android/systemui_ex/settings/ToggleSlider$Listener;
    invoke-static {v0}, Lcom/android/systemui_ex/settings/ToggleSlider;->access$100(Lcom/android/systemui_ex/settings/ToggleSlider;)Lcom/android/systemui_ex/settings/ToggleSlider$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider$1;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    # getter for: Lcom/android/systemui_ex/settings/ToggleSlider;->mListener:Lcom/android/systemui_ex/settings/ToggleSlider$Listener;
    invoke-static {v0}, Lcom/android/systemui_ex/settings/ToggleSlider;->access$100(Lcom/android/systemui_ex/settings/ToggleSlider;)Lcom/android/systemui_ex/settings/ToggleSlider$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/settings/ToggleSlider$1;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    iget-object v2, p0, Lcom/android/systemui_ex/settings/ToggleSlider$1;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    # getter for: Lcom/android/systemui_ex/settings/ToggleSlider;->mTracking:Z
    invoke-static {v2}, Lcom/android/systemui_ex/settings/ToggleSlider;->access$200(Lcom/android/systemui_ex/settings/ToggleSlider;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui_ex/settings/ToggleSlider$1;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    # getter for: Lcom/android/systemui_ex/settings/ToggleSlider;->mSlider:Landroid/widget/SeekBar;
    invoke-static {v3}, Lcom/android/systemui_ex/settings/ToggleSlider;->access$000(Lcom/android/systemui_ex/settings/ToggleSlider;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-interface {v0, v1, v2, p2, v3}, Lcom/android/systemui_ex/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui_ex/settings/ToggleSlider;ZZI)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider$1;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    # getter for: Lcom/android/systemui_ex/settings/ToggleSlider;->mMirror:Lcom/android/systemui_ex/settings/ToggleSlider;
    invoke-static {v0}, Lcom/android/systemui_ex/settings/ToggleSlider;->access$300(Lcom/android/systemui_ex/settings/ToggleSlider;)Lcom/android/systemui_ex/settings/ToggleSlider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider$1;->this$0:Lcom/android/systemui_ex/settings/ToggleSlider;

    # getter for: Lcom/android/systemui_ex/settings/ToggleSlider;->mMirror:Lcom/android/systemui_ex/settings/ToggleSlider;
    invoke-static {v0}, Lcom/android/systemui_ex/settings/ToggleSlider;->access$300(Lcom/android/systemui_ex/settings/ToggleSlider;)Lcom/android/systemui_ex/settings/ToggleSlider;

    move-result-object v0

    # getter for: Lcom/android/systemui_ex/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v0}, Lcom/android/systemui_ex/settings/ToggleSlider;->access$400(Lcom/android/systemui_ex/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 139
    :cond_1
    return-void

    .line 129
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
