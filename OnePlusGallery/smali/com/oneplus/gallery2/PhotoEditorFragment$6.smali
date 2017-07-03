.class Lcom/oneplus/gallery2/PhotoEditorFragment$6;
.super Ljava/lang/Object;
.source "PhotoEditorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/PhotoEditorFragment;
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
    .line 260
    iput-object p1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$6;->this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$6;->this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;

    # invokes: Lcom/oneplus/gallery2/PhotoEditorFragment;->onPositiveButtonClick()V
    invoke-static {v0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->access$300(Lcom/oneplus/gallery2/PhotoEditorFragment;)V

    .line 265
    return-void
.end method
