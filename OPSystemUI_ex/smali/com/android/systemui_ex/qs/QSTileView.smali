.class public Lcom/android/systemui_ex/qs/QSTileView;
.super Landroid/view/ViewGroup;
.source "QSTileView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/qs/QSTileView$H;
    }
.end annotation


# static fields
.field private static final CONDENSED:Landroid/graphics/Typeface;


# instance fields
.field private mClickPrimary:Landroid/view/View$OnClickListener;

.field private mClickSecondary:Landroid/view/View$OnClickListener;

.field protected final mContext:Landroid/content/Context;

.field private final mDivider:Landroid/view/View;

.field private mDual:Z

.field private mDualLabel:Lcom/android/systemui_ex/qs/QSDualTileLabel;

.field private final mDualTileVerticalPaddingPx:I

.field private final mHandler:Lcom/android/systemui_ex/qs/QSTileView$H;

.field private final mIcon:Landroid/view/View;

.field private final mIconSizePx:I

.field private mLabel:Landroid/widget/TextView;

.field private mLongClick:Landroid/view/View$OnLongClickListener;

.field private mRipple:Landroid/graphics/drawable/RippleDrawable;

.field private mTileBackground:Landroid/graphics/drawable/Drawable;

.field private final mTilePaddingBelowIconPx:I

.field private mTilePaddingTopPx:I

.field private final mTileSpacingPx:I

