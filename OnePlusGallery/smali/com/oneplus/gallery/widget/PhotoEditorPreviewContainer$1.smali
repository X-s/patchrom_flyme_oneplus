.class Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer$1;
.super Ljava/lang/Object;
.source "PhotoEditorPreviewContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer$1;->this$0:Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer$1;->this$0:Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer$1;->this$0:Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;

    invoke-virtual {v2}, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer$1;->this$0:Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;

    invoke-virtual {v3}, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer$1;->this$0:Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;

    invoke-virtual {v4}, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer$1;->this$0:Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;

    invoke-virtual {v5}, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->getBottom()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->onLayout(ZIIII)V

    .line 56
    return-void
.end method
