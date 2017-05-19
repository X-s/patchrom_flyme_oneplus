.class public Lcom/android/internal/widget/ToolbarWidgetWrapper;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Lcom/android/internal/widget/DecorToolbar;


# static fields
.field private static final AFFECTS_LOGO_MASK:I = 0x3

.field private static final DEFAULT_FADE_DURATION_MS:J = 0xc8L

.field private static final TAG:Ljava/lang/String; = "ToolbarWidgetWrapper"


# instance fields
.field private mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

.field private mCustomView:Landroid/view/View;

.field private mDefaultNavigationContentDescription:I

.field private mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

.field private mDisplayOpts:I

.field private mHomeDescription:Ljava/lang/CharSequence;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mMenuPrepared:Z

.field private mNavIcon:Landroid/graphics/drawable/Drawable;

.field private mNavigationMode:I

.field private mSpinner:Landroid/widget/Spinner;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTabView:Landroid/view/View;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleSet:Z

.field private mToolbar:Landroid/widget/Toolbar;

.field private mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/widget/Toolbar;Z)V
    .locals 1
    .param p1, "toolbar"    # Landroid/widget/Toolbar;
    .param p2, "style"    # Z

    .prologue
    .line 91
    const v0, 0x1040497

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;-><init>(Landroid/widget/Toolbar;ZI)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/widget/Toolbar;ZI)V
    .locals 20
    .param p1, "toolbar"    # Landroid/widget/Toolbar;
    .param p2, "style"    # Z
    .param p3, "defaultNavigationContentDescription"    # I

    .prologue
    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 87
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 96
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    .line 98
    invoke-virtual/range {p1 .. p1}, Landroid/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    .line 99
    invoke-virtual/range {p1 .. p1}, Landroid/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    .line 100
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    if-eqz v15, :cond_c

    const/4 v15, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    .line 101
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v15}, Landroid/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    .line 102
    invoke-virtual/range {p1 .. p1}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x0

    sget-object v17, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v18, 0x10102ce

    const/16 v19, 0x0

    invoke-virtual/range {v15 .. v19}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 104
    .local v2, "a":Landroid/content/res/TypedArray;
    const/16 v15, 0xd

    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 105
    if-eqz p2, :cond_d

    .line 106
    const/4 v15, 0x5

    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 107
    .local v13, "title":Ljava/lang/CharSequence;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 108
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    :cond_0
    const/16 v15, 0x9

    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 112
    .local v11, "subtitle":Ljava/lang/CharSequence;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 113
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 116
    :cond_1
    const/4 v15, 0x6

    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 117
    .local v8, "logo":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_2

    .line 118
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 121
    :cond_2
    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 122
    .local v7, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_3

    .line 123
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 125
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    if-nez v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_4

    .line 126
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 128
    :cond_4
    const/16 v15, 0x8

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    .line 130
    const/16 v15, 0xa

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 132
    .local v5, "customNavId":I
    if-eqz v5, :cond_5

    .line 133
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v15}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setCustomView(Landroid/view/View;)V

    .line 135
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    or-int/lit8 v15, v15, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    .line 138
    :cond_5
    const/4 v15, 0x4

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    .line 139
    .local v6, "height":I
    if-lez v6, :cond_6

    .line 140
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v15}, Landroid/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 141
    .local v9, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v6, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 142
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v15, v9}, Landroid/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    .end local v9    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    const/16 v15, 0x16

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 147
    .local v4, "contentInsetStart":I
    const/16 v15, 0x17

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 149
    .local v3, "contentInsetEnd":I
    if-gez v4, :cond_7

    if-ltz v3, :cond_8

    .line 150
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Landroid/widget/Toolbar;->setContentInsetsRelative(II)V

    .line 154
    :cond_8
    const/16 v15, 0xb

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    .line 155
    .local v14, "titleTextStyle":I
    if-eqz v14, :cond_9

    .line 156
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Landroid/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 159
    :cond_9
    const/16 v15, 0xc

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 161
    .local v12, "subtitleTextStyle":I
    if-eqz v12, :cond_a

    .line 162
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v12}, Landroid/widget/Toolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    .line 165
    :cond_a
    const/16 v15, 0x1a

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 166
    .local v10, "popupTheme":I
    if-eqz v10, :cond_b

    .line 167
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v15, v10}, Landroid/widget/Toolbar;->setPopupTheme(I)V

    .line 172
    .end local v3    # "contentInsetEnd":I
    .end local v4    # "contentInsetStart":I
    .end local v5    # "customNavId":I
    .end local v6    # "height":I
    .end local v7    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v8    # "logo":Landroid/graphics/drawable/Drawable;
    .end local v10    # "popupTheme":I
    .end local v11    # "subtitle":Ljava/lang/CharSequence;
    .end local v12    # "subtitleTextStyle":I
    .end local v13    # "title":Ljava/lang/CharSequence;
    .end local v14    # "titleTextStyle":I
    :cond_b
    :goto_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 174
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setDefaultNavigationContentDescription(I)V

    .line 175
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v15}, Landroid/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    .line 177
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    new-instance v16, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;-><init>(Lcom/android/internal/widget/ToolbarWidgetWrapper;)V

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    return-void

    .line 100
    .end local v2    # "a":Landroid/content/res/TypedArray;
    :cond_c
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 170
    .restart local v2    # "a":Landroid/content/res/TypedArray;
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->detectDisplayOptions()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Landroid/widget/Toolbar;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ToolbarWidgetWrapper;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ToolbarWidgetWrapper;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Landroid/view/Window$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ToolbarWidgetWrapper;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ToolbarWidgetWrapper;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mMenuPrepared:Z

    return v0
