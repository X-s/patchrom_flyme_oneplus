.class Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;
.super Ljava/lang/Object;
.source "PreviewSeekBarPreferenceFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "onPreviewSeekBarChangeListener"
.end annotation


# instance fields
.field private mSeekByTouch:Z

.field final synthetic this$0:Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment;Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;-><init>(Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment;

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment;->-wrap1(Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment;IZ)V

    .line 73
    iget-boolean v0, p0, Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mSeekByTouch:Z

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment;->commit()V

    .line 71
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mSeekByTouch:Z

    .line 79
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment;->-get1(Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment;)Lcom/android/settings_ex/PreviewPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/PreviewPagerAdapter;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment;->-get1(Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment;)Lcom/android/settings_ex/PreviewPagerAdapter;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$1;-><init>(Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/PreviewPagerAdapter;->setAnimationEndAction(Ljava/lang/Runnable;)V

    .line 95
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mSeekByTouch:Z

    .line 84
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment;->commit()V

    goto :goto_0
.end method
