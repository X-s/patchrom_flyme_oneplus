.class public Lcom/oneplus/gallery/GridViewFragment$HeaderSpanSizeLookup;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "GridViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/GridViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeaderSpanSizeLookup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/GridViewFragment;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/GridViewFragment;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/oneplus/gallery/GridViewFragment$HeaderSpanSizeLookup;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanGroupIndex(II)I
    .locals 1
    .param p1, "adapterPosition"    # I
    .param p2, "spanCount"    # I

    .prologue
    .line 180
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v0

    return v0
.end method

.method public getSpanIndex(II)I
    .locals 1
    .param p1, "position"    # I
    .param p2, "spanCount"    # I

    .prologue
    .line 186
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v0

    return v0
.end method

.method public getSpanSize(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$HeaderSpanSizeLookup;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_IsGrouping:Z
    invoke-static {v0}, Lcom/oneplus/gallery/GridViewFragment;->access$000(Lcom/oneplus/gallery/GridViewFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$HeaderSpanSizeLookup;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery/GridViewFragment;->isHeaderPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$HeaderSpanSizeLookup;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_GridviewColumns:I
    invoke-static {v0}, Lcom/oneplus/gallery/GridViewFragment;->access$100(Lcom/oneplus/gallery/GridViewFragment;)I

    move-result v0

    .line 195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
