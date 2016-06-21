.class public Lcom/android/systemui_ex/statusbar/DismissViewButton;
.super Landroid/widget/Button;
.source "DismissViewButton.java"


# instance fields
.field private mActiveDrawable:Landroid/graphics/drawable/Drawable;

.field private mAnimatedDismissDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private final mStaticDismissDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui_ex/statusbar/DismissViewButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui_ex/statusbar/DismissViewButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui_ex/statusbar/DismissViewButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/DismissViewButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/DismissViewButton;->mAnimatedDismissDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 56
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/DismissViewButton;->mAnimatedDismissDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 57
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/DismissViewButton;->mAnimatedDismissDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/DismissViewButton;->mAnimatedDismissDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/DismissViewButton;->mAnimatedDismissDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setBounds(IIII)V

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/DismissViewButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/DismissViewButton;->mStaticDismissDrawable:Landroid/graphics/drawable/Drawable;

    .line 63
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/DismissViewButton;->mStaticDismissDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/DismissViewButton;->mStaticDismissDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/DismissViewButton;->mStaticDismissDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 67
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/DismissViewButton;->mStaticDismissDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 68
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/DismissViewButton;->mStaticDismissDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/DismissViewButton;->mActiveDrawable:Landroid/graphics/drawable/Drawable;

    .line 69
    return-void
.end method


# virtual methods
.method public getDrawingRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/widget/Button;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 117
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/DismissViewButton;->mParent:Landroid/view/ViewParent;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v0

    .line 118
    .local v0, "translationX":F
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/DismissViewButton;->mParent:Landroid/view/ViewParent;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v1

    .line 119
    .local v1, "translationY":F
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 120
    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 121
    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 122
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 123
    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public isButtonStatic()Z
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/DismissViewButton;->mActiveDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/DismissViewButton;->mStaticDismissDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v4, -0x40800000    # -1.0f

    .line 73
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 75
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/DismissViewButton;->mActiveDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 76
    .local v0, "drawableHeight":I
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/DismissViewButton;->getLayoutDirection()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 77
    .local v2, "isRtl":Z
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/DismissViewButton;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v5, v0, 0x2

    add-int v1, v3, v5

    .line 78
    .local v1, "dx":I
    :goto_1
    int-to-float v3, v1

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/DismissViewButton;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    int-to-float v6, v0

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 80
    if-eqz v2, :cond_2

    move v3, v4

    :goto_2
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 81
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/DismissViewButton;->mActiveDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 83
    return-void

    .line 76
    .end local v1    # "dx":I
    .end local v2    # "isRtl":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 77
    .restart local v2    # "isRtl":Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/DismissViewButton;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v5, v0, 0x2

    sub-int v1, v3, v5

    goto :goto_1

    .line 80
    .restart local v1    # "dx":I
    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_2
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/DismissViewButton;->mAnimatedDismissDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/DismissViewButton;->mAnimatedDismissDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/DismissViewButton;->mActiveDrawable:Landroid/graphics/drawable/Drawable;

    .line 89
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/DismissViewButton;->mAnimatedDismissDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 91
    :cond_0
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    return v0
.end method

.method public showButton()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/DismissViewButton;->mStaticDismissDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/DismissViewButton;->mActiveDrawable:Landroid/graphics/drawable/Drawable;

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/DismissViewButton;->invalidate()V

    .line 128
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/widget/Button;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/DismissViewButton;->mAnimatedDismissDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/DismissViewButton;->mStaticDismissDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
