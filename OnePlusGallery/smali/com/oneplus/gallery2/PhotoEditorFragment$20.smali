.class Lcom/oneplus/gallery2/PhotoEditorFragment$20;
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
    .line 806
    iput-object p1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$20;->this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 810
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$20;->this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;

    const-class v1, Lcom/oneplus/gallery2/editor/CropEditorMode;

    # invokes: Lcom/oneplus/gallery2/PhotoEditorFragment;->changeEditorMode(Ljava/lang/Class;)V
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/PhotoEditorFragment;->access$2200(Lcom/oneplus/gallery2/PhotoEditorFragment;Ljava/lang/Class;)V

    .line 811
    return-void
.end method
