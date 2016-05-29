.class Lcom/oneplus/settings/notification/VolumeSeekBarPreference$1;
.super Ljava/lang/Object;
.source "VolumeSeekBarPreference.java"

# interfaces
.implements Landroid/preference/SeekBarVolumizer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/VolumeSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/notification/VolumeSeekBarPreference;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/oneplus/settings/notification/VolumeSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMuted(Z)V
    .locals 1
    .param p1, "muted"    # Z

    .prologue
    .line 155
    iget-object v0, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/oneplus/settings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mMuted:Z
    invoke-static {v0}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->access$200(Lcom/oneplus/settings/notification/VolumeSeekBarPreference;)Z

    move-result v0

    if-ne v0, p1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/oneplus/settings/notification/VolumeSeekBarPreference;

    # setter for: Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mMuted:Z
    invoke-static {v0, p1}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->access$202(Lcom/oneplus/settings/notification/VolumeSeekBarPreference;Z)Z

    .line 157
    iget-object v0, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/oneplus/settings/notification/VolumeSeekBarPreference;

    # invokes: Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->updateIconView()V
    invoke-static {v0}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->access$300(Lcom/oneplus/settings/notification/VolumeSeekBarPreference;)V

    .line 159
    iget-object v0, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/oneplus/settings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mCallback:Lcom/oneplus/settings/notification/VolumeSeekBarPreference$Callback;
    invoke-static {v0}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->access$000(Lcom/oneplus/settings/notification/VolumeSeekBarPreference;)Lcom/oneplus/settings/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/oneplus/settings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mCallback:Lcom/oneplus/settings/notification/VolumeSeekBarPreference$Callback;
    invoke-static {v0}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->access$000(Lcom/oneplus/settings/notification/VolumeSeekBarPreference;)Lcom/oneplus/settings/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference$Callback;->onStreamMuted(Z)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 149
    iget-object v0, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/oneplus/settings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mCallback:Lcom/oneplus/settings/notification/VolumeSeekBarPreference$Callback;
    invoke-static {v0}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->access$000(Lcom/oneplus/settings/notification/VolumeSeekBarPreference;)Lcom/oneplus/settings/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/oneplus/settings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mCallback:Lcom/oneplus/settings/notification/VolumeSeekBarPreference$Callback;
    invoke-static {v0}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->access$000(Lcom/oneplus/settings/notification/VolumeSeekBarPreference;)Lcom/oneplus/settings/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/oneplus/settings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mStream:I
    invoke-static {v1}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->access$100(Lcom/oneplus/settings/notification/VolumeSeekBarPreference;)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference$Callback;->onStreamValueChanged(II)V

    .line 152
    :cond_0
    return-void
.end method

.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 1
    .param p1, "sbv"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/oneplus/settings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mCallback:Lcom/oneplus/settings/notification/VolumeSeekBarPreference$Callback;
    invoke-static {v0}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->access$000(Lcom/oneplus/settings/notification/VolumeSeekBarPreference;)Lcom/oneplus/settings/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/oneplus/settings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mCallback:Lcom/oneplus/settings/notification/VolumeSeekBarPreference$Callback;
    invoke-static {v0}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->access$000(Lcom/oneplus/settings/notification/VolumeSeekBarPreference;)Lcom/oneplus/settings/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference$Callback;->onSampleStarting(Landroid/preference/SeekBarVolumizer;)V

    .line 146
    :cond_0
    return-void
.end method