.end method

.method private detectDisplayOptions()I
    .locals 2

    .prologue
    .line 201
    const/16 v0, 0xb

    .line 203
    .local v0, "opts":I
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 204
    or-int/lit8 v0, v0, 0x4

    .line 205
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 207
    :cond_0
    return v0
.end method

.method private ensureSpinner()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 524
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-nez v1, :cond_0

    .line 525
    new-instance v1, Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x10102d7

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    .line 526
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    const v1, 0x800013

    invoke-direct {v0, v5, v5, v1}, Landroid/widget/Toolbar$LayoutParams;-><init>(III)V

    .line 528
    .local v0, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 530
    .end local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private setTitleInt(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    .line 261
    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 264
    :cond_0
    return-void
.end method

.method private updateHomeAccessibility()V
    .locals 2

    .prologue
    .line 657
    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 659
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 661
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateNavigationIcon()V
    .locals 2

    .prologue
    .line 638
    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 639
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 643
    :goto_1
    return-void

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 641
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private updateToolbarLogo()V
    .locals 2

    .prologue
    .line 343
    const/4 v0, 0x0

    .line 344
    .local v0, "logo":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 345
    iget v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 346
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 351
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 352
    return-void

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    .line 577
    const-wide/16 v2, 0xc8

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;

    move-result-object v0

    .line 578
    .local v0, "anim":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 581
    :cond_0
    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public canSplit()Z
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public collapseActionView()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->collapseActionView()V

    .line 233
    return-void
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->dismissPopupMenus()V

    .line 397
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    return v0
.end method

.method public getDropdownItemCount()I
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDropdownSelectedPosition()I
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getVisibility()I

    move-result v0

    return v0
.end method

.method public hasEmbeddedTabs()Z
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->hasExpandedActionView()Z

    move-result v0

    return v0
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLogo()Z
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initIndeterminateProgress()V
    .locals 2

    .prologue
    .line 286
    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-void
.end method

.method public initProgress()V
    .locals 2

    .prologue
    .line 281
    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public isSplit()Z
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public isTitleTruncated()Z
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->isTitleTruncated()Z

    move-result v0

    return v0
.end method

.method public restoreHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 673
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 674
    return-void
.end method

.method public saveHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 668
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 669
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 680
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 1
    .param p1, "collapsible"    # Z

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->setCollapsible(Z)V

    .line 470
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 564
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    .line 565
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 568
    :cond_1
    return-void
.end method

.method public setDefaultNavigationContentDescription(I)V
    .locals 1
    .param p1, "defaultNavigationContentDescription"    # I

    .prologue
    .line 191
    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    if-ne p1, v0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iput p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 195
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setNavigationContentDescription(I)V

    goto :goto_0
.end method

.method public setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "defaultNavigationIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 632
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 633
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 635
    :cond_0
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 4
    .param p1, "newOpts"    # I

    .prologue
    const/4 v3, 0x0

    .line 406
    iget v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 407
    .local v1, "oldOpts":I
    xor-int v0, v1, p1

    .line 408
    .local v0, "changed":I
    iput p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 409
    if-eqz v0, :cond_4

    .line 410
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1

    .line 411
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_0

    .line 412
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateHomeAccessibility()V

    .line 414
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 417
    :cond_1
    and-int/lit8 v2, v0, 0x3

    if-eqz v2, :cond_2

    .line 418
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 421
    :cond_2
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_3

    .line 422
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_5

    .line 423
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v3, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 424
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v3, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 431
    :cond_3
    :goto_0
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 432
    and-int/lit8 v2, p1, 0x10

    if-eqz v2, :cond_6

    .line 433
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v3, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 439
    :cond_4
    :goto_1
    return-void

    .line 426
    :cond_5
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 435
    :cond_6
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v3, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->ensureSpinner()V

    .line 536
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 537
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 538
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    .line 543
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t set dropdown selected position without an adapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 547
    return-void
.end method

.method public setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .locals 5
    .param p1, "tabView"    # Lcom/android/internal/widget/ScrollingTabContainerView;

    .prologue
    const/4 v4, -0x2

    .line 443
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    if-ne v1, v2, :cond_0

    .line 444
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 446
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    .line 447
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 448
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 449
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar$LayoutParams;

    .line 450
    .local v0, "lp":Landroid/widget/Toolbar$LayoutParams;
    iput v4, v0, Landroid/widget/Toolbar$LayoutParams;->width:I

    .line 451
    iput v4, v0, Landroid/widget/Toolbar$LayoutParams;->height:I

    .line 452
    const v1, 0x800053

    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    .line 453
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 455
    .end local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_1
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 475
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 322
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 323
    return-void

    .line 322
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 328
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 329
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 333
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 334
    return-void

    .line 333
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 339
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 340
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-nez v0, :cond_0

    .line 387
    new-instance v0, Landroid/widget/ActionMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 388
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const v1, 0x102004b

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter;->setId(I)V

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p2}, Landroid/widget/ActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 391
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    check-cast p1, Lcom/android/internal/view/menu/MenuBuilder;

    .end local p1    # "menu":Landroid/view/Menu;
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1, v1}, Landroid/widget/Toolbar;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;Landroid/widget/ActionMenuPresenter;)V

    .line 392
    return-void
