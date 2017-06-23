.class public Landroid/widget/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mChildrenHeight:I

.field private mChildrenWidth:I

.field private mColumnCount:I

.field private mHorizontalSpacing:I

.field private mRowCount:I

.field private mVerticalSpacing:I

.field private mWrap:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Landroid/widget/FlowLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/widget/FlowLayout;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v5, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 58
    sget-object v4, Lcom/android/internal/R$styleable;->FlowLayout:[I

    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 61
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 62
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 63
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 64
    .local v2, "attr":I
    packed-switch v2, :pswitch_data_0

    .line 62
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 66
    :pswitch_0
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/FlowLayout;->mChildrenWidth:I

    goto :goto_1

    .line 69
    :pswitch_1
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/FlowLayout;->mChildrenHeight:I

    goto :goto_1

    .line 72
    :pswitch_2
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/FlowLayout;->mVerticalSpacing:I

    goto :goto_1

    .line 75
    :pswitch_3
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/FlowLayout;->mHorizontalSpacing:I

    goto :goto_1

    .line 78
    :pswitch_4
    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/widget/FlowLayout;->mColumnCount:I

    goto :goto_1

    .line 81
    :pswitch_5
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/widget/FlowLayout;->mWrap:Z

    goto :goto_1

    .line 86
    .end local v2    # "attr":I
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    return-void

    .line 64
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public getHeightForSize(I)I
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 181
    invoke-virtual {p0}, Landroid/widget/FlowLayout;->getPaddingTop()I

    move-result v0

    iget v1, p0, Landroid/widget/FlowLayout;->mChildrenHeight:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    iget v1, p0, Landroid/widget/FlowLayout;->mVerticalSpacing:I

    add-int/lit8 v2, p1, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FlowLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getMaxHeight()I
    .locals 3

    .prologue
    .line 155
    invoke-virtual {p0}, Landroid/widget/FlowLayout;->getPaddingTop()I

    move-result v0

    iget v1, p0, Landroid/widget/FlowLayout;->mRowCount:I

    iget v2, p0, Landroid/widget/FlowLayout;->mChildrenHeight:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/widget/FlowLayout;->mRowCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/widget/FlowLayout;->mVerticalSpacing:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FlowLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getMinHeight()I
    .locals 2

    .prologue
    .line 148
    invoke-virtual {p0}, Landroid/widget/FlowLayout;->getPaddingTop()I

    move-result v0

    iget v1, p0, Landroid/widget/FlowLayout;->mChildrenHeight:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FlowLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getRowCount()I
    .locals 4

    .prologue
    .line 133
    invoke-virtual {p0}, Landroid/widget/FlowLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FlowLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/FlowLayout;->getPaddingBottom()I

    move-result v3

    sub-int v0, v2, v3

    .line 134
    .local v0, "height":I
    const/4 v1, 0x0

    .line 135
    .local v1, "rows":I
    :cond_0
    if-ltz v0, :cond_1

    .line 136
    iget v2, p0, Landroid/widget/FlowLayout;->mChildrenHeight:I

    sub-int/2addr v0, v2

    .line 137
    add-int/lit8 v1, v1, 0x1

    .line 139
    iget v2, p0, Landroid/widget/FlowLayout;->mChildrenHeight:I

    sub-int v2, v0, v2

    if-gtz v2, :cond_0

    .line 141
    :cond_1
    return v1
.end method

.method public getStandardHeight()I
    .locals 7

    .prologue
    .line 163
    invoke-virtual {p0}, Landroid/widget/FlowLayout;->getMeasuredHeight()I

    move-result v1

    .line 164
    .local v1, "height":I
    invoke-virtual {p0}, Landroid/widget/FlowLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FlowLayout;->getPaddingBottom()I

    move-result v5

    add-int v3, v4, v5

    .line 165
    .local v3, "padding":I
    iget v4, p0, Landroid/widget/FlowLayout;->mRowCount:I

    if-lez v4, :cond_2

    .line 166
    iget v2, p0, Landroid/widget/FlowLayout;->mRowCount:I

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 167
    iget v4, p0, Landroid/widget/FlowLayout;->mChildrenHeight:I

    mul-int/2addr v4, v2

    add-int v5, v3, v4

    add-int/lit8 v4, v2, -0x1

    if-ltz v4, :cond_0

    add-int/lit8 v4, v2, -0x1

    :goto_1
    iget v6, p0, Landroid/widget/FlowLayout;->mVerticalSpacing:I

    mul-int/2addr v4, v6

    add-int v0, v5, v4

    .line 169
    .local v0, "currentRowSize":I
    if-lt v1, v0, :cond_1

    .line 174
    .end local v0    # "currentRowSize":I
    .end local v2    # "i":I
    :goto_2
    return v0

    .line 167
    .restart local v2    # "i":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 166
    .restart local v0    # "currentRowSize":I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .end local v0    # "currentRowSize":I
    .end local v2    # "i":I
    :cond_2
    move v0, v1

    .line 174
    goto :goto_2
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 239
    invoke-virtual {p0}, Landroid/widget/FlowLayout;->getChildCount()I

    move-result v1

    .line 240
    .local v1, "count":I
    sub-int v3, p4, p2

    .line 241
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/widget/FlowLayout;->getPaddingLeft()I

    move-result v4

    .line 242
    .local v4, "xPos":I
    invoke-virtual {p0}, Landroid/widget/FlowLayout;->getPaddingTop()I

    move-result v5

    .line 244
    .local v5, "yPos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 245
    invoke-virtual {p0, v2}, Landroid/widget/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 246
    .local v0, "child":Landroid/view/View;
    iget-boolean v6, p0, Landroid/widget/FlowLayout;->mWrap:Z

    if-eqz v6, :cond_0

    iget v6, p0, Landroid/widget/FlowLayout;->mChildrenWidth:I

    add-int/2addr v6, v4

    if-le v6, v3, :cond_0

    .line 247
    invoke-virtual {p0}, Landroid/widget/FlowLayout;->getPaddingLeft()I

    move-result v4

    .line 248
    iget v6, p0, Landroid/widget/FlowLayout;->mChildrenHeight:I

    iget v7, p0, Landroid/widget/FlowLayout;->mVerticalSpacing:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 250
    :cond_0
    iget v6, p0, Landroid/widget/FlowLayout;->mChildrenWidth:I

    add-int/2addr v6, v4

    iget v7, p0, Landroid/widget/FlowLayout;->mChildrenHeight:I

    add-int/2addr v7, v5

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 251
    iget v6, p0, Landroid/widget/FlowLayout;->mChildrenWidth:I

    iget v7, p0, Landroid/widget/FlowLayout;->mHorizontalSpacing:I

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    .line 244
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 253
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 190
    sget-boolean v8, Landroid/widget/FlowLayout;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 192
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FlowLayout;->getChildCount()I

    move-result v1

    .line 194
    .local v1, "count":I
    iget-boolean v8, p0, Landroid/widget/FlowLayout;->mWrap:Z

    if-eqz v8, :cond_2

    .line 195
    invoke-virtual {p0}, Landroid/widget/FlowLayout;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/FlowLayout;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Landroid/widget/FlowLayout;->mChildrenWidth:I

    iget v10, p0, Landroid/widget/FlowLayout;->mColumnCount:I

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    iget v9, p0, Landroid/widget/FlowLayout;->mColumnCount:I

    iget v10, p0, Landroid/widget/FlowLayout;->mHorizontalSpacing:I

    mul-int/2addr v9, v10

    add-int v5, v8, v9

    .line 201
    .local v5, "width":I
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/FlowLayout;->getPaddingBottom()I

    move-result v9

    add-int v2, v8, v9

    .line 203
    .local v2, "height":I
    invoke-virtual {p0}, Landroid/widget/FlowLayout;->getPaddingLeft()I

    move-result v6

    .line 204
    .local v6, "xPos":I
    invoke-virtual {p0}, Landroid/widget/FlowLayout;->getPaddingTop()I

    move-result v7

    .line 206
    .local v7, "yPos":I
    const/4 v4, 0x0

    .line 207
    .local v4, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 208
    invoke-virtual {p0, v3}, Landroid/widget/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 209
    .local v0, "child":Landroid/view/View;
    iget v8, p0, Landroid/widget/FlowLayout;->mChildrenWidth:I

    iget v9, p0, Landroid/widget/FlowLayout;->mChildrenHeight:I

    invoke-virtual {v0, v8, v9}, Landroid/view/View;->measure(II)V

    .line 211
    iget-boolean v8, p0, Landroid/widget/FlowLayout;->mWrap:Z

    if-eqz v8, :cond_1

    iget v8, p0, Landroid/widget/FlowLayout;->mChildrenWidth:I

    add-int/2addr v8, v6

    if-le v8, v5, :cond_1

    .line 212
    invoke-virtual {p0}, Landroid/widget/FlowLayout;->getPaddingLeft()I

    move-result v6

    .line 213
    iget v8, p0, Landroid/widget/FlowLayout;->mChildrenHeight:I

    iget v9, p0, Landroid/widget/FlowLayout;->mVerticalSpacing:I

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    .line 214
    add-int/lit8 v4, v4, 0x1

    .line 217
    :cond_1
    iget v8, p0, Landroid/widget/FlowLayout;->mChildrenWidth:I

    iget v9, p0, Landroid/widget/FlowLayout;->mHorizontalSpacing:I

    add-int/2addr v8, v9

    add-int/2addr v6, v8

    .line 207
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 198
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "height":I
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "width":I
    .end local v6    # "xPos":I
    .end local v7    # "yPos":I
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FlowLayout;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/FlowLayout;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Landroid/widget/FlowLayout;->mChildrenWidth:I

    mul-int/2addr v9, v1

    add-int/2addr v8, v9

    add-int/lit8 v9, v1, -0x1

    iget v10, p0, Landroid/widget/FlowLayout;->mHorizontalSpacing:I

    mul-int/2addr v9, v10

    add-int v5, v8, v9

    .restart local v5    # "width":I
    goto :goto_0

    .line 219
    .restart local v2    # "height":I
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    .restart local v6    # "xPos":I
    .restart local v7    # "yPos":I
    :cond_3
    add-int/lit8 v8, v4, 0x1

    iput v8, p0, Landroid/widget/FlowLayout;->mRowCount:I

    .line 221
    invoke-virtual {p0}, Landroid/widget/FlowLayout;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    .line 223
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    if-nez v8, :cond_5

    .line 224
    iget v8, p0, Landroid/widget/FlowLayout;->mChildrenHeight:I

    add-int v2, v7, v8

    .line 231
    :cond_4
    :goto_2
    invoke-virtual {p0, v5, v2}, Landroid/widget/FlowLayout;->setMeasuredDimension(II)V

    .line 232
    return-void

    .line 225
    :cond_5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    const/high16 v9, -0x80000000

    if-ne v8, v9, :cond_4

    .line 226
    iget v8, p0, Landroid/widget/FlowLayout;->mChildrenHeight:I

    add-int/2addr v8, v7

    if-ge v8, v2, :cond_4

    .line 227
    iget v8, p0, Landroid/widget/FlowLayout;->mChildrenHeight:I

    add-int v2, v7, v8

    goto :goto_2
.end method

.method public setChildrenSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 104
    iput p1, p0, Landroid/widget/FlowLayout;->mChildrenWidth:I

    .line 105
    iput p2, p0, Landroid/widget/FlowLayout;->mChildrenHeight:I

    .line 106
    return-void
.end method

.method public setColumnCount(I)V
    .locals 0
    .param p1, "columnCount"    # I

    .prologue
    .line 126
    iput p1, p0, Landroid/widget/FlowLayout;->mColumnCount:I

    .line 127
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 0
    .param p1, "horizontalSpacing"    # I

    .prologue
    .line 112
    iput p1, p0, Landroid/widget/FlowLayout;->mHorizontalSpacing:I

    .line 113
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 0
    .param p1, "verticalSpacing"    # I

    .prologue
    .line 119
    iput p1, p0, Landroid/widget/FlowLayout;->mVerticalSpacing:I

    .line 120
    return-void
.end method

.method public setWrap(Z)V
    .locals 1
    .param p1, "wrap"    # Z

    .prologue
    .line 93
    iget-boolean v0, p0, Landroid/widget/FlowLayout;->mWrap:Z

    if-ne p1, v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    iput-boolean p1, p0, Landroid/widget/FlowLayout;->mWrap:Z

    .line 97
    invoke-virtual {p0}, Landroid/widget/FlowLayout;->requestLayout()V

    goto :goto_0
.end method
