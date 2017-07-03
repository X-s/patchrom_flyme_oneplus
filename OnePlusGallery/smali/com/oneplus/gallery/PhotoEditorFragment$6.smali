.class Lcom/oneplus/gallery/PhotoEditorFragment$6;
.super Ljava/lang/Object;
.source "PhotoEditorFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/PhotoEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/PhotoEditorFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/oneplus/gallery/PhotoEditorFragment$6;->this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

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
    .line 254
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment$6;->this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

    # invokes: Lcom/oneplus/gallery/PhotoEditorFragment;->onSeekBarProgressChanged(Landroid/widget/SeekBar;IZ)V
    invoke-static {v0, p1, p2, p3}, Lcom/oneplus/gallery/PhotoEditorFragment;->access$300(Lcom/oneplus/gallery/PhotoEditorFragment;Landroid/widget/SeekBar;IZ)V

    .line 255
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 259
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 263
    return-void
.end method
