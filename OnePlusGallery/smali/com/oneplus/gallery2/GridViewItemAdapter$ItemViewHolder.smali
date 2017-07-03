.class public Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "GridViewItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/GridViewItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemViewHolder"
.end annotation


# instance fields
.field public duration:Ljava/lang/Long;

.field public durationObtainingHandle:Lcom/oneplus/base/Handle;

.field public highResolutionThumbDecodeHandle:Lcom/oneplus/base/Handle;

.field public highThumbDecoded:Z

.field public final hightResolutionThumbDecodeCallback:Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;

.field public isThumbDecoded:Z

.field public isViewBinding:Z

.field public itemInfoTextView:Landroid/widget/TextView;

.field public final lowResolutionThumbDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

.field public lowResolutionThumbDecodeHandle:Lcom/oneplus/base/Handle;

.field public media:Lcom/oneplus/gallery2/media/Media;

.field public mimeType:Ljava/lang/String;

.field private selectedImageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/oneplus/gallery2/GridViewItemAdapter;

.field public thumbnailImageView:Landroid/widget/ImageView;

.field public typeIconView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/GridViewItemAdapter;Landroid/view/View;)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->this$0:Lcom/oneplus/gallery2/GridViewItemAdapter;

    .line 188
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->isViewBinding:Z

    .line 99
    new-instance v0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder$1;-><init>(Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->lowResolutionThumbDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

    .line 156
    new-instance v0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder$2;-><init>(Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->hightResolutionThumbDecodeCallback:Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;

    .line 189
    const v0, 0x7f06004c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    .line 190
    const v0, 0x7f06004d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->typeIconView:Landroid/widget/ImageView;

    .line 191
    const v0, 0x7f06004e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->itemInfoTextView:Landroid/widget/TextView;

    .line 192
    const v0, 0x7f06004f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->selectedImageView:Landroid/widget/ImageView;

    .line 193
    return-void
.end method


# virtual methods
.method public setSelected(Z)V
    .locals 3
    .param p1, "isSelected"    # Z

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3e99999a    # 0.3f

    .line 197
    if-nez p1, :cond_2

    .line 199
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 200
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->typeIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 201
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->itemInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 202
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->this$0:Lcom/oneplus/gallery2/GridViewItemAdapter;

    # getter for: Lcom/oneplus/gallery2/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;
    invoke-static {v0}, Lcom/oneplus/gallery2/GridViewItemAdapter;->access$100(Lcom/oneplus/gallery2/GridViewItemAdapter;)Lcom/oneplus/gallery2/GridViewFragment;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->this$0:Lcom/oneplus/gallery2/GridViewItemAdapter;

    # getter for: Lcom/oneplus/gallery2/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;
    invoke-static {v0}, Lcom/oneplus/gallery2/GridViewItemAdapter;->access$100(Lcom/oneplus/gallery2/GridViewItemAdapter;)Lcom/oneplus/gallery2/GridViewFragment;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_SELECTION_STYLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;->PICKER_MULTIPLE_CHOICE:Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;

    if-eq v0, v1, :cond_1

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->selectedImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->selectedImageView:Landroid/widget/ImageView;

    const v1, 0x7f02006a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 211
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->typeIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 212
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->itemInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 214
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->this$0:Lcom/oneplus/gallery2/GridViewItemAdapter;

    # getter for: Lcom/oneplus/gallery2/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;
    invoke-static {v0}, Lcom/oneplus/gallery2/GridViewItemAdapter;->access$100(Lcom/oneplus/gallery2/GridViewItemAdapter;)Lcom/oneplus/gallery2/GridViewFragment;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_SELECTION_STYLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;->DEFAULT:Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;

    if-eq v0, v1, :cond_3

    .line 215
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->selectedImageView:Landroid/widget/ImageView;

    const v1, 0x7f020064

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 222
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->selectedImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 217
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->this$0:Lcom/oneplus/gallery2/GridViewItemAdapter;

    # getter for: Lcom/oneplus/gallery2/GridViewItemAdapter;->m_IsBlackMode:Z
    invoke-static {v0}, Lcom/oneplus/gallery2/GridViewItemAdapter;->access$400(Lcom/oneplus/gallery2/GridViewItemAdapter;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 218
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->selectedImageView:Landroid/widget/ImageView;

    const v1, 0x7f020065

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 220
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->selectedImageView:Landroid/widget/ImageView;

    const v1, 0x7f020066

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
