.class Lcom/oneplus/gallery/PhotoEditorFragment$13;
.super Ljava/lang/Object;
.source "PhotoEditorFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/PhotoEditorFragment;->hideControlUI()V
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
    .line 670
    iput-object p1, p0, Lcom/oneplus/gallery/PhotoEditorFragment$13;->this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 674
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment$13;->this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

    # getter for: Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlUIContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/oneplus/gallery/PhotoEditorFragment;->access$1400(Lcom/oneplus/gallery/PhotoEditorFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 675
    return-void
.end method
