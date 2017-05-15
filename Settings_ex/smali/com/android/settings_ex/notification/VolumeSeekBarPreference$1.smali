.class Lcom/android/settings_ex/notification/VolumeSeekBarPreference$1;
.super Ljava/lang/Object;
.source "VolumeSeekBarPreference.java"

# interfaces
.implements Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMuted(ZZ)V
    .locals 1
    .param p1, "muted"    # Z
    .param p2, "zenMuted"    # Z

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mMuted:Z
    invoke-static {v0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->access$200(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mZenMuted:Z
    invoke-static {v0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->access$300(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)Z

    move-result v0

    if-ne v0, p2, :cond_0

    .line 131
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    # setter for: Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mMuted:Z
    invoke-static {v0, p1}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->access$202(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;Z)Z

    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    # setter for: Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mZenMuted:Z
    invoke-static {v0, p2}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->access$302(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;Z)Z

    .line 130
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    # invokes: Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->updateIconView()V
    invoke-static {v0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->access$400(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;
    invoke-static {v0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->access$000(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;
    invoke-static {v0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->access$000(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mStream:I
    invoke-static {v1}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->access$100(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;->onStreamValueChanged(II)V

    .line 124
    :cond_0
    return-void
.end method

.method public onSampleStarting(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V
    .locals 1
    .param p1, "sbv"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;
    invoke-static {v0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->access$000(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;
    invoke-static {v0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->access$000(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;->onSampleStarting(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    .line 118
    :cond_0
    return-void
.end method