.field private final mTopBackgroundView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-string v0, "sans-serif-condensed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/systemui_ex/qs/QSTileView;->CONDENSED:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v2, Lcom/android/systemui_ex/qs/QSTileView$H;

    invoke-direct {v2, p0}, Lcom/android/systemui_ex/qs/QSTileView$H;-><init>(Lcom/android/systemui_ex/qs/QSTileView;)V

    iput-object v2, p0, Lcom/android/systemui_ex/qs/QSTileView;->mHandler:Lcom/android/systemui_ex/qs/QSTileView$H;

    .line 73
    iput-object p1, p0, Lcom/android/systemui_ex/qs/QSTileView;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 75
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0d0038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui_ex/qs/QSTileView;->mIconSizePx:I

    .line 76
    const v2, 0x7f0d0043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui_ex/qs/QSTileView;->mTileSpacingPx:I

    .line 77
    const v2, 0x7f0d0041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui_ex/qs/QSTileView;->mTilePaddingBelowIconPx:I

    .line 78
    const v2, 0x7f0d003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDualTileVerticalPaddingPx:I

    .line 80
    invoke-direct {p0}, Lcom/android/systemui_ex/qs/QSTileView;->newTileBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui_ex/qs/QSTileView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    .line 81
    invoke-direct {p0}, Lcom/android/systemui_ex/qs/QSTileView;->recreateLabel()V

    .line 82
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/qs/QSTileView;->setClipChildren(Z)V

    .line 84
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui_ex/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    .line 85
    iget-object v2, p0, Lcom/android/systemui_ex/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/qs/QSTileView;->addView(Landroid/view/View;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui_ex/qs/QSTileView;->createIcon()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui_ex/qs/QSTileView;->mIcon:Landroid/view/View;

    .line 88
    iget-object v2, p0, Lcom/android/systemui_ex/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/qs/QSTileView;->addView(Landroid/view/View;)V

    .line 90
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDivider:Landroid/view/View;

    .line 91
    iget-object v2, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDivider:Landroid/view/View;

    const v3, 0x7f080011

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 92
    const v2, 0x7f0d003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 93
    .local v0, "dh":I
    iget-object v2, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDivider:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object v2, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDivider:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/qs/QSTileView;->addView(Landroid/view/View;)V

    .line 96
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/qs/QSTileView;->setClickable(Z)V

    .line 98
    invoke-direct {p0}, Lcom/android/systemui_ex/qs/QSTileView;->updateTopPadding()V

    .line 99
    return-void
.end method

.method private static exactly(I)I
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 255
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private labelView()Landroid/view/View;
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDual:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDualLabel:Lcom/android/systemui_ex/qs/QSDualTileLabel;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    goto :goto_0
.end method

.method private static layout(Landroid/view/View;II)V
    .locals 2
    .param p0, "child"    # Landroid/view/View;
    .param p1, "left"    # I
    .param p2, "top"    # I

    .prologue
    .line 292
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 293
    return-void
.end method

.method private newTileBackground()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 227
    const/4 v3, 0x1

    new-array v0, v3, [I

    const v3, 0x101045c

    aput v3, v0, v4

    .line 228
    .local v0, "attrs":[I
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 229
    .local v2, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 230
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 231
    return-object v1
.end method

.method private recreateLabel()V
    .locals 10

    .prologue
    const v9, 0x7f0d0039

    const v8, 0x7f080012

    const v5, 0x1020016

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 123
    const/4 v1, 0x0

    .line 124
    .local v1, "labelText":Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 125
    .local v0, "labelDescription":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 126
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 127
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/qs/QSTileView;->removeView(Landroid/view/View;)V

    .line 128
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    .line 130
    :cond_0
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDualLabel:Lcom/android/systemui_ex/qs/QSDualTileLabel;

    if-eqz v3, :cond_1

    .line 131
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDualLabel:Lcom/android/systemui_ex/qs/QSDualTileLabel;

    invoke-virtual {v3}, Lcom/android/systemui_ex/qs/QSDualTileLabel;->getText()Ljava/lang/String;

    move-result-object v1

    .line 132
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 133
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDualLabel:Lcom/android/systemui_ex/qs/QSDualTileLabel;

    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/qs/QSTileView;->removeView(Landroid/view/View;)V

    .line 134
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDualLabel:Lcom/android/systemui_ex/qs/QSDualTileLabel;

    .line 136
    :cond_1
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 137
    .local v2, "res":Landroid/content/res/Resources;
    iget-boolean v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDual:Z

    if-eqz v3, :cond_4

    .line 138
    new-instance v3, Lcom/android/systemui_ex/qs/QSDualTileLabel;

    iget-object v4, p0, Lcom/android/systemui_ex/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui_ex/qs/QSDualTileLabel;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDualLabel:Lcom/android/systemui_ex/qs/QSDualTileLabel;

    .line 139
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDualLabel:Lcom/android/systemui_ex/qs/QSDualTileLabel;

    invoke-virtual {v3, v5}, Lcom/android/systemui_ex/qs/QSDualTileLabel;->setId(I)V

    .line 140
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDualLabel:Lcom/android/systemui_ex/qs/QSDualTileLabel;

    const v4, 0x7f020019

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/qs/QSDualTileLabel;->setBackgroundResource(I)V

    .line 141
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDualLabel:Lcom/android/systemui_ex/qs/QSDualTileLabel;

    const v4, 0x7f0201df

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/qs/QSDualTileLabel;->setFirstLineCaret(Landroid/graphics/drawable/Drawable;)V

    .line 142
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDualLabel:Lcom/android/systemui_ex/qs/QSDualTileLabel;

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/qs/QSDualTileLabel;->setTextColor(I)V

    .line 143
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDualLabel:Lcom/android/systemui_ex/qs/QSDualTileLabel;

    iget v4, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDualTileVerticalPaddingPx:I

    iget v5, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDualTileVerticalPaddingPx:I

    invoke-virtual {v3, v6, v4, v6, v5}, Lcom/android/systemui_ex/qs/QSDualTileLabel;->setPadding(IIII)V

    .line 144
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDualLabel:Lcom/android/systemui_ex/qs/QSDualTileLabel;

    sget-object v4, Lcom/android/systemui_ex/qs/QSTileView;->CONDENSED:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/qs/QSDualTileLabel;->setTypeface(Landroid/graphics/Typeface;)V

    .line 145
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDualLabel:Lcom/android/systemui_ex/qs/QSDualTileLabel;

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v6, v4}, Lcom/android/systemui_ex/qs/QSDualTileLabel;->setTextSize(IF)V

    .line 147
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDualLabel:Lcom/android/systemui_ex/qs/QSDualTileLabel;

    invoke-virtual {v3, v7}, Lcom/android/systemui_ex/qs/QSDualTileLabel;->setClickable(Z)V

    .line 148
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDualLabel:Lcom/android/systemui_ex/qs/QSDualTileLabel;

    iget-object v4, p0, Lcom/android/systemui_ex/qs/QSTileView;->mClickSecondary:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/qs/QSDualTileLabel;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDualLabel:Lcom/android/systemui_ex/qs/QSDualTileLabel;

    invoke-virtual {v3, v7}, Lcom/android/systemui_ex/qs/QSDualTileLabel;->setFocusable(Z)V

    .line 150
    if-eqz v1, :cond_2

    .line 151
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDualLabel:Lcom/android/systemui_ex/qs/QSDualTileLabel;

    invoke-virtual {v3, v1}, Lcom/android/systemui_ex/qs/QSDualTileLabel;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :cond_2
    if-eqz v0, :cond_3

    .line 154
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDualLabel:Lcom/android/systemui_ex/qs/QSDualTileLabel;

    invoke-virtual {v3, v0}, Lcom/android/systemui_ex/qs/QSDualTileLabel;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 156
    :cond_3
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDualLabel:Lcom/android/systemui_ex/qs/QSDualTileLabel;

    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/qs/QSTileView;->addView(Landroid/view/View;)V

    .line 173
    :goto_0
    return-void

    .line 158
    :cond_4
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui_ex/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    .line 159
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setId(I)V

    .line 160
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 162
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMinLines(I)V

    .line 163
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 164
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    sget-object v4, Lcom/android/systemui_ex/qs/QSTileView;->CONDENSED:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 165
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 167
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 168
    if-eqz v1, :cond_5

    .line 169
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :cond_5
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/qs/QSTileView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private setRipple(Landroid/graphics/drawable/RippleDrawable;)V
    .locals 2
    .param p1, "tileBackground"    # Landroid/graphics/drawable/RippleDrawable;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/systemui_ex/qs/QSTileView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 207
    invoke-virtual {p0}, Lcom/android/systemui_ex/qs/QSTileView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/android/systemui_ex/qs/QSTileView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui_ex/qs/QSTileView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui_ex/qs/QSTileView;->updateRippleSize(II)V

    .line 210
    :cond_0
    return-void
.end method

.method private updateRippleSize(II)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 285
    div-int/lit8 v0, p1, 0x2

    .line 286
    .local v0, "cx":I
    iget-boolean v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDual:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui_ex/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 287
    .local v1, "cy":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3fa00000    # 1.25f

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 288
    .local v2, "rad":I
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    sub-int v4, v0, v2

    sub-int v5, v1, v2

    add-int v6, v0, v2

    add-int v7, v1, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    .line 289
    return-void

    .line 286
    .end local v1    # "cy":I
    .end local v2    # "rad":I
    :cond_0
    div-int/lit8 v1, p2, 0x2

    goto :goto_0
.end method

.method private updateTopPadding()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui_ex/qs/QSTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 103
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f0d003f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 104
    .local v2, "padding":I
    const v4, 0x7f0d0040

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 105
    .local v1, "largePadding":I
    invoke-virtual {p0}, Lcom/android/systemui_ex/qs/QSTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    const v5, 0x3fa66666    # 1.3f

    invoke-static {v4, v6, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v4

    sub-float/2addr v4, v6

    const v5, 0x3e999998    # 0.29999995f

    div-float v0, v4, v5

    .line 107
    .local v0, "largeFactor":F
    sub-float v4, v6, v0

    int-to-float v5, v2

    mul-float/2addr v4, v5

    int-to-float v5, v1

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/android/systemui_ex/qs/QSTileView;->mTilePaddingTopPx:I

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui_ex/qs/QSTileView;->requestLayout()V

    .line 109
    return-void
.end method


# virtual methods
.method protected createIcon()Landroid/view/View;
    .locals 2

    .prologue
    .line 220
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui_ex/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 221
    .local v0, "icon":Landroid/widget/ImageView;
    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 222
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 223
    return-object v0
.end method

.method protected handleStateChanged(Lcom/android/systemui_ex/qs/QSTile$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui_ex/qs/QSTile$State;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSTileView;->mIcon:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSTileView;->mIcon:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui_ex/qs/QSTileView;->setIcon(Landroid/widget/ImageView;Lcom/android/systemui_ex/qs/QSTile$State;)V

    .line 299
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDual:Z

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDualLabel:Lcom/android/systemui_ex/qs/QSDualTileLabel;

    iget-object v1, p1, Lcom/android/systemui_ex/qs/QSTile$State;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/qs/QSDualTileLabel;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDualLabel:Lcom/android/systemui_ex/qs/QSDualTileLabel;

    iget-object v1, p1, Lcom/android/systemui_ex/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/qs/QSDualTileLabel;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    iget-object v1, p1, Lcom/android/systemui_ex/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 307
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/systemui_ex/qs/QSTile$State;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v0, p1, Lcom/android/systemui_ex/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/qs/QSTileView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1, "clickPrimary"    # Landroid/view/View$OnClickListener;
    .param p2, "clickSecondary"    # Landroid/view/View$OnClickListener;
    .param p3, "longClick"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/systemui_ex/qs/QSTileView;->mClickPrimary:Landroid/view/View$OnClickListener;

    .line 215
    iput-object p2, p0, Lcom/android/systemui_ex/qs/QSTileView;->mClickSecondary:Landroid/view/View$OnClickListener;

    .line 216
    iput-object p3, p0, Lcom/android/systemui_ex/qs/QSTileView;->mLongClick:Landroid/view/View$OnLongClickListener;

    .line 217
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v3, 0x7f0d0039

    .line 113
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 114
    invoke-direct {p0}, Lcom/android/systemui_ex/qs/QSTileView;->updateTopPadding()V

    .line 115
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/android/systemui_ex/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 116
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDualLabel:Lcom/android/systemui_ex/qs/QSDualTileLabel;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDualLabel:Lcom/android/systemui_ex/qs/QSDualTileLabel;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/systemui_ex/qs/QSTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/qs/QSDualTileLabel;->setTextSize(IF)V

    .line 120
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v6, 0x0

    .line 260
    invoke-virtual {p0}, Lcom/android/systemui_ex/qs/QSTileView;->getMeasuredWidth()I

    move-result v3

    .line 261
    .local v3, "w":I
    invoke-virtual {p0}, Lcom/android/systemui_ex/qs/QSTileView;->getMeasuredHeight()I

    move-result v0

    .line 263
    .local v0, "h":I
    iget-object v4, p0, Lcom/android/systemui_ex/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    iget v5, p0, Lcom/android/systemui_ex/qs/QSTileView;->mTileSpacingPx:I

    invoke-static {v4, v6, v5}, Lcom/android/systemui_ex/qs/QSTileView;->layout(Landroid/view/View;II)V

    .line 265
    const/4 v2, 0x0

    .line 266
    .local v2, "top":I
    iget v4, p0, Lcom/android/systemui_ex/qs/QSTileView;->mTileSpacingPx:I

    add-int/2addr v2, v4

    .line 267
    iget v4, p0, Lcom/android/systemui_ex/qs/QSTileView;->mTilePaddingTopPx:I

    add-int/2addr v2, v4

    .line 268
    iget-object v4, p0, Lcom/android/systemui_ex/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v3, v4

    div-int/lit8 v1, v4, 0x2

    .line 269
    .local v1, "iconLeft":I
    iget-object v4, p0, Lcom/android/systemui_ex/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-static {v4, v1, v2}, Lcom/android/systemui_ex/qs/QSTileView;->layout(Landroid/view/View;II)V

    .line 270
    iget-object v4, p0, Lcom/android/systemui_ex/qs/QSTileView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v4, :cond_0

    .line 271
    invoke-direct {p0, v3, v0}, Lcom/android/systemui_ex/qs/QSTileView;->updateRippleSize(II)V

    .line 274
    :cond_0
    iget-object v4, p0, Lcom/android/systemui_ex/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 275
    iget v4, p0, Lcom/android/systemui_ex/qs/QSTileView;->mTilePaddingBelowIconPx:I

    add-int/2addr v2, v4

    .line 276
    iget-boolean v4, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDual:Z

    if-eqz v4, :cond_1

    .line 277
    iget-object v4, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDivider:Landroid/view/View;

    invoke-static {v4, v6, v2}, Lcom/android/systemui_ex/qs/QSTileView;->layout(Landroid/view/View;II)V

    .line 278
    iget-object v4, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDivider:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 280
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui_ex/qs/QSTileView;->labelView()Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v6, v2}, Lcom/android/systemui_ex/qs/QSTileView;->layout(Landroid/view/View;II)V

    .line 281
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, -0x80000000

    .line 240
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 241
    .local v3, "w":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 242
    .local v0, "h":I
    iget v4, p0, Lcom/android/systemui_ex/qs/QSTileView;->mIconSizePx:I

    invoke-static {v4}, Lcom/android/systemui_ex/qs/QSTileView;->exactly(I)I

    move-result v2

    .line 243
    .local v2, "iconSpec":I
    iget-object v4, p0, Lcom/android/systemui_ex/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v5, v2}, Landroid/view/View;->measure(II)V

    .line 244
    invoke-direct {p0}, Lcom/android/systemui_ex/qs/QSTileView;->labelView()Landroid/view/View;

    move-result-object v4

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, p1, v5}, Landroid/view/View;->measure(II)V

    .line 245
    iget-boolean v4, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDual:Z

    if-eqz v4, :cond_0

    .line 246
    iget-object v4, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDivider:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDivider:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5}, Lcom/android/systemui_ex/qs/QSTileView;->exactly(I)I

    move-result v5

    invoke-virtual {v4, p1, v5}, Landroid/view/View;->measure(II)V

    .line 248
    :cond_0
    iget v4, p0, Lcom/android/systemui_ex/qs/QSTileView;->mIconSizePx:I

    iget v5, p0, Lcom/android/systemui_ex/qs/QSTileView;->mTilePaddingBelowIconPx:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui_ex/qs/QSTileView;->mTilePaddingTopPx:I

    add-int/2addr v4, v5

    invoke-static {v4}, Lcom/android/systemui_ex/qs/QSTileView;->exactly(I)I

    move-result v1

    .line 250
    .local v1, "heightSpec":I
    iget-object v4, p0, Lcom/android/systemui_ex/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    invoke-virtual {v4, p1, v1}, Landroid/view/View;->measure(II)V

    .line 251
    invoke-virtual {p0, v3, v0}, Lcom/android/systemui_ex/qs/QSTileView;->setMeasuredDimension(II)V

    .line 252
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui_ex/qs/QSTile$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui_ex/qs/QSTile$State;

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSTileView;->mHandler:Lcom/android/systemui_ex/qs/QSTileView$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui_ex/qs/QSTileView$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 327
    return-void
