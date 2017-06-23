.class public Landroid/preference/ColorPickerPreference;
.super Landroid/preference/CustomDialogPreference;
.source "ColorPickerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/ColorPickerPreference$SavedState;
    }
.end annotation


# instance fields
.field private mColor:Ljava/lang/String;

.field private mDefaultColor:Ljava/lang/String;

.field private mDisabledCellColor:I

.field private mMessage:Landroid/widget/TextView;

.field private mMessageText:Ljava/lang/CharSequence;

.field private mPalette:[Ljava/lang/String;

.field private mPaletteNamesResIds:[I

.field private mRippleEffectColor:I

.field private mTmpColor:Ljava/lang/String;

.field private mUseColorLabelAsSummary:Z

.field private mViews:[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/ColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 102
    const v0, 0x1010091

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/ColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/ColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    const-string v1, ""

    iput-object v1, p0, Landroid/preference/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    .line 75
    sget-object v1, Lcom/android/internal/R$styleable;->ColorPickerPreference:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10600f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/preference/ColorPickerPreference;->mRippleEffectColor:I

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10600f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/preference/ColorPickerPreference;->mDisabledCellColor:I

    .line 81
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    const v1, 0x104007e

    invoke-virtual {p0, v1}, Landroid/preference/ColorPickerPreference;->setNeutralButtonText(I)V

    .line 85
    const v1, 0x10900a3

    invoke-virtual {p0, v1}, Landroid/preference/ColorPickerPreference;->setDialogLayoutResource(I)V

    .line 87
    invoke-virtual {p0}, Landroid/preference/ColorPickerPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    .line 89
    iput-boolean v4, p0, Landroid/preference/ColorPickerPreference;->mUseColorLabelAsSummary:Z

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iput-boolean v3, p0, Landroid/preference/ColorPickerPreference;->mUseColorLabelAsSummary:Z

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/preference/ColorPickerPreference;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/preference/ColorPickerPreference;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/preference/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/preference/ColorPickerPreference;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/preference/ColorPickerPreference;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/preference/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/preference/ColorPickerPreference;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/preference/ColorPickerPreference;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/preference/ColorPickerPreference;->setTmpColor(Ljava/lang/String;)V

    return-void
.end method

.method private setTmpColor(Ljava/lang/String;)V
    .locals 2
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 382
    iput-object p1, p0, Landroid/preference/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    .line 384
    iget-object v0, p0, Landroid/preference/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/preference/ColorPickerPreference;->setSelection(Ljava/lang/String;I)V

    .line 385
    return-void
.end method

.method private updateSummary()V
    .locals 3

    .prologue
    .line 388
    iget-boolean v1, p0, Landroid/preference/ColorPickerPreference;->mUseColorLabelAsSummary:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/preference/ColorPickerPreference;->mPaletteNamesResIds:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/preference/ColorPickerPreference;->mPaletteNamesResIds:[I

    array-length v1, v1

    if-ltz v1, :cond_1

    .line 390
    :cond_0
    iget-object v1, p0, Landroid/preference/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v0, -0x1

    .line 391
    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Landroid/preference/ColorPickerPreference;->mPaletteNamesResIds:[I

    if-eqz v1, :cond_3

    if-ltz v0, :cond_3

    iget-object v1, p0, Landroid/preference/ColorPickerPreference;->mPaletteNamesResIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 392
    invoke-virtual {p0}, Landroid/preference/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/ColorPickerPreference;->mPaletteNamesResIds:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/ColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 399
    .end local v0    # "index":I
    :cond_1
    :goto_1
    return-void

    .line 390
    :cond_2
    iget-object v1, p0, Landroid/preference/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 393
    .restart local v0    # "index":I
    :cond_3
    iget-object v1, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    iget-object v2, p0, Landroid/preference/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 394
    :cond_4
    invoke-virtual {p0}, Landroid/preference/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x104007e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/ColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 396
    :cond_5
    invoke-virtual {p0}, Landroid/preference/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040088

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/ColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public createRippleDrawable(Ljava/lang/String;)Landroid/graphics/drawable/RippleDrawable;
    .locals 6
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 182
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/preference/ColorPickerPreference;->mDisabledCellColor:I

    :goto_0
    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 184
    .local v0, "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v4, [[I

    new-array v3, v5, [I

    aput-object v3, v2, v5

    new-array v3, v4, [I

    iget v4, p0, Landroid/preference/ColorPickerPreference;->mRippleEffectColor:I

    aput v4, v3, v5

    invoke-direct {v1, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 192
    .local v1, "colorStateList":Landroid/content/res/ColorStateList;
    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v2

    .line 182
    .end local v0    # "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    .end local v1    # "colorStateList":Landroid/content/res/ColorStateList;
    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/preference/ColorPickerPreference;->getDefaultColor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ColorPickerPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Landroid/preference/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/preference/ColorPickerPreference;->getColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    iput-object v0, p0, Landroid/preference/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Landroid/preference/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/preference/ColorPickerPreference;->setSelection(Ljava/lang/String;I)V

    .line 135
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x8

    .line 260
    invoke-super {p0, p1}, Landroid/preference/CustomDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 263
    iget-object v3, p0, Landroid/preference/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/preference/ColorPickerPreference;->onSetColorPalette([Ljava/lang/String;)V

    .line 264
    invoke-direct {p0}, Landroid/preference/ColorPickerPreference;->updateSummary()V

    .line 267
    iget-object v3, p0, Landroid/preference/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    array-length v2, v3

    .line 269
    .local v2, "paletteLenght":I
    if-eqz v2, :cond_0

    .line 270
    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    .line 272
    const v3, 0x1020399

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 276
    :cond_0
    new-array v1, v4, [I

    fill-array-data v1, :array_0

    .line 286
    .local v1, "ids":[I
    iget-object v3, p0, Landroid/preference/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    array-length v3, v3

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Landroid/preference/ColorPickerPreference;->mViews:[Landroid/view/View;

    .line 287
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/preference/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 288
    iget-object v3, p0, Landroid/preference/ColorPickerPreference;->mViews:[Landroid/view/View;

    aget v4, v1, v0

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v0

    .line 289
    iget-object v3, p0, Landroid/preference/ColorPickerPreference;->mViews:[Landroid/view/View;

    aget-object v3, v3, v0

    iget-object v4, p0, Landroid/preference/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {p0, v4}, Landroid/preference/ColorPickerPreference;->createRippleDrawable(Ljava/lang/String;)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 290
    iget-object v3, p0, Landroid/preference/ColorPickerPreference;->mViews:[Landroid/view/View;

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 291
    iget-object v3, p0, Landroid/preference/ColorPickerPreference;->mViews:[Landroid/view/View;

    aget-object v4, v3, v0

    if-lez v2, :cond_1

    new-instance v3, Landroid/preference/ColorPickerPreference$1;

    invoke-direct {v3, p0}, Landroid/preference/ColorPickerPreference$1;-><init>(Landroid/preference/ColorPickerPreference;)V

    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 307
    :cond_2
    const v3, 0x102000b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/preference/ColorPickerPreference;->mMessage:Landroid/widget/TextView;

    .line 308
    iget-object v3, p0, Landroid/preference/ColorPickerPreference;->mMessageText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    .line 309
    iget-object v3, p0, Landroid/preference/ColorPickerPreference;->mMessageText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Landroid/preference/ColorPickerPreference;->setMessage(Ljava/lang/CharSequence;)V

    .line 314
    :goto_2
    invoke-virtual {p0}, Landroid/preference/ColorPickerPreference;->init()V

    .line 315
    return-void

    .line 311
    :cond_3
    const v3, 0x104007f

    invoke-virtual {p0, v3}, Landroid/preference/ColorPickerPreference;->setMessage(I)V

    goto :goto_2

    .line 276
    nop

    :array_0
    .array-data 4
        0x1020391
        0x1020393
        0x1020395
        0x1020397
        0x102039a
        0x102039c
        0x102039e
        0x10203a0
    .end array-data
.end method

.method protected onDialogClosed(I)V
    .locals 6
    .param p1, "whichButton"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 319
    invoke-super {p0, p1}, Landroid/preference/CustomDialogPreference;->onDialogClosed(I)V

    .line 321
    const/4 v4, -0x1

    if-ne p1, v4, :cond_4

    move v2, v3

    .line 322
    .local v2, "positiveResult":Z
    :goto_0
    const/4 v4, -0x3

    if-ne p1, v4, :cond_5

    move v0, v3

    .line 324
    .local v0, "defaultResult":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 325
    iget-object v4, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/preference/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    iget-object v5, p0, Landroid/preference/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v1, v3

    .line 328
    .local v1, "equal":Z
    :cond_2
    if-nez v1, :cond_3

    .line 329
    iget-object v3, p0, Landroid/preference/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/preference/ColorPickerPreference;->setColor(Ljava/lang/String;)V

    .line 339
    .end local v1    # "equal":Z
    :cond_3
    :goto_2
    return-void

    .end local v0    # "defaultResult":Z
    .end local v2    # "positiveResult":Z
    :cond_4
    move v2, v1

    .line 321
    goto :goto_0

    .restart local v2    # "positiveResult":Z
    :cond_5
    move v0, v1

    .line 322
    goto :goto_1

    .line 331
    .restart local v0    # "defaultResult":Z
    :cond_6
    if-eqz v0, :cond_3

    .line 332
    iget-object v4, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    if-nez v4, :cond_7

    iget-object v4, p0, Landroid/preference/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    if-eqz v4, :cond_8

    :cond_7
    iget-object v4, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v4, :cond_9

    iget-object v4, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    iget-object v5, p0, Landroid/preference/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    move v1, v3

    .line 335
    .restart local v1    # "equal":Z
    :cond_9
    if-nez v1, :cond_3

    .line 336
    iget-object v3, p0, Landroid/preference/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/preference/ColorPickerPreference;->setColor(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 365
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/preference/ColorPickerPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 367
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/CustomDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 379
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    .line 371
    check-cast v0, Landroid/preference/ColorPickerPreference$SavedState;

    .line 372
    .local v0, "myState":Landroid/preference/ColorPickerPreference$SavedState;
    invoke-virtual {v0}, Landroid/preference/ColorPickerPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/CustomDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 375
    iget-object v1, v0, Landroid/preference/ColorPickerPreference$SavedState;->tmpColor:Ljava/lang/String;

    iget-object v2, p0, Landroid/preference/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/preference/ColorPickerPreference;->mViews:[Landroid/view/View;

    if-eqz v1, :cond_1

    .line 376
    iget-object v1, p0, Landroid/preference/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v2}, Landroid/preference/ColorPickerPreference;->setSelection(Ljava/lang/String;I)V

    .line 377
    iget-object v1, v0, Landroid/preference/ColorPickerPreference$SavedState;->tmpColor:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/preference/ColorPickerPreference;->setTmpColor(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 348
    invoke-super {p0}, Landroid/preference/CustomDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 351
    .local v1, "superState":Landroid/os/Parcelable;
    iget-object v2, p0, Landroid/preference/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 360
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 357
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Landroid/preference/ColorPickerPreference$SavedState;

    invoke-direct {v0, v1}, Landroid/preference/ColorPickerPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 359
    .local v0, "myState":Landroid/preference/ColorPickerPreference$SavedState;
    iget-object v2, p0, Landroid/preference/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    iput-object v2, v0, Landroid/preference/ColorPickerPreference$SavedState;->tmpColor:Ljava/lang/String;

    move-object v1, v0

    .line 360
    goto :goto_0
.end method

.method protected onSetColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 224
    return-void
.end method

.method protected onSetColorPalette([Ljava/lang/String;)V
    .locals 0
    .param p1, "colors"    # [Ljava/lang/String;

    .prologue
    .line 240
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 343
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/preference/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/ColorPickerPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, p2}, Landroid/preference/ColorPickerPreference;->setColor(Ljava/lang/String;)V

    .line 344
    return-void

    .line 343
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 3
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    .line 140
    invoke-virtual {p0}, Landroid/preference/ColorPickerPreference;->getSecondaryIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 142
    invoke-virtual {p0}, Landroid/preference/ColorPickerPreference;->getSecondaryIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 147
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/preference/ColorPickerPreference;->updateSummary()V

    .line 148
    iget-object v0, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/ColorPickerPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/ColorPickerPreference;->onSetColor(Ljava/lang/String;)V

    .line 151
    :cond_1
    invoke-virtual {p0, p1}, Landroid/preference/ColorPickerPreference;->persistString(Ljava/lang/String;)Z

    .line 152
    return-void

    .line 144
    :cond_2
    invoke-virtual {p0}, Landroid/preference/ColorPickerPreference;->getSecondaryIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_0
.end method

.method public setColorPalette([Ljava/lang/String;)V
    .locals 0
    .param p1, "colors"    # [Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Landroid/preference/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setColorPalette([Ljava/lang/String;[I)V
    .locals 0
    .param p1, "colors"    # [Ljava/lang/String;
    .param p2, "colorStringResIds"    # [I

    .prologue
    .line 171
    iput-object p1, p0, Landroid/preference/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    .line 172
    iput-object p2, p0, Landroid/preference/ColorPickerPreference;->mPaletteNamesResIds:[I

    .line 173
    return-void
.end method

.method public setDefaultColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Landroid/preference/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 252
    invoke-super {p0, p1}, Landroid/preference/CustomDialogPreference;->setEnabled(Z)V

    .line 253
    invoke-virtual {p0}, Landroid/preference/ColorPickerPreference;->getSecondaryIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0}, Landroid/preference/ColorPickerPreference;->getSecondaryIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz p1, :cond_1

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 256
    :cond_0
    return-void

    .line 254
    :cond_1
    const/16 v0, 0x80

    goto :goto_0
.end method

.method public setMessage(I)V
    .locals 2
    .param p1, "messageResId"    # I

    .prologue
    .line 117
    iget-object v0, p0, Landroid/preference/ColorPickerPreference;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/preference/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 112
    iget-object v0, p0, Landroid/preference/ColorPickerPreference;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    return-void
.end method

.method public setMessageText(I)V
    .locals 1
    .param p1, "messageResId"    # I

    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/preference/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/ColorPickerPreference;->mMessageText:Ljava/lang/CharSequence;

    .line 128
    return-void
.end method

.method public setMessageText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 122
    iput-object p1, p0, Landroid/preference/ColorPickerPreference;->mMessageText:Ljava/lang/CharSequence;

    .line 123
    return-void
.end method

.method public setSecondaryIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 244
    invoke-super {p0, p1}, Landroid/preference/CustomDialogPreference;->setSecondaryIcon(Landroid/graphics/drawable/Drawable;)V

    .line 245
    invoke-virtual {p0}, Landroid/preference/ColorPickerPreference;->getSecondaryIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p0}, Landroid/preference/ColorPickerPreference;->getSecondaryIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/ColorPickerPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 248
    :cond_0
    return-void

    .line 246
    :cond_1
    const/16 v0, 0x80

    goto :goto_0
.end method

.method public setSelection(Ljava/lang/String;I)V
    .locals 4
    .param p1, "color"    # Ljava/lang/String;
    .param p2, "visibility"    # I

    .prologue
    .line 201
    if-nez p1, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v2, p0, Landroid/preference/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v1, -0x1

    .line 203
    .local v1, "index":I
    :goto_1
    if-ltz v1, :cond_0

    .line 204
    const/16 v2, 0x8

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 214
    .local v0, "ids":[I
    iget-object v2, p0, Landroid/preference/ColorPickerPreference;->mViews:[Landroid/view/View;

    aget-object v2, v2, v1

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 202
    .end local v0    # "ids":[I
    .end local v1    # "index":I
    :cond_2
    iget-object v2, p0, Landroid/preference/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    goto :goto_1

    .line 204
    :array_0
    .array-data 4
        0x1020392
        0x1020394
        0x1020396
        0x1020398
        0x102039b
        0x102039d
        0x102039f
        0x10203a1
    .end array-data
.end method
