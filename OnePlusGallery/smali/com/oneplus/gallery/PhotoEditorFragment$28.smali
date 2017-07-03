.class Lcom/oneplus/gallery/PhotoEditorFragment$28;
.super Ljava/lang/Object;
.source "PhotoEditorFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/PhotoEditorFragment;->updateProgressControlsVisibility(Z)V
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
    .line 1722
    iput-object p1, p0, Lcom/oneplus/gallery/PhotoEditorFragment$28;->this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment$28;->this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

    # getter for: Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;
    invoke-static {v0}, Lcom/oneplus/gallery/PhotoEditorFragment;->access$3200(Lcom/oneplus/gallery/PhotoEditorFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1727
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment$28;->this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

    sget-object v1, Lcom/oneplus/gallery/editor/ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/editor/ViewVisibilityState;

    # setter for: Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelVisibilityState:Lcom/oneplus/gallery/editor/ViewVisibilityState;
    invoke-static {v0, v1}, Lcom/oneplus/gallery/PhotoEditorFragment;->access$3102(Lcom/oneplus/gallery/PhotoEditorFragment;Lcom/oneplus/gallery/editor/ViewVisibilityState;)Lcom/oneplus/gallery/editor/ViewVisibilityState;

    .line 1728
    return-void
.end method