.end method

.method public setDual(Z)Z
    .locals 6
    .param p1, "dual"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 176
    iget-boolean v1, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDual:Z

    if-eq p1, v1, :cond_2

    move v0, v2

    .line 177
    .local v0, "changed":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDual:Z

    .line 178
    if-eqz v0, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/android/systemui_ex/qs/QSTileView;->recreateLabel()V

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/qs/QSTileView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/android/systemui_ex/qs/QSTileView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0, v1}, Lcom/android/systemui_ex/qs/QSTileView;->setRipple(Landroid/graphics/drawable/RippleDrawable;)V

    .line 184
    :cond_1
    if-eqz p1, :cond_3

    .line 185
    iget-object v1, p0, Lcom/android/systemui_ex/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui_ex/qs/QSTileView;->mClickPrimary:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    invoke-virtual {p0, v5}, Lcom/android/systemui_ex/qs/QSTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/qs/QSTileView;->setClickable(Z)V

    .line 188
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/qs/QSTileView;->setImportantForAccessibility(I)V

    .line 189
    iget-object v1, p0, Lcom/android/systemui_ex/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui_ex/qs/QSTileView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 198
    :goto_1
    iget-object v1, p0, Lcom/android/systemui_ex/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 199
    if-nez p1, :cond_4

    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/qs/QSTileView;->setFocusable(Z)V

    .line 200
    iget-object v1, p0, Lcom/android/systemui_ex/qs/QSTileView;->mDivider:Landroid/view/View;

    if-eqz p1, :cond_5

    :goto_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 201
    invoke-virtual {p0}, Lcom/android/systemui_ex/qs/QSTileView;->postInvalidate()V

    .line 202
    return v0

    .end local v0    # "changed":Z
    :cond_2
    move v0, v3

    .line 176
    goto :goto_0

    .line 191
    .restart local v0    # "changed":Z
    :cond_3
    iget-object v1, p0, Lcom/android/systemui_ex/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v1, p0, Lcom/android/systemui_ex/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 193
    iget-object v1, p0, Lcom/android/systemui_ex/qs/QSTileView;->mClickPrimary:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/qs/QSTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v1, p0, Lcom/android/systemui_ex/qs/QSTileView;->mLongClick:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/qs/QSTileView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 195
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/qs/QSTileView;->setImportantForAccessibility(I)V

    .line 196
    iget-object v1, p0, Lcom/android/systemui_ex/qs/QSTileView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/qs/QSTileView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_4
    move v2, v3

    .line 199
    goto :goto_2

    .line 200
    :cond_5
    const/16 v3, 0x8

    goto :goto_3
