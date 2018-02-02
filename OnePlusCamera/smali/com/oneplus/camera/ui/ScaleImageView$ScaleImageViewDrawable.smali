.class public Lcom/oneplus/camera/ui/ScaleImageView$ScaleImageViewDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ScaleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/ScaleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScaleImageViewDrawable"
.end annotation


# instance fields
.field private m_BitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic this$0:Lcom/oneplus/camera/ui/ScaleImageView;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/ui/ScaleImageView;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ScaleImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    .line 109
    iput-object p1, p0, Lcom/oneplus/camera/ui/ScaleImageView$ScaleImageViewDrawable;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 107
    iput-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$ScaleImageViewDrawable;->m_BitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 110
    if-eqz p2, :cond_0

    .line 111
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$ScaleImageViewDrawable;->m_BitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 109
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$ScaleImageViewDrawable;->m_BitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$ScaleImageViewDrawable;->m_BitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ScaleImageView$ScaleImageViewDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 125
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$ScaleImageViewDrawable;->m_BitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 122
    :cond_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$ScaleImageViewDrawable;->m_BitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$ScaleImageViewDrawable;->m_BitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 163
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$ScaleImageViewDrawable;->m_BitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$ScaleImageViewDrawable;->m_BitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    .line 155
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$ScaleImageViewDrawable;->m_BitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$ScaleImageViewDrawable;->m_BitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getOpacity()I

    move-result v0

    return v0

    .line 147
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$ScaleImageViewDrawable;->m_BitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$ScaleImageViewDrawable;->m_BitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 130
    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 115
    if-eqz p1, :cond_0

    .line 116
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$ScaleImageViewDrawable;->m_BitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 117
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ScaleImageView$ScaleImageViewDrawable;->invalidateSelf()V

    .line 114
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$ScaleImageViewDrawable;->m_BitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$ScaleImageViewDrawable;->m_BitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 136
    :cond_0
    return-void
.end method
