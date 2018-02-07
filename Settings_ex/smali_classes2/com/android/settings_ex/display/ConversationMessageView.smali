.class public Lcom/android/settings_ex/display/ConversationMessageView;
.super Landroid/widget/FrameLayout;
.source "ConversationMessageView.java"


# instance fields
.field private mContactIconView:Landroid/widget/TextView;

.field private final mIconBackgroundColor:I

.field private final mIconText:Ljava/lang/CharSequence;

.field private final mIconTextColor:I

.field private final mIncoming:Z

.field private mMessageBubble:Landroid/widget/LinearLayout;

.field private final mMessageText:Ljava/lang/CharSequence;

.field private mMessageTextAndInfoView:Landroid/view/ViewGroup;

.field private mMessageTextView:Landroid/widget/TextView;

.field private mStatusTextView:Landroid/widget/TextView;

.field private final mTimestampText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/display/ConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/display/ConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings_ex/display/ConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    sget-object v1, Lcom/android/settings_ex/R$styleable;->ConversationMessageView:[I

    .line 69
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 72
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mIncoming:Z

    .line 73
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mMessageText:Ljava/lang/CharSequence;

    .line 74
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mTimestampText:Ljava/lang/CharSequence;

    .line 75
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mIconText:Ljava/lang/CharSequence;

    .line 76
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mIconTextColor:I

    .line 77
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mIconBackgroundColor:I

    .line 80
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04004a

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 81
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040049

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 66
    return-void
.end method

.method private static getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "color"    # I

    .prologue
    .line 256
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 257
    .local v0, "constantStateDrawable":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 260
    .local v1, "retDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p2, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 261
    return-object v1

    .line 259
    .end local v1    # "retDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object v1, p1

    .restart local v1    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method private static isLayoutRtl(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 167
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTextAppearance()V
    .locals 4

    .prologue
    .line 242
    iget-boolean v3, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mIncoming:Z

    if-eqz v3, :cond_0

    const v1, 0x7f0b0346

    .line 244
    .local v1, "messageColorResId":I
    :goto_0
    iget-boolean v3, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mIncoming:Z

    if-eqz v3, :cond_1

    const v2, 0x7f0b0349

    .line 246
    .local v2, "timestampColorResId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/display/ConversationMessageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 248
    .local v0, "messageColor":I
    iget-object v3, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    iget-object v3, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 250
    iget-object v3, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 241
    return-void

    .line 243
    .end local v0    # "messageColor":I
    .end local v1    # "messageColorResId":I
    .end local v2    # "timestampColorResId":I
    :cond_0
    const v1, 0x7f0b0347

    .restart local v1    # "messageColorResId":I
    goto :goto_0

    .line 245
    :cond_1
    const v2, 0x7f0b0348

    .restart local v2    # "timestampColorResId":I
    goto :goto_1
.end method

.method private updateViewAppearance()V
    .locals 21

    .prologue
    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/display/ConversationMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 185
    .local v12, "res":Landroid/content/res/Resources;
    const v18, 0x7f0f025b

    .line 184
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 187
    .local v4, "arrowWidth":I
    const v18, 0x7f0f025d

    .line 186
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    .line 189
    .local v9, "messageTextLeftRightPadding":I
    const v18, 0x7f0f025e

    .line 188
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v17

    .line 191
    .local v17, "textTopPadding":I
    const v18, 0x7f0f025f

    .line 190
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    .line 195
    .local v14, "textBottomPadding":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/display/ConversationMessageView;->mIncoming:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 196
    add-int v15, v9, v4

    .line 197
    .local v15, "textLeftPadding":I
    move/from16 v16, v9

    .line 204
    .local v16, "textRightPadding":I
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/display/ConversationMessageView;->mIncoming:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    const v8, 0x800013

    .line 207
    .local v8, "gravity":I
    :goto_1
    const v18, 0x7f0f025c

    .line 206
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 209
    .local v10, "messageTopPadding":I
    const v18, 0x7f0f0260

    .line 208
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    .line 212
    .local v11, "metadataTopPadding":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/display/ConversationMessageView;->mIncoming:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    const v6, 0x7f0201ae

    .line 214
    .local v6, "bubbleDrawableResId":I
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/display/ConversationMessageView;->mIncoming:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    const v5, 0x7f0b034a

    .line 216
    .local v5, "bubbleColorResId":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/display/ConversationMessageView;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 219
    .local v7, "context":Landroid/content/Context;
    invoke-virtual {v7, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 220
    invoke-virtual {v7, v5}, Landroid/content/Context;->getColor(I)I

    move-result v19

    .line 218
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v7, v0, v1}, Lcom/android/settings_ex/display/ConversationMessageView;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 221
    .local v13, "textBackgroundDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/display/ConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 223
    invoke-static/range {p0 .. p0}, Lcom/android/settings_ex/display/ConversationMessageView;->isLayoutRtl(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/display/ConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    .line 226
    add-int v19, v17, v11

    .line 225
    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v15, v14}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 235
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/display/ConversationMessageView;->getPaddingLeft()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/display/ConversationMessageView;->getPaddingRight()I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v10, v2, v3}, Lcom/android/settings_ex/display/ConversationMessageView;->setPadding(IIII)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 238
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/display/ConversationMessageView;->updateTextAppearance()V

    .line 181
    return-void

    .line 199
    .end local v5    # "bubbleColorResId":I
    .end local v6    # "bubbleDrawableResId":I
    .end local v7    # "context":Landroid/content/Context;
    .end local v8    # "gravity":I
    .end local v10    # "messageTopPadding":I
    .end local v11    # "metadataTopPadding":I
    .end local v13    # "textBackgroundDrawable":Landroid/graphics/drawable/Drawable;
    .end local v15    # "textLeftPadding":I
    .end local v16    # "textRightPadding":I
    :cond_0
    move v15, v9

    .line 200
    .restart local v15    # "textLeftPadding":I
    add-int v16, v9, v4

    .restart local v16    # "textRightPadding":I
    goto/16 :goto_0

    .line 205
    :cond_1
    const v8, 0x800015

    .restart local v8    # "gravity":I
    goto/16 :goto_1

    .line 213
    .restart local v10    # "messageTopPadding":I
    .restart local v11    # "metadataTopPadding":I
    :cond_2
    const v6, 0x7f0201af

    .restart local v6    # "bubbleDrawableResId":I
    goto :goto_2

    .line 215
    :cond_3
    const v5, 0x7f0b034b

    .restart local v5    # "bubbleColorResId":I
    goto :goto_3

    .line 229
    .restart local v7    # "context":Landroid/content/Context;
    .restart local v13    # "textBackgroundDrawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/display/ConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    .line 230
    add-int v19, v17, v11

    .line 229
    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v16

    invoke-virtual {v0, v15, v1, v2, v14}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_4
.end method

.method private updateViewContent()V
    .locals 4

    .prologue
    .line 171
    iget-object v1, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mMessageText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v1, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mStatusTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mTimestampText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v1, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mIconText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v1, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mIconTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    invoke-virtual {p0}, Lcom/android/settings_ex/display/ConversationMessageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0200b1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 177
    .local v0, "iconBase":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    .line 178
    invoke-virtual {p0}, Lcom/android/settings_ex/display/ConversationMessageView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mIconBackgroundColor:I

    invoke-static {v2, v0, v3}, Lcom/android/settings_ex/display/ConversationMessageView;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 177
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 170
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 86
    const v0, 0x7f1100f7

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/display/ConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    .line 87
    const v0, 0x7f1100f8

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/display/ConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    .line 88
    const v0, 0x7f1100f9

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/display/ConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f1100fa

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/display/ConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mStatusTextView:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f1100fb

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/display/ConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    .line 91
    invoke-direct {p0}, Lcom/android/settings_ex/display/ConversationMessageView;->updateViewContent()V

    .line 85
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 130
    invoke-static {p0}, Lcom/android/settings_ex/display/ConversationMessageView;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    .line 132
    .local v8, "isRtl":Z
    iget-object v9, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    .line 133
    .local v7, "iconWidth":I
    iget-object v9, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    .line 134
    .local v4, "iconHeight":I
    invoke-virtual {p0}, Lcom/android/settings_ex/display/ConversationMessageView;->getPaddingTop()I

    move-result v6

    .line 135
    .local v6, "iconTop":I
    sub-int v9, p4, p2

    sub-int/2addr v9, v7

    invoke-virtual {p0}, Lcom/android/settings_ex/display/ConversationMessageView;->getPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/android/settings_ex/display/ConversationMessageView;->getPaddingRight()I

    move-result v10

    sub-int v3, v9, v10

    .line 136
    .local v3, "contentWidth":I
    iget-object v9, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    .line 137
    .local v0, "contentHeight":I
    move v2, v6

    .line 142
    .local v2, "contentTop":I
    iget-boolean v9, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mIncoming:Z

    if-eqz v9, :cond_1

    .line 143
    if-eqz v8, :cond_0

    .line 144
    sub-int v9, p4, p2

    invoke-virtual {p0}, Lcom/android/settings_ex/display/ConversationMessageView;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int v5, v9, v7

    .line 145
    .local v5, "iconLeft":I
    sub-int v1, v5, v3

    .line 160
    .local v1, "contentLeft":I
    :goto_0
    iget-object v9, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    add-int v10, v5, v7

    add-int v11, v6, v4

    invoke-virtual {v9, v5, v6, v10, v11}, Landroid/widget/TextView;->layout(IIII)V

    .line 162
    iget-object v9, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    add-int v10, v1, v3

    .line 163
    add-int v11, v6, v0

    .line 162
    invoke-virtual {v9, v1, v6, v10, v11}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 129
    return-void

    .line 147
    .end local v1    # "contentLeft":I
    .end local v5    # "iconLeft":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/display/ConversationMessageView;->getPaddingLeft()I

    move-result v5

    .line 148
    .restart local v5    # "iconLeft":I
    add-int v1, v5, v7

    .restart local v1    # "contentLeft":I
    goto :goto_0

    .line 151
    .end local v1    # "contentLeft":I
    .end local v5    # "iconLeft":I
    :cond_1
    if-eqz v8, :cond_2

    .line 152
    invoke-virtual {p0}, Lcom/android/settings_ex/display/ConversationMessageView;->getPaddingLeft()I

    move-result v5

    .line 153
    .restart local v5    # "iconLeft":I
    add-int v1, v5, v7

    .restart local v1    # "contentLeft":I
    goto :goto_0

    .line 155
    .end local v1    # "contentLeft":I
    .end local v5    # "iconLeft":I
    :cond_2
    sub-int v9, p4, p2

    invoke-virtual {p0}, Lcom/android/settings_ex/display/ConversationMessageView;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int v5, v9, v7

    .line 156
    .restart local v5    # "iconLeft":I
    sub-int v1, v5, v3

    .restart local v1    # "contentLeft":I
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x0

    .line 96
    invoke-direct {p0}, Lcom/android/settings_ex/display/ConversationMessageView;->updateViewAppearance()V

    .line 98
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 100
    .local v1, "horizontalSpace":I
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 101
    .local v6, "unspecifiedMeasureSpec":I
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 103
    .local v2, "iconMeasureSpec":I
    iget-object v7, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v7, v2, v2}, Landroid/widget/TextView;->measure(II)V

    .line 105
    iget-object v7, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 106
    const/high16 v8, 0x40000000    # 2.0f

    .line 104
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 107
    iget-object v7, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v7, v2, v2}, Landroid/widget/TextView;->measure(II)V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings_ex/display/ConversationMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f025b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 115
    .local v0, "arrowWidth":I
    iget-object v7, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    sub-int v7, v1, v7

    sub-int/2addr v7, v0

    .line 116
    invoke-virtual {p0}, Lcom/android/settings_ex/display/ConversationMessageView;->getPaddingLeft()I

    move-result v8

    .line 115
    sub-int/2addr v7, v8

    .line 116
    invoke-virtual {p0}, Lcom/android/settings_ex/display/ConversationMessageView;->getPaddingRight()I

    move-result v8

    .line 115
    sub-int v4, v7, v8

    .line 118
    .local v4, "maxLeftoverSpace":I
    const/high16 v7, -0x80000000

    .line 117
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 120
    .local v5, "messageContentWidthMeasureSpec":I
    iget-object v7, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5, v6}, Landroid/widget/LinearLayout;->measure(II)V

    .line 122
    iget-object v7, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    .line 123
    iget-object v8, p0, Lcom/android/settings_ex/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v8

    .line 122
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 124
    .local v3, "maxHeight":I
    invoke-virtual {p0}, Lcom/android/settings_ex/display/ConversationMessageView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {p0}, Lcom/android/settings_ex/display/ConversationMessageView;->getPaddingTop()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0, v1, v7}, Lcom/android/settings_ex/display/ConversationMessageView;->setMeasuredDimension(II)V

    .line 95
    return-void
.end method
