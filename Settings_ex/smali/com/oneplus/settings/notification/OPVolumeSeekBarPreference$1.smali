.class Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference$1;
.super Ljava/lang/Object;
.source "OPVolumeSeekBarPreference.java"

# interfaces
.implements Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference$1;->this$0:Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMuted(ZZ)V
    .locals 1
    .param p1, "muted"    # Z
    .param p2, "zenMuted"    # Z

    .prologue
    .line 136
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference$1;->this$0:Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;

    # getter for: Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mMuted:Z
    invoke-static {v0}, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->access$200(Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference$1;->this$0:Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;

    # getter for: Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mZenMuted:Z
    invoke-static {v0}, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->access$300(Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;)Z

    move-result v0

    if-ne v0, p2, :cond_0

    .line 140
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference$1;->this$0:Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;

    # setter for: Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mMuted:Z
    invoke-static {v0, p1}, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->access$202(Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;Z)Z

    .line 138
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference$1;->this$0:Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;

    # setter for: Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mZenMuted:Z
    invoke-static {v0, p2}, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->access$302(Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;Z)Z

    .line 139
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference$1;->this$0:Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;

    # invokes: Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->updateIconView()V
    invoke-static {v0}, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->access$400(Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;)V

    goto :goto_0
.end method

.method public onProgressChanged(Lcom/oneplus/widget/OPSeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Lcom/oneplus/widget/OPSeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 130
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference$1;->this$0:Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;

    # getter for: Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mCallback:Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference$Callback;
    invoke-static {v0}, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->access$000(Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;)Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference$1;->this$0:Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;

    # getter for: Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mCallback:Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference$Callback;
    invoke-static {v0}, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->access$000(Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;)Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference$1;->this$0:Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;

    # getter for: Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mStream:I
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->access$100(Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference$Callback;->onStreamValueChanged(II)V

    .line 133
    :cond_0
    return-void
.end method

.method public onSampleStarting(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V
    .locals 1
    .param p1, "sbv"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference$1;->this$0:Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;

    # getter for: Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mCallback:Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference$Callback;
    invoke-static {v0}, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->access$000(Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;)Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference$1;->this$0:Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;

    # getter for: Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mCallback:Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference$Callback;
    invoke-static {v0}, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->access$000(Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;)Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference$Callback;->onSampleStarting(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    .line 127
    :cond_0
    return-void
.end method
