.class Lcom/oneplus/gallery2/PhotoEditorFragment$30;
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
    .line 1780
    iput-object p1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$30;->this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1784
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$30;->this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;

    sget-object v1, Lcom/oneplus/gallery2/editor/ViewVisibilityState;->OUT_ANIMATION:Lcom/oneplus/gallery2/editor/ViewVisibilityState;

    # setter for: Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelVisibilityState:Lcom/oneplus/gallery2/editor/ViewVisibilityState;
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/PhotoEditorFragment;->access$3202(Lcom/oneplus/gallery2/PhotoEditorFragment;Lcom/oneplus/gallery2/editor/ViewVisibilityState;)Lcom/oneplus/gallery2/editor/ViewVisibilityState;

    .line 1785
    return-void
.end method
