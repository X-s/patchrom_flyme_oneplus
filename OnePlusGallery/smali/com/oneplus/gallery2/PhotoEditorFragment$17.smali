.class Lcom/oneplus/gallery2/PhotoEditorFragment$17;
.super Ljava/lang/Object;
.source "PhotoEditorFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 770
    iput-object p1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$17;->this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 774
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$17;->this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;

    # invokes: Lcom/oneplus/gallery2/PhotoEditorFragment;->onPreviewImageViewTouch(Landroid/view/MotionEvent;)Z
    invoke-static {v0, p2}, Lcom/oneplus/gallery2/PhotoEditorFragment;->access$2000(Lcom/oneplus/gallery2/PhotoEditorFragment;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
