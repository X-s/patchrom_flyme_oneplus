.class Lcom/oneplus/gallery2/PhotoEditorFragment$13$2;
.super Ljava/lang/Object;
.source "PhotoEditorFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/PhotoEditorFragment$13;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery2/PhotoEditorFragment$13;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/PhotoEditorFragment$13;)V
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$13$2;->this$1:Lcom/oneplus/gallery2/PhotoEditorFragment$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 585
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$13$2;->this$1:Lcom/oneplus/gallery2/PhotoEditorFragment$13;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/PhotoEditorFragment$13;->dismissAllowingStateLoss()V

    .line 586
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$13$2;->this$1:Lcom/oneplus/gallery2/PhotoEditorFragment$13;

    iget-object v0, v0, Lcom/oneplus/gallery2/PhotoEditorFragment$13;->this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;

    # invokes: Lcom/oneplus/gallery2/PhotoEditorFragment;->save(ZZ)Z
    invoke-static {v0, v1, v1}, Lcom/oneplus/gallery2/PhotoEditorFragment;->access$1400(Lcom/oneplus/gallery2/PhotoEditorFragment;ZZ)Z

    .line 587
    return-void
.end method
