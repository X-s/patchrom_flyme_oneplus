.class Lcom/oneplus/gallery/PhotoEditorFragment$14;
.super Ljava/lang/Object;
.source "PhotoEditorFragment.java"

# interfaces
.implements Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer$PaddingAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/PhotoEditorFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 725
    iput-object p1, p0, Lcom/oneplus/gallery/PhotoEditorFragment$14;->this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 3

    .prologue
    .line 735
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment$14;->this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

    sget-object v1, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_IS_PREVIEW_IMAGE_CONTAINER_ANIMATING:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # invokes: Lcom/oneplus/gallery/PhotoEditorFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    invoke-static {v0, v1, v2}, Lcom/oneplus/gallery/PhotoEditorFragment;->access$1600(Lcom/oneplus/gallery/PhotoEditorFragment;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 736
    return-void
.end method

.method public onAnimationStart()V
    .locals 3

    .prologue
    .line 729
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment$14;->this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

    sget-object v1, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_IS_PREVIEW_IMAGE_CONTAINER_ANIMATING:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # invokes: Lcom/oneplus/gallery/PhotoEditorFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    invoke-static {v0, v1, v2}, Lcom/oneplus/gallery/PhotoEditorFragment;->access$1500(Lcom/oneplus/gallery/PhotoEditorFragment;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 730
    return-void
.end method
