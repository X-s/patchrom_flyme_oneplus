.class public Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "GridViewItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/GridViewItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemViewHolder"
.end annotation


# instance fields
.field public durationTextView:Landroid/widget/TextView;

.field public highResolutionThumbDecodeHandle:Lcom/oneplus/base/Handle;

.field public highThumbDecoded:Z

.field public final hightResolutionThumbDecodeCallback:Lcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;

.field public isThumbDecoded:Z

.field public isViewBinding:Z

.field public final lowResolutionThumbDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

.field public lowResolutionThumbDecodeHandle:Lcom/oneplus/base/Handle;

.field public media:Lcom/oneplus/gallery/media/Media;

.field public mimeType:Ljava/lang/String;

.field private selectedImageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/oneplus/gallery/GridViewItemAdapter;

.field public thumbnailImageView:Landroid/widget/ImageView;

.field public typeIconView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/GridViewItemAdapter;Landroid/view/View;)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->this$0:Lcom/oneplus/gallery/GridViewItemAdapter;

    .line 173
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->isViewBinding:Z

    .line 84
    new-instance v0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder$1;-><init>(Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;)V

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->lowResolutionThumbDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

    .line 141
    new-instance v0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder$2;-><init>(Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;)V

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->hightResolutionThumbDecodeCallback:Lcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;

    .line 174
    const v0, 0x7f06004c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    .line 175
    const v0, 0x7f06004d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->typeIconView:Landroid/widget/ImageView;

    .line 176
    const v0, 0x7f06004e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->durationTextView:Landroid/widget/TextView;

    .line 177
    const v0, 0x7f06004f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->selectedImageView:Landroid/widget/ImageView;

    .line 178
    return-void
.end method


# virtual methods
.method public setSelected(Z)V
    .locals 3
    .param p1, "isSelected"    # Z

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3e99999a    # 0.3f

    .line 182
    if-nez p1, :cond_2

    .line 184
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 185
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->typeIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 186
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->durationTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 187
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->this$0:Lcom/oneplus/gallery/GridViewItemAdapter;

    # getter for: Lcom/oneplus/gallery/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;
    invoke-static {v0}, Lcom/oneplus/gallery/GridViewItemAdapter;->access$100(Lcom/oneplus/gallery/GridViewItemAdapter;)Lcom/oneplus/gallery/GridViewFragment;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->this$0:Lcom/oneplus/gallery/GridViewItemAdapter;

    # getter for: Lcom/oneplus/gallery/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;
    invoke-static {v0}, Lcom/oneplus/gallery/GridViewItemAdapter;->access$100(Lcom/oneplus/gallery/GridViewItemAdapter;)Lcom/oneplus/gallery/GridViewFragment;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_SELECTION_STYLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;->PICKER_MULTIPLE_CHOICE:Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;

    if-eq v0, v1, :cond_1

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->selectedImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->selectedImageView:Landroid/widget/ImageView;

    const v1, 0x7f02006a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 196
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->typeIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 197
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->durationTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 199
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->this$0:Lcom/oneplus/gallery/GridViewItemAdapter;

    # getter for: Lcom/oneplus/gallery/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;
    invoke-static {v0}, Lcom/oneplus/gallery/GridViewItemAdapter;->access$100(Lcom/oneplus/gallery/GridViewItemAdapter;)Lcom/oneplus/gallery/GridViewFragment;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_SELECTION_STYLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;->DEFAULT:Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;

    if-eq v0, v1, :cond_3

    .line 200
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->selectedImageView:Landroid/widget/ImageView;

    const v1, 0x7f020064

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 207
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->selectedImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 202
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->this$0:Lcom/oneplus/gallery/GridViewItemAdapter;

    # getter for: Lcom/oneplus/gallery/GridViewItemAdapter;->m_IsBlackMode:Z
    invoke-static {v0}, Lcom/oneplus/gallery/GridViewItemAdapter;->access$300(Lcom/oneplus/gallery/GridViewItemAdapter;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 203
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->selectedImageView:Landroid/widget/ImageView;

    const v1, 0x7f020065

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 205
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->selectedImageView:Landroid/widget/ImageView;

    const v1, 0x7f020066

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
