.class Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$1;
.super Ljava/lang/Object;
.source "ColorFilterEditorMode.java"

# interfaces
.implements Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$1;->this$0:Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeClicked()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$1;->this$0:Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;

    # invokes: Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->onControlPanelNegativeClicked()V
    invoke-static {v0}, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->access$000(Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;)V

    .line 47
    return-void
.end method

.method public onPositiveClicked()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$1;->this$0:Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;

    # invokes: Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->onControlPanelPositiveClicked()V
    invoke-static {v0}, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->access$100(Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;)V

    .line 53
    return-void
.end method

.method public onProgressChanged(Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;)V
    .locals 1
    .param p1, "progress"    # Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$1;->this$0:Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;

    # invokes: Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->onControlPanelProgressChanged(Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;)V
    invoke-static {v0, p1}, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->access$200(Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;)V

    .line 59
    return-void
.end method
