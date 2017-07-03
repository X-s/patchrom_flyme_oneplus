.class Lcom/oneplus/gallery2/editor/DrawingEditorMode$2;
.super Ljava/lang/Object;
.source "DrawingEditorMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/editor/DrawingEditorMode;->onCreateUI(Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/editor/DrawingEditorMode;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/editor/DrawingEditorMode;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$2;->this$0:Lcom/oneplus/gallery2/editor/DrawingEditorMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$2;->this$0:Lcom/oneplus/gallery2/editor/DrawingEditorMode;

    # getter for: Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_DrawingOverlay:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;
    invoke-static {v0}, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->access$000(Lcom/oneplus/gallery2/editor/DrawingEditorMode;)Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$2;->this$0:Lcom/oneplus/gallery2/editor/DrawingEditorMode;

    # getter for: Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_DrawingOverlay:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;
    invoke-static {v0}, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->access$000(Lcom/oneplus/gallery2/editor/DrawingEditorMode;)Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->removeLastPath()V

    .line 362
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$2;->this$0:Lcom/oneplus/gallery2/editor/DrawingEditorMode;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->getPhotoEditor()Lcom/oneplus/gallery2/editor/PhotoEditor;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->refreshPreview(I)V

    .line 364
    :cond_0
    return-void
.end method
