.class Lcom/oneplus/gallery2/editor/FilterEditorMode$4;
.super Ljava/lang/Object;
.source "FilterEditorMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/editor/FilterEditorMode;->setupFilterToolbarButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/editor/FilterEditorMode;

.field final synthetic val$filterType:Lcom/oneplus/gallery2/editor/FilterType;

.field final synthetic val$itemView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/editor/FilterEditorMode;Landroid/view/View;Lcom/oneplus/gallery2/editor/FilterType;)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lcom/oneplus/gallery2/editor/FilterEditorMode$4;->this$0:Lcom/oneplus/gallery2/editor/FilterEditorMode;

    iput-object p2, p0, Lcom/oneplus/gallery2/editor/FilterEditorMode$4;->val$itemView:Landroid/view/View;

    iput-object p3, p0, Lcom/oneplus/gallery2/editor/FilterEditorMode$4;->val$filterType:Lcom/oneplus/gallery2/editor/FilterType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 533
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/FilterEditorMode$4;->this$0:Lcom/oneplus/gallery2/editor/FilterEditorMode;

    iget-object v1, p0, Lcom/oneplus/gallery2/editor/FilterEditorMode$4;->val$itemView:Landroid/view/View;

    # setter for: Lcom/oneplus/gallery2/editor/FilterEditorMode;->m_CurrentFilterItemView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/editor/FilterEditorMode;->access$402(Lcom/oneplus/gallery2/editor/FilterEditorMode;Landroid/view/View;)Landroid/view/View;

    .line 534
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/FilterEditorMode$4;->this$0:Lcom/oneplus/gallery2/editor/FilterEditorMode;

    iget-object v1, p0, Lcom/oneplus/gallery2/editor/FilterEditorMode$4;->val$itemView:Landroid/view/View;

    # invokes: Lcom/oneplus/gallery2/editor/FilterEditorMode;->updateFilterItemPosition(Landroid/view/View;Z)V
    invoke-static {v0, v1, v3}, Lcom/oneplus/gallery2/editor/FilterEditorMode;->access$500(Lcom/oneplus/gallery2/editor/FilterEditorMode;Landroid/view/View;Z)V

    .line 535
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/FilterEditorMode$4;->this$0:Lcom/oneplus/gallery2/editor/FilterEditorMode;

    iget-object v1, p0, Lcom/oneplus/gallery2/editor/FilterEditorMode$4;->val$filterType:Lcom/oneplus/gallery2/editor/FilterType;

    const/4 v2, 0x1

    # invokes: Lcom/oneplus/gallery2/editor/FilterEditorMode;->changeFilterType(Lcom/oneplus/gallery2/editor/FilterType;ZZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/gallery2/editor/FilterEditorMode;->access$600(Lcom/oneplus/gallery2/editor/FilterEditorMode;Lcom/oneplus/gallery2/editor/FilterType;ZZ)V

    .line 536
    return-void
.end method
