.class Lcom/oneplus/gallery/editor/DrawingEditorMode$4;
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
    .line 394
    iput-object p1, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$4;->this$0:Lcom/oneplus/gallery/editor/DrawingEditorMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$4;->this$0:Lcom/oneplus/gallery/editor/DrawingEditorMode;

    # getter for: Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_Mode:Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;
    invoke-static {v0}, Lcom/oneplus/gallery/editor/DrawingEditorMode;->access$100(Lcom/oneplus/gallery/editor/DrawingEditorMode;)Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;->MOVING:Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;

    if-ne v0, v1, :cond_0

    .line 400
    iget-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$4;->this$0:Lcom/oneplus/gallery/editor/DrawingEditorMode;

    # invokes: Lcom/oneplus/gallery/editor/DrawingEditorMode;->toggleMode()V
    invoke-static {v0}, Lcom/oneplus/gallery/editor/DrawingEditorMode;->access$200(Lcom/oneplus/gallery/editor/DrawingEditorMode;)V

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$4;->this$0:Lcom/oneplus/gallery/editor/DrawingEditorMode;

    iget-object v1, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$4;->this$0:Lcom/oneplus/gallery/editor/DrawingEditorMode;

    # getter for: Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingColorButtons:Ljava/util/List;
    invoke-static {v1}, Lcom/oneplus/gallery/editor/DrawingEditorMode;->access$400(Lcom/oneplus/gallery/editor/DrawingEditorMode;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    # setter for: Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingColorIndex:I
    invoke-static {v0, v1}, Lcom/oneplus/gallery/editor/DrawingEditorMode;->access$302(Lcom/oneplus/gallery/editor/DrawingEditorMode;I)I

    .line 404
    iget-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$4;->this$0:Lcom/oneplus/gallery/editor/DrawingEditorMode;

    # invokes: Lcom/oneplus/gallery/editor/DrawingEditorMode;->updateDrawingButtonsSelection()V
    invoke-static {v0}, Lcom/oneplus/gallery/editor/DrawingEditorMode;->access$500(Lcom/oneplus/gallery/editor/DrawingEditorMode;)V

    .line 405
    return-void
.end method
