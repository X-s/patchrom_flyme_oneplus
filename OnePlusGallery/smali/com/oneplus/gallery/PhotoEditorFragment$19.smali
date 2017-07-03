.class Lcom/oneplus/gallery/PhotoEditorFragment$19;
.super Ljava/lang/Object;
.source "PhotoEditorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 788
    iput-object p1, p0, Lcom/oneplus/gallery/PhotoEditorFragment$19;->this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 792
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment$19;->this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

    const-class v1, Lcom/oneplus/gallery/editor/CropEditorMode;

    # invokes: Lcom/oneplus/gallery/PhotoEditorFragment;->changeEditorMode(Ljava/lang/Class;)V
    invoke-static {v0, v1}, Lcom/oneplus/gallery/PhotoEditorFragment;->access$2100(Lcom/oneplus/gallery/PhotoEditorFragment;Ljava/lang/Class;)V

    .line 793
    return-void
.end method
