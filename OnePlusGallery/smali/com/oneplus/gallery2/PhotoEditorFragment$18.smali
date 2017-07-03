.class Lcom/oneplus/gallery2/PhotoEditorFragment$18;
.super Ljava/lang/Object;
.source "PhotoEditorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/PhotoEditorFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 782
    iput-object p1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$18;->this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 786
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$18;->this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->exit()V

    .line 787
    return-void
.end method
