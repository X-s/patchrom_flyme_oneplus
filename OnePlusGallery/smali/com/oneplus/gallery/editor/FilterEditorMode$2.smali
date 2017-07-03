.class Lcom/oneplus/gallery/editor/FilterEditorMode$2;
.super Ljava/lang/Object;
.source "FilterEditorMode.java"

# interfaces
.implements Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/editor/FilterEditorMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/editor/FilterEditorMode;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/editor/FilterEditorMode;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/oneplus/gallery/editor/FilterEditorMode$2;->this$0:Lcom/oneplus/gallery/editor/FilterEditorMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeClicked()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode$2;->this$0:Lcom/oneplus/gallery/editor/FilterEditorMode;

    # invokes: Lcom/oneplus/gallery/editor/FilterEditorMode;->onControlPanelNegativeClicked()V
    invoke-static {v0}, Lcom/oneplus/gallery/editor/FilterEditorMode;->access$100(Lcom/oneplus/gallery/editor/FilterEditorMode;)V

    .line 87
    return-void
.end method

.method public onPositiveClicked()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode$2;->this$0:Lcom/oneplus/gallery/editor/FilterEditorMode;

    # invokes: Lcom/oneplus/gallery/editor/FilterEditorMode;->onControlPanelPositiveClicked()V
    invoke-static {v0}, Lcom/oneplus/gallery/editor/FilterEditorMode;->access$200(Lcom/oneplus/gallery/editor/FilterEditorMode;)V

    .line 93
    return-void
.end method

.method public onProgressChanged(Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelProgress;)V
    .locals 1
    .param p1, "progress"    # Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelProgress;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode$2;->this$0:Lcom/oneplus/gallery/editor/FilterEditorMode;

    # invokes: Lcom/oneplus/gallery/editor/FilterEditorMode;->onControlPanelProgressChanged(Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelProgress;)V
    invoke-static {v0, p1}, Lcom/oneplus/gallery/editor/FilterEditorMode;->access$300(Lcom/oneplus/gallery/editor/FilterEditorMode;Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelProgress;)V

    .line 99
    return-void
.end method
