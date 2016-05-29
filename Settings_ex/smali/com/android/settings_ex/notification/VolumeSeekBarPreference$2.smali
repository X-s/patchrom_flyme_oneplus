.class Lcom/android/settings_ex/notification/VolumeSeekBarPreference$2;
.super Lcom/android/settings_ex/ui/OPSeekBarVolumizer;
.source "VolumeSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;Landroid/content/Context;ILandroid/net/Uri;Lcom/android/settings_ex/ui/OPSeekBarVolumizer$Callback;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I
    .param p4, "x2"    # Landroid/net/Uri;
    .param p5, "x3"    # Lcom/android/settings_ex/ui/OPSeekBarVolumizer$Callback;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$2;->this$0:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;-><init>(Landroid/content/Context;ILandroid/net/Uri;Lcom/android/settings_ex/ui/OPSeekBarVolumizer$Callback;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 147
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 148
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$2;->this$0:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;
    invoke-static {v0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->access$000(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$2;->this$0:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mStream:I
    invoke-static {v1}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->access$100(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;->onStreamValueChanged(II)V

    .line 149
    return-void
.end method
