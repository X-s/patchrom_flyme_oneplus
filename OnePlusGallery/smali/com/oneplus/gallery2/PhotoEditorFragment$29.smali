.class Lcom/oneplus/gallery2/PhotoEditorFragment$29;
.super Ljava/lang/Object;
.source "PhotoEditorFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/PhotoEditorFragment;->updateProgressControlsVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V
    .locals 0

    .prologue
    .line 1787
    iput-object p1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$29;->this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1791
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$29;->this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;

    # getter for: Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;
    invoke-static {v0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->access$3300(Lcom/oneplus/gallery2/PhotoEditorFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1792
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$29;->this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;

    sget-object v1, Lcom/oneplus/gallery2/editor/ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery2/editor/ViewVisibilityState;

    # setter for: Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelVisibilityState:Lcom/oneplus/gallery2/editor/ViewVisibilityState;
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/PhotoEditorFragment;->access$3202(Lcom/oneplus/gallery2/PhotoEditorFragment;Lcom/oneplus/gallery2/editor/ViewVisibilityState;)Lcom/oneplus/gallery2/editor/ViewVisibilityState;

    .line 1793
    return-void
.end method
