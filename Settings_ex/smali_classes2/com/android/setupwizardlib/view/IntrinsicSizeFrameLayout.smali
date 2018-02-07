.class public Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;
.super Landroid/widget/FrameLayout;
.source "IntrinsicSizeFrameLayout.java"


# instance fields
.field private mIntrinsicHeight:I

.field private mIntrinsicWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    iput v1, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->mIntrinsicHeight:I

    .line 39
    iput v1, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->mIntrinsicWidth:I

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput v0, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->mIntrinsicHeight:I

    .line 39
    iput v0, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->mIntrinsicWidth:I

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput v0, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->mIntrinsicHeight:I

    .line 39
    iput v0, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->mIntrinsicWidth:I

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method private getIntrinsicMeasureSpec(II)I
    .locals 4
    .param p1, "measureSpec"    # I
    .param p2, "intrinsicSize"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 74
    if-gtz p2, :cond_0

    .line 76
    return p1

    .line 78
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 79
    .local v0, "mode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 80
    .local v1, "size":I
    if-nez v0, :cond_1

    .line 82
    iget v2, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->mIntrinsicHeight:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    .line 83
    :cond_1
    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_2

    .line 86
    iget v2, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->mIntrinsicHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    .line 90
    :cond_2
    return p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x0

    .line 59
    sget-object v1, Lcom/android/setupwizardlib/R$styleable;->SuwMaxSizeFrameLayout:[I

    .line 58
    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/android/setupwizardlib/R$styleable;->SuwMaxSizeFrameLayout_android_height:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 60
    iput v1, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->mIntrinsicHeight:I

    .line 63
    sget v1, Lcom/android/setupwizardlib/R$styleable;->SuwMaxSizeFrameLayout_android_width:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 62
    iput v1, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->mIntrinsicWidth:I

    .line 64
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 69
    iget v0, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->mIntrinsicWidth:I

    invoke-direct {p0, p1, v0}, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->getIntrinsicMeasureSpec(II)I

    move-result v0

    .line 70
    iget v1, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->mIntrinsicHeight:I

    invoke-direct {p0, p2, v1}, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->getIntrinsicMeasureSpec(II)I

    move-result v1

    .line 69
    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 68
    return-void
.end method
