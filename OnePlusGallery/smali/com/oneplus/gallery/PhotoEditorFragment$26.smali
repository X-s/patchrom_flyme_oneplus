.class Lcom/oneplus/gallery/PhotoEditorFragment$26;
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
    .line 1681
    iput-object p1, p0, Lcom/oneplus/gallery/PhotoEditorFragment$26;->this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment$26;->this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

    sget-object v1, Lcom/oneplus/gallery/editor/ViewVisibilityState;->VISIBLE:Lcom/oneplus/gallery/editor/ViewVisibilityState;

    # setter for: Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelVisibilityState:Lcom/oneplus/gallery/editor/ViewVisibilityState;
    invoke-static {v0, v1}, Lcom/oneplus/gallery/PhotoEditorFragment;->access$3102(Lcom/oneplus/gallery/PhotoEditorFragment;Lcom/oneplus/gallery/editor/ViewVisibilityState;)Lcom/oneplus/gallery/editor/ViewVisibilityState;

    .line 1686
    return-void
.end method
