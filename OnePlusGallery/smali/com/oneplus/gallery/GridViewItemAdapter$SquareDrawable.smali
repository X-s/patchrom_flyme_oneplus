.class Lcom/oneplus/gallery/GridViewItemAdapter$SquareDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GridViewItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/GridViewItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SquareDrawable"
.end annotation


# instance fields
.field private final mHeight:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRect:Landroid/graphics/Rect;

.field private final mWidth:I

.field final synthetic this$0:Lcom/oneplus/gallery/GridViewItemAdapter;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/GridViewItemAdapter;II)V
    .locals 1
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 480
    iput-object p1, p0, Lcom/oneplus/gallery/GridViewItemAdapter$SquareDrawable;->this$0:Lcom/oneplus/gallery/GridViewItemAdapter;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 481
    iput p2, p0, Lcom/oneplus/gallery/GridViewItemAdapter$SquareDrawable;->mWidth:I

    .line 482
    iput p3, p0, Lcom/oneplus/gallery/GridViewItemAdapter$SquareDrawable;->mHeight:I

    .line 483
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter$SquareDrawable;->mPaint:Landroid/graphics/Paint;

    .line 484
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter$SquareDrawable;->mRect:Landroid/graphics/Rect;

    .line 485
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 490
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter$SquareDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oneplus/gallery/GridViewItemAdapter$SquareDrawable;->this$0:Lcom/oneplus/gallery/GridViewItemAdapter;

    # getter for: Lcom/oneplus/gallery/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;
    invoke-static {v1}, Lcom/oneplus/gallery/GridViewItemAdapter;->access$100(Lcom/oneplus/gallery/GridViewItemAdapter;)Lcom/oneplus/gallery/GridViewFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/gallery/GridViewFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v1

    const-string v2, "gridview_camera_item_background"

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 491
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter$SquareDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 492
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter$SquareDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 494
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter$SquareDrawable;->mRect:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 495
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter$SquareDrawable;->mRect:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 496
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter$SquareDrawable;->mRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/oneplus/gallery/GridViewItemAdapter$SquareDrawable;->mWidth:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 497
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter$SquareDrawable;->mRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/oneplus/gallery/GridViewItemAdapter$SquareDrawable;->mHeight:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 499
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter$SquareDrawable;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oneplus/gallery/GridViewItemAdapter$SquareDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 501
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 511
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 504
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 507
    return-void
.end method
