.class public Lcom/oneplus/tuner/view/OnePlusClearEditText;
.super Landroid/widget/EditText;
.source "OnePlusClearEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private hasFoucs:Z

.field private mClearDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/tuner/view/OnePlusClearEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/tuner/view/OnePlusClearEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0}, Lcom/oneplus/tuner/view/OnePlusClearEditText;->init()V

    .line 33
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-virtual {p0}, Lcom/oneplus/tuner/view/OnePlusClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/oneplus/tuner/view/OnePlusClearEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 37
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusClearEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/oneplus/tuner/view/OnePlusClearEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/view/OnePlusClearEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusClearEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oneplus/tuner/view/OnePlusClearEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/tuner/view/OnePlusClearEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 44
    invoke-direct {p0, v3}, Lcom/oneplus/tuner/view/OnePlusClearEditText;->setClearIconVisible(Z)V

    .line 45
    invoke-virtual {p0, p0}, Lcom/oneplus/tuner/view/OnePlusClearEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 46
    invoke-virtual {p0, p0}, Lcom/oneplus/tuner/view/OnePlusClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 47
    return-void
.end method

.method private setClearIconVisible(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    .line 70
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusClearEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 71
    .local v0, "right":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/tuner/view/OnePlusClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p0}, Lcom/oneplus/tuner/view/OnePlusClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p0}, Lcom/oneplus/tuner/view/OnePlusClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/oneplus/tuner/view/OnePlusClearEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 73
    return-void

    .line 70
    .end local v0    # "right":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 79
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 91
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v0, 0x0

    .line 95
    iput-boolean p2, p0, Lcom/oneplus/tuner/view/OnePlusClearEditText;->hasFoucs:Z

    .line 96
    if-eqz p2, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/oneplus/tuner/view/OnePlusClearEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v0}, Lcom/oneplus/tuner/view/OnePlusClearEditText;->setClearIconVisible(Z)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-direct {p0, v0}, Lcom/oneplus/tuner/view/OnePlusClearEditText;->setClearIconVisible(Z)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/oneplus/tuner/view/OnePlusClearEditText;->hasFoucs:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/oneplus/tuner/view/OnePlusClearEditText;->setClearIconVisible(Z)V

    .line 86
    :cond_0
    return-void

    .line 84
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v2, 0x1

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-ne v8, v2, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/oneplus/tuner/view/OnePlusClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v8

    aget-object v8, v8, v9

    if-eqz v8, :cond_0

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v5, v8

    .line 54
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v6, v8

    .line 55
    .local v6, "y":I
    invoke-virtual {p0}, Lcom/oneplus/tuner/view/OnePlusClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v8

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 56
    .local v4, "rect":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 57
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/oneplus/tuner/view/OnePlusClearEditText;->getHeight()I

    move-result v8

    sub-int/2addr v8, v1

    div-int/lit8 v0, v8, 0x2

    .line 58
    .local v0, "distance":I
    invoke-virtual {p0}, Lcom/oneplus/tuner/view/OnePlusClearEditText;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/oneplus/tuner/view/OnePlusClearEditText;->getTotalPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    if-le v5, v8, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/tuner/view/OnePlusClearEditText;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/oneplus/tuner/view/OnePlusClearEditText;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    if-ge v5, v8, :cond_1

    move v3, v2

    .line 60
    .local v3, "isInnerWidth":Z
    :goto_0
    if-le v6, v0, :cond_2

    add-int v8, v0, v1

    if-ge v6, v8, :cond_2

    .line 61
    .local v2, "isInnerHeight":Z
    :goto_1
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 62
    const-string v7, ""

    invoke-virtual {p0, v7}, Lcom/oneplus/tuner/view/OnePlusClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .end local v0    # "distance":I
    .end local v1    # "height":I
    .end local v2    # "isInnerHeight":Z
    .end local v3    # "isInnerWidth":Z
    .end local v4    # "rect":Landroid/graphics/Rect;
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    return v7

    .restart local v0    # "distance":I
    .restart local v1    # "height":I
    .restart local v4    # "rect":Landroid/graphics/Rect;
    .restart local v5    # "x":I
    .restart local v6    # "y":I
    :cond_1
    move v3, v7

    .line 58
    goto :goto_0

    .restart local v3    # "isInnerWidth":Z
    :cond_2
    move v2, v7

    .line 60
    goto :goto_1
.end method
