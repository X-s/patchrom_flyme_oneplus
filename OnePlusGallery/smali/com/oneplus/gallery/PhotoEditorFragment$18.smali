.class Lcom/oneplus/gallery/PhotoEditorFragment$18;
.super Ljava/lang/Object;
.source "PhotoEditorFragment.java"

# interfaces
.implements Landroid/widget/Toolbar$OnMenuItemClickListener;


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
    .line 772
    iput-object p1, p0, Lcom/oneplus/gallery/PhotoEditorFragment$18;->this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 776
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment$18;->this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

    # getter for: Lcom/oneplus/gallery/PhotoEditorFragment;->m_SaveButton:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/oneplus/gallery/PhotoEditorFragment;->access$2000(Lcom/oneplus/gallery/PhotoEditorFragment;)Landroid/view/MenuItem;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment$18;->this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

    # invokes: Lcom/oneplus/gallery/PhotoEditorFragment;->save(ZZ)Z
    invoke-static {v0, v1, v1}, Lcom/oneplus/gallery/PhotoEditorFragment;->access$1300(Lcom/oneplus/gallery/PhotoEditorFragment;ZZ)Z

    .line 778
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
