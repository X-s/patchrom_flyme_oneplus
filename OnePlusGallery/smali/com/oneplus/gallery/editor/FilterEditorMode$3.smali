.class Lcom/oneplus/gallery/editor/FilterEditorMode$3;
.super Ljava/lang/Object;
.source "FilterEditorMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/editor/FilterEditorMode;->onFragmentResuming()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/editor/FilterEditorMode;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/editor/FilterEditorMode;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/oneplus/gallery/editor/FilterEditorMode$3;->this$0:Lcom/oneplus/gallery/editor/FilterEditorMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 444
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode$3;->this$0:Lcom/oneplus/gallery/editor/FilterEditorMode;

    iget-object v1, p0, Lcom/oneplus/gallery/editor/FilterEditorMode$3;->this$0:Lcom/oneplus/gallery/editor/FilterEditorMode;

    # getter for: Lcom/oneplus/gallery/editor/FilterEditorMode;->m_CurrentFilterItemView:Landroid/view/View;
    invoke-static {v1}, Lcom/oneplus/gallery/editor/FilterEditorMode;->access$400(Lcom/oneplus/gallery/editor/FilterEditorMode;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    # invokes: Lcom/oneplus/gallery/editor/FilterEditorMode;->updateFilterItemPosition(Landroid/view/View;Z)V
    invoke-static {v0, v1, v2}, Lcom/oneplus/gallery/editor/FilterEditorMode;->access$500(Lcom/oneplus/gallery/editor/FilterEditorMode;Landroid/view/View;Z)V

    .line 445
    return-void
.end method