.end method

.method public setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .locals 1
    .param p1, "presenterCallback"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;
    .param p2, "menuBuilderCallback"    # Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .prologue
    .line 700
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Toolbar;->setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 701
    return-void
.end method

.method public setMenuPrepared()V
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mMenuPrepared:Z

    .line 382
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 653
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 654
    return-void

    .line 653
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 647
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    .line 648
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateHomeAccessibility()V

    .line 649
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 626
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 627
    return-void

    .line 626
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 620
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    .line 621
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 622
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 484
    iget v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 485
    .local v1, "oldMode":I
    if-eq p1, v1, :cond_1

    .line 486
    packed-switch v1, :pswitch_data_0

    .line 499
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 501
    packed-switch p1, :pswitch_data_1

    .line 518
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid navigation mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 488
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    if-ne v2, v3, :cond_0

    .line 489
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v3, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 493
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    if-ne v2, v3, :cond_0

    .line 494
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v3, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 505
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->ensureSpinner()V

    .line 506
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v3, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3, v5}, Landroid/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 521
    :cond_1
    :goto_1
    :pswitch_3
    return-void

    .line 509
    :pswitch_4
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 510
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v3, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v2, v3, v5}, Landroid/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 511
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar$LayoutParams;

    .line 512
    .local v0, "lp":Landroid/widget/Toolbar$LayoutParams;
    iput v4, v0, Landroid/widget/Toolbar$LayoutParams;->width:I

    .line 513
    iput v4, v0, Landroid/widget/Toolbar$LayoutParams;->height:I

    .line 514
    const v2, 0x800053

    iput v2, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    goto :goto_1

    .line 486
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 501
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public setSplitToolbar(Z)V
    .locals 2
    .param p1, "split"    # Z

    .prologue
    .line 300
    if-eqz p1, :cond_0

    .line 301
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot split an android.widget.Toolbar"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_0
    return-void
.end method

.method public setSplitView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "splitView"    # Landroid/view/ViewGroup;

    .prologue
    .line 296
    return-void
.end method

.method public setSplitWhenNarrow(Z)V
    .locals 0
    .param p1, "splitWhenNarrow"    # Z

    .prologue
    .line 308
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    .line 274
    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 277
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    .line 256
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    .line 257
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->setVisibility(I)V

    .line 690
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroid/view/Window$Callback;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;

    .line 238
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    if-nez v0, :cond_0

    .line 244
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    .line 246
    :cond_0
    return-void
.end method

.method public setupAnimatorToVisibility(IJ)Landroid/animation/Animator;
    .locals 4
    .param p1, "visibility"    # I
    .param p2, "duration"    # J

    .prologue
    const/4 v3, 0x2

    .line 586
    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    .line 587
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 588
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 589
    new-instance v1, Lcom/android/internal/widget/ToolbarWidgetWrapper$2;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper$2;-><init>(Lcom/android/internal/widget/ToolbarWidgetWrapper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 615
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :goto_0
    return-object v0

    .line 604
    :cond_0
    if-nez p1, :cond_1

    .line 605
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 606
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 607
    new-instance v1, Lcom/android/internal/widget/ToolbarWidgetWrapper$3;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper$3;-><init>(Lcom/android/internal/widget/ToolbarWidgetWrapper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 615
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 587
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 605
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