.end method

.method protected setIcon(Landroid/widget/ImageView;Lcom/android/systemui_ex/qs/QSTile$State;)V
    .locals 4
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "state"    # Lcom/android/systemui_ex/qs/QSTile$State;

    .prologue
    const v3, 0x7f0f0013

    .line 310
    iget-object v1, p2, Lcom/android/systemui_ex/qs/QSTile$State;->icon:Lcom/android/systemui_ex/qs/QSTile$Icon;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 311
    iget-object v1, p2, Lcom/android/systemui_ex/qs/QSTile$State;->icon:Lcom/android/systemui_ex/qs/QSTile$Icon;

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/android/systemui_ex/qs/QSTile$State;->icon:Lcom/android/systemui_ex/qs/QSTile$Icon;

    iget-object v2, p0, Lcom/android/systemui_ex/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/qs/QSTile$Icon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 312
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v1, p2, Lcom/android/systemui_ex/qs/QSTile$State;->autoMirrorDrawable:Z

    if-eqz v1, :cond_0

    .line 313
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 315
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 316
    iget-object v1, p2, Lcom/android/systemui_ex/qs/QSTile$State;->icon:Lcom/android/systemui_ex/qs/QSTile$Icon;

    invoke-virtual {p1, v3, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 317
    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_1

    .line 318
    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 319
    check-cast v0, Landroid/graphics/drawable/Animatable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 323
    :cond_1
    return-void

    .line 311
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
