.class Lcom/oneplus/gallery/VideoPlayerActivity$13;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/VideoPlayerActivity;->onCreate(Landroid/os/Bundle;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 552
    iput-object p1, p0, Lcom/oneplus/gallery/VideoPlayerActivity$13;->this$0:Lcom/oneplus/gallery/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 556
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity$13;->this$0:Lcom/oneplus/gallery/VideoPlayerActivity;

    # invokes: Lcom/oneplus/gallery/VideoPlayerActivity;->onSeekBarProgressChanged(Landroid/widget/SeekBar;IZ)V
    invoke-static {v0, p1, p2, p3}, Lcom/oneplus/gallery/VideoPlayerActivity;->access$2000(Lcom/oneplus/gallery/VideoPlayerActivity;Landroid/widget/SeekBar;IZ)V

    .line 557
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 562
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity$13;->this$0:Lcom/oneplus/gallery/VideoPlayerActivity;

    # invokes: Lcom/oneplus/gallery/VideoPlayerActivity;->onSeekBarStartTracking(Landroid/widget/SeekBar;)V
    invoke-static {v0, p1}, Lcom/oneplus/gallery/VideoPlayerActivity;->access$2100(Lcom/oneplus/gallery/VideoPlayerActivity;Landroid/widget/SeekBar;)V

    .line 563
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 568
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity$13;->this$0:Lcom/oneplus/gallery/VideoPlayerActivity;

    # invokes: Lcom/oneplus/gallery/VideoPlayerActivity;->onSeekBarStopTracking(Landroid/widget/SeekBar;)V
    invoke-static {v0, p1}, Lcom/oneplus/gallery/VideoPlayerActivity;->access$2200(Lcom/oneplus/gallery/VideoPlayerActivity;Landroid/widget/SeekBar;)V

    .line 569
    return-void
.end method
