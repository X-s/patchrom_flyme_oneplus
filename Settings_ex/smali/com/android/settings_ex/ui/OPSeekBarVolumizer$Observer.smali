.class final Lcom/android/settings_ex/ui/OPSeekBarVolumizer$Observer;
.super Landroid/database/ContentObserver;
.source "OPSeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ui/OPSeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Observer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ui/OPSeekBarVolumizer;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/ui/OPSeekBarVolumizer;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer$Observer;->this$0:Lcom/android/settings_ex/ui/OPSeekBarVolumizer;

    .line 297
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 298
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 302
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 303
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer$Observer;->this$0:Lcom/android/settings_ex/ui/OPSeekBarVolumizer;

    # getter for: Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->access$200(Lcom/android/settings_ex/ui/OPSeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer$Observer;->this$0:Lcom/android/settings_ex/ui/OPSeekBarVolumizer;

    # getter for: Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->access$400(Lcom/android/settings_ex/ui/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer$Observer;->this$0:Lcom/android/settings_ex/ui/OPSeekBarVolumizer;

    # getter for: Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->access$400(Lcom/android/settings_ex/ui/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer$Observer;->this$0:Lcom/android/settings_ex/ui/OPSeekBarVolumizer;

    # getter for: Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mStreamType:I
    invoke-static {v2}, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->access$500(Lcom/android/settings_ex/ui/OPSeekBarVolumizer;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 305
    .local v0, "volume":I
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer$Observer;->this$0:Lcom/android/settings_ex/ui/OPSeekBarVolumizer;

    # getter for: Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mUiHandler:Lcom/android/settings_ex/ui/OPSeekBarVolumizer$H;
    invoke-static {v1}, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->access$600(Lcom/android/settings_ex/ui/OPSeekBarVolumizer;)Lcom/android/settings_ex/ui/OPSeekBarVolumizer$H;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/ui/OPSeekBarVolumizer$H;->postUpdateSlider(I)V

    .line 307
    .end local v0    # "volume":I
    :cond_0
    return-void
.end method
