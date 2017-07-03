.class Lcom/oneplus/gallery/editor/DrawingEditorMode$2;
.super Ljava/lang/Object;
.source "DrawingEditorMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/editor/DrawingEditorMode;->onCreateUI(Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/editor/DrawingEditorMode;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/editor/DrawingEditorMode;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$2;->this$0:Lcom/oneplus/gallery/editor/DrawingEditorMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$2;->this$0:Lcom/oneplus/gallery/editor/DrawingEditorMode;

    # getter for: Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingOverlay:Lcom/oneplus/gallery/editor/PhotoEditorDrawing;
    invoke-static {v0}, Lcom/oneplus/gallery/editor/DrawingEditorMode;->access$000(Lcom/oneplus/gallery/editor/DrawingEditorMode;)Lcom/oneplus/gallery/editor/PhotoEditorDrawing;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$2;->this$0:Lcom/oneplus/gallery/editor/DrawingEditorMode;

    # getter for: Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingOverlay:Lcom/oneplus/gallery/editor/PhotoEditorDrawing;
    invoke-static {v0}, Lcom/oneplus/gallery/editor/DrawingEditorMode;->access$000(Lcom/oneplus/gallery/editor/DrawingEditorMode;)Lcom/oneplus/gallery/editor/PhotoEditorDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->removeLastPath()V

    .line 357
    iget-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$2;->this$0:Lcom/oneplus/gallery/editor/DrawingEditorMode;

    invoke-virtual {v0}, Lcom/oneplus/gallery/editor/DrawingEditorMode;->getPhotoEditor()Lcom/oneplus/gallery/editor/PhotoEditor;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/editor/PhotoEditor;->refreshPreview(I)V

    .line 359
    :cond_0
    return-void
.end method
