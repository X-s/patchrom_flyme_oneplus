.class public Lcom/oneplus/settings/password/OPNumPadKeyForPin;
.super Landroid/view/ViewGroup;
.source "OPNumPadKeyForPin.java"


# static fields
.field static sKlondike:[Ljava/lang/String;


# instance fields
.field private layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mDigit:I

.field private mDigitText:Landroid/widget/TextView;

.field private mEnableHaptics:Z

.field private mListener:Landroid/view/View$OnClickListener;

.field private mPM:Landroid/os/PowerManager;

.field private mTextView:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

.field private mTextViewResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/password/OPNumPadKeyForPin;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/password/OPNumPadKeyForPin;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, -0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/4 v2, -0x1

    iput v2, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->mDigit:I

    .line 51
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 55
    new-instance v2, Lcom/oneplus/settings/password/OPNumPadKeyForPin$1;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/password/OPNumPadKeyForPin$1;-><init>(Lcom/oneplus/settings/password/OPNumPadKeyForPin;)V

    iput-object v2, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->mListener:Landroid/view/View$OnClickListener;

    .line 87
    invoke-virtual {p0, v4}, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->setFocusable(Z)V

    .line 89
    sget-object v2, Lcom/android/settings_ex/R$styleable;->NumPadKey:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 93
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    :try_start_0
    iget v3, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->mDigit:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->mDigit:I

    .line 94
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->mTextViewResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    iget-object v2, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->mEnableHaptics:Z

    .line 106
    iget-object v2, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->mPM:Landroid/os/PowerManager;

    .line 107
    invoke-virtual {p0}, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 109
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040071

    invoke-virtual {v1, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 111
    const v2, 0x7f1200cb

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->mDigitText:Landroid/widget/TextView;

    .line 112
    iget-object v2, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->mDigitText:Landroid/widget/TextView;

    const/4 v3, 0x2

    const/high16 v4, 0x41e80000    # 29.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 113
    iget-object v2, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 114
    iget-object v2, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->mDigitText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget-object v2, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->mDigitText:Landroid/widget/TextView;

    const-string v3, "sans-serif-light"

    invoke-static {v3, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 117
    iget-object v2, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->mDigitText:Landroid/widget/TextView;

    iget v3, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->mDigit:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v2, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->mContext:Landroid/content/Context;

    const v3, 0x7f020157

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 135
    return-void

    .line 96
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method

.method static synthetic access$000(Lcom/oneplus/settings/password/OPNumPadKeyForPin;)Lcom/oneplus/settings/password/OPPasswordTextViewForPin;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPNumPadKeyForPin;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->mTextView:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    return-object v0
.end method

.method static synthetic access$002(Lcom/oneplus/settings/password/OPNumPadKeyForPin;Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Lcom/oneplus/settings/password/OPPasswordTextViewForPin;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPNumPadKeyForPin;
    .param p1, "x1"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->mTextView:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/settings/password/OPNumPadKeyForPin;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPNumPadKeyForPin;

    .prologue
    .line 40
    iget v0, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->mTextViewResId:I

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/password/OPNumPadKeyForPin;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPNumPadKeyForPin;

    .prologue
    .line 40
    iget v0, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->mDigit:I

    return v0
.end method


# virtual methods
.method public doHapticKeyClick()V
    .locals 2

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->mEnableHaptics:Z

    if-eqz v0, :cond_0

    .line 181
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->performHapticFeedback(II)Z

    .line 186
    :cond_0
    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 139
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 143
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 153
    iget-object v6, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    .line 156
    .local v2, "digitHeight":I
    move v5, v2

    .line 157
    .local v5, "totalHeight":I
    invoke-virtual {p0}, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v5, 0x2

    sub-int v4, v6, v7

    .line 158
    .local v4, "top":I
    invoke-virtual {p0}, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->getWidth()I

    move-result v6

    div-int/lit8 v1, v6, 0x2

    .line 159
    .local v1, "centerX":I
    iget-object v6, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v3, v1, v6

    .line 160
    .local v3, "left":I
    add-int v0, v4, v2

    .line 161
    .local v0, "bottom":I
    iget-object v6, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->mDigitText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v6, v3, v4, v7, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 171
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 147
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 148
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->measureChildren(II)V

    .line 149
    return-void
.end method

.method public userActivity()V
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 75
    return-void
.end method
