.class Lcom/oneplus/gallery/editor/FilterEditorMode$4;
.super Ljava/lang/Object;
.source "FilterEditorMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/editor/FilterEditorMode;->setupFilterToolbarButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/editor/FilterEditorMode;

.field final synthetic val$filterType:Lcom/oneplus/gallery/editor/FilterType;

.field final synthetic val$itemView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/editor/FilterEditorMode;Landroid/view/View;Lcom/oneplus/gallery/editor/FilterType;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/oneplus/gallery/editor/FilterEditorMode$4;->this$0:Lcom/oneplus/gallery/editor/FilterEditorMode;

    iput-object p2, p0, Lcom/oneplus/gallery/editor/FilterEditorMode$4;->val$itemView:Landroid/view/View;

    iput-object p3, p0, Lcom/oneplus/gallery/editor/FilterEditorMode$4;->val$filterType:Lcom/oneplus/gallery/editor/FilterType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 518
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode$4;->this$0:Lcom/oneplus/gallery/editor/FilterEditorMode;

    iget-object v1, p0, Lcom/oneplus/gallery/editor/FilterEditorMode$4;->val$itemView:Landroid/view/View;

    # setter for: Lcom/oneplus/gallery/editor/FilterEditorMode;->m_CurrentFilterItemView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/oneplus/gallery/editor/FilterEditorMode;->access$402(Lcom/oneplus/gallery/editor/FilterEditorMode;Landroid/view/View;)Landroid/view/View;

    .line 519
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode$4;->this$0:Lcom/oneplus/gallery/editor/FilterEditorMode;

    iget-object v1, p0, Lcom/oneplus/gallery/editor/FilterEditorMode$4;->val$itemView:Landroid/view/View;

    # invokes: Lcom/oneplus/gallery/editor/FilterEditorMode;->updateFilterItemPosition(Landroid/view/View;Z)V
    invoke-static {v0, v1, v3}, Lcom/oneplus/gallery/editor/FilterEditorMode;->access$500(Lcom/oneplus/gallery/editor/FilterEditorMode;Landroid/view/View;Z)V

    .line 520
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode$4;->this$0:Lcom/oneplus/gallery/editor/FilterEditorMode;

    iget-object v1, p0, Lcom/oneplus/gallery/editor/FilterEditorMode$4;->val$filterType:Lcom/oneplus/gallery/editor/FilterType;

    const/4 v2, 0x1

    # invokes: Lcom/oneplus/gallery/editor/FilterEditorMode;->changeFilterType(Lcom/oneplus/gallery/editor/FilterType;ZZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/gallery/editor/FilterEditorMode;->access$600(Lcom/oneplus/gallery/editor/FilterEditorMode;Lcom/oneplus/gallery/editor/FilterType;ZZ)V

    .line 521
    return-void
.end method
