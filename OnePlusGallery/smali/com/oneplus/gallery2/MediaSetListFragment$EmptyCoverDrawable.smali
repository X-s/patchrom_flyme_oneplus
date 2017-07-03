.class final Lcom/oneplus/gallery2/MediaSetListFragment$EmptyCoverDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MediaSetListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/MediaSetListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyCoverDrawable"
.end annotation


# instance fields
.field private final m_BackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private final m_Resources:Landroid/content/res/Resources;

.field private final m_TextDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isBlackMode"    # Z

    .prologue
    .line 280
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 281
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment$EmptyCoverDrawable;->m_Resources:Landroid/content/res/Resources;

    .line 282
    if-eqz p2, :cond_0

    const v0, 0x7f0200a2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment$EmptyCoverDrawable;->m_BackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 283
    new-instance v0, Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-direct {v0}, Lcom/oneplus/drawable/ShadowTextDrawable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment$EmptyCoverDrawable;->m_TextDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    .line 284
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$EmptyCoverDrawable;->m_TextDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    if-eqz p2, :cond_1

    const v0, 0x7f0a001e

    :goto_1
    invoke-virtual {v1, p1, v0}, Lcom/oneplus/drawable/ShadowTextDrawable;->setTextAppearance(Landroid/content/Context;I)V

    .line 285
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment$EmptyCoverDrawable;->m_TextDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$EmptyCoverDrawable;->m_Resources:Landroid/content/res/Resources;

    const v2, 0x7f09007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/drawable/ShadowTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 286
    return-void

    .line 282
    :cond_0
    const v0, 0x7f0200a3

    goto :goto_0

    .line 284
    :cond_1
    const v0, 0x7f0a001d

    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment$EmptyCoverDrawable;->m_BackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 292
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment$EmptyCoverDrawable;->m_TextDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-virtual {v0, p1}, Lcom/oneplus/drawable/ShadowTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 293
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 298
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$EmptyCoverDrawable;->m_BackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 299
    .local v0, "height":I
    if-lez v0, :cond_0

    .end local v0    # "height":I
    :goto_0
    return v0

    .restart local v0    # "height":I
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$EmptyCoverDrawable;->m_TextDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-virtual {v1}, Lcom/oneplus/drawable/ShadowTextDrawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 305
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$EmptyCoverDrawable;->m_BackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 306
    .local v0, "width":I
    if-lez v0, :cond_0

    .end local v0    # "width":I
    :goto_0
    return v0

    .restart local v0    # "width":I
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$EmptyCoverDrawable;->m_TextDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-virtual {v1}, Lcom/oneplus/drawable/ShadowTextDrawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 312
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 317
    return-void
.end method

.method public setBounds(IIII)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 322
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 323
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$EmptyCoverDrawable;->m_BackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 324
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$EmptyCoverDrawable;->m_TextDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-virtual {v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->getIntrinsicWidth()I

    move-result v1

    .line 325
    .local v1, "width":I
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$EmptyCoverDrawable;->m_TextDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-virtual {v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 326
    .local v0, "height":I
    sub-int v2, p3, p1

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p1, v2

    .line 327
    sub-int v2, p4, p2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p2, v2

    .line 328
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$EmptyCoverDrawable;->m_TextDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    add-int v3, p1, v1

    add-int v4, p2, v0

    invoke-virtual {v2, p1, p2, v3, v4}, Lcom/oneplus/drawable/ShadowTextDrawable;->setBounds(IIII)V

    .line 329
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 333
    return-void
.end method
