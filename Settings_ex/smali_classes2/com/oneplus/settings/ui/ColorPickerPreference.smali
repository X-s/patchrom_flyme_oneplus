.class public Lcom/oneplus/settings/ui/ColorPickerPreference;
.super Lcom/oneplus/settings/ui/CustomDialogPreference;
.source "ColorPickerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/ColorPickerPreference$SavedState;
    }
.end annotation


# instance fields
.field private mColor:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDefaultColor:Ljava/lang/String;

.field private mDefaultColors:[Ljava/lang/String;

.field private mDisabledCellColor:I

.field mImageView:Landroid/widget/ImageView;

.field private mMessage:Landroid/widget/TextView;

.field private mMessageText:Ljava/lang/CharSequence;

.field private mPalette:[Ljava/lang/String;

.field private mPaletteNamesResIds:[I

.field private mRippleEffectColor:I

.field private mTmpColor:Ljava/lang/String;

.field private mUseColorLabelAsSummary:Z

.field private mViews:[Landroid/view/View;

.field private mVisibility:Z


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/ui/ColorPickerPreference;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/settings/ui/ColorPickerPreference;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/settings/ui/ColorPickerPreference;Ljava/lang/String;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setTmpColor(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/ui/ColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/ui/ColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/settings/ui/ColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/settings/ui/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 69
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    .line 79
    iput-boolean v4, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mVisibility:Z

    .line 85
    const v1, 0x7f0400d4

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setLayoutResource(I)V

    .line 86
    iput-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mContext:Landroid/content/Context;

    .line 87
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 88
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b035a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 89
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0362

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 87
    iput-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDefaultColors:[Ljava/lang/String;

    .line 92
    sget-object v1, Lcom/android/settings_ex/R$styleable;->ColorPickerPreference:[I

    .line 91
    invoke-virtual {p1, p2, v1, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 94
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b02b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 93
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mRippleEffectColor:I

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b02b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 95
    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDisabledCellColor:I

    .line 97
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    const v1, 0x7f0e0316

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setNeutralButtonText(I)V

    .line 101
    const/high16 v1, 0x1040000

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setNegativeButtonText(I)V

    .line 102
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setPositiveButtonText(I)V

    .line 103
    const v1, 0x7f040134

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setDialogLayoutResource(I)V

    .line 104
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    .line 106
    iput-boolean v5, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mUseColorLabelAsSummary:Z

    .line 83
    :goto_0
    return-void

    .line 108
    :cond_0
    iput-boolean v4, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mUseColorLabelAsSummary:Z

    goto :goto_0
.end method

.method private isDefaultColor()Z
    .locals 3

    .prologue
    .line 468
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDefaultColors:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 469
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDefaultColors:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    const/4 v1, 0x1

    return v1

    .line 468
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 473
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private setTmpColor(Ljava/lang/String;)V
    .locals 2
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    .line 443
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setSelection(Ljava/lang/String;I)V

    .line 440
    return-void
.end method

.method private updateSummary()V
    .locals 3

    .prologue
    .line 447
    iget-boolean v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mUseColorLabelAsSummary:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPaletteNamesResIds:[I

    if-eqz v1, :cond_1

    .line 448
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPaletteNamesResIds:[I

    array-length v1, v1

    if-ltz v1, :cond_1

    .line 449
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v0, -0x1

    .line 450
    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPaletteNamesResIds:[I

    if-eqz v1, :cond_3

    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPaletteNamesResIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 451
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPaletteNamesResIds:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 446
    .end local v0    # "index":I
    :cond_1
    :goto_1
    return-void

    .line 449
    :cond_2
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .restart local v0    # "index":I
    goto :goto_0

    .line 452
    :cond_3
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->isDefaultColor()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 453
    :cond_4
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isAndroidModeOn(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 454
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0363

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 456
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 459
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e03e3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 462
    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0318

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public createRippleDrawable(Ljava/lang/String;)Landroid/graphics/drawable/RippleDrawable;
    .locals 6
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 241
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    iget v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDisabledCellColor:I

    .line 241
    :goto_0
    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 243
    .local v0, "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    new-instance v1, Landroid/content/res/ColorStateList;

    .line 244
    new-array v2, v4, [[I

    .line 245
    new-array v3, v5, [I

    aput-object v3, v2, v5

    .line 247
    new-array v3, v4, [I

    .line 248
    iget v4, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mRippleEffectColor:I

    aput v4, v3, v5

    .line 243
    invoke-direct {v1, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 251
    .local v1, "colorStateList":Landroid/content/res/ColorStateList;
    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v2

    .line 242
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
    .line 215
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->getDefaultColor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->getColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setSelection(Ljava/lang/String;I)V

    .line 177
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0x8

    .line 319
    invoke-super {p0, p1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 322
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/ui/ColorPickerPreference;->onSetColorPalette([Ljava/lang/String;)V

    .line 323
    invoke-direct {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->updateSummary()V

    .line 326
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    array-length v2, v3

    .line 328
    .local v2, "paletteLenght":I
    if-eqz v2, :cond_0

    .line 329
    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    .line 331
    const v3, 0x7f110260

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 335
    :cond_0
    new-array v1, v5, [I

    .local v1, "ids":[I
    fill-array-data v1, :array_0

    .line 345
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    array-length v3, v3

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mViews:[Landroid/view/View;

    .line 346
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 347
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mViews:[Landroid/view/View;

    aget v5, v1, v0

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v3, v0

    .line 348
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mViews:[Landroid/view/View;

    aget-object v3, v3, v0

    iget-object v5, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/ui/ColorPickerPreference;->createRippleDrawable(Ljava/lang/String;)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 349
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mViews:[Landroid/view/View;

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 350
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mViews:[Landroid/view/View;

    aget-object v5, v3, v0

    if-lez v2, :cond_1

    new-instance v3, Lcom/oneplus/settings/ui/ColorPickerPreference$1;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/ui/ColorPickerPreference$1;-><init>(Lcom/oneplus/settings/ui/ColorPickerPreference;)V

    :goto_1
    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v4

    .line 362
    goto :goto_1

    .line 366
    :cond_2
    const v3, 0x7f1100c0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mMessage:Landroid/widget/TextView;

    .line 367
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mMessageText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    .line 368
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mMessageText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setMessage(Ljava/lang/CharSequence;)V

    .line 373
    :goto_2
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->init()V

    .line 318
    return-void

    .line 370
    :cond_3
    const v3, 0x7f0e0317

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setMessage(I)V

    goto :goto_2

    .line 335
    :array_0
    .array-data 4
        0x7f110258
        0x7f11025a
        0x7f11025c
        0x7f11025e
        0x7f110261
        0x7f110263
        0x7f110265
        0x7f110267
    .end array-data
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 132
    const v2, 0x7f1101ed

    .line 131
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    .line 133
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 134
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 136
    .local v0, "imageDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    .line 144
    .local v1, "showColor":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 145
    iget-boolean v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mVisibility:Z

    if-eqz v2, :cond_1

    .line 146
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    .end local v0    # "imageDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "showColor":Ljava/lang/String;
    :cond_1
    return-void

    .line 138
    .restart local v0    # "imageDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    .restart local v1    # "showColor":Ljava/lang/String;
    goto :goto_0
.end method

.method protected onDialogClosed(I)V
    .locals 5
    .param p1, "whichButton"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 378
    invoke-super {p0, p1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onDialogClosed(I)V

    .line 380
    const/4 v4, -0x1

    if-ne p1, v4, :cond_1

    const/4 v2, 0x1

    .line 381
    .local v2, "positiveResult":Z
    :goto_0
    const/4 v4, -0x3

    if-ne p1, v4, :cond_2

    const/4 v0, 0x1

    .line 383
    .local v0, "defaultResult":Z
    :goto_1
    if-eqz v2, :cond_5

    .line 384
    iget-object v4, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 387
    .local v1, "equal":Z
    :goto_2
    if-nez v1, :cond_0

    .line 388
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColor(Ljava/lang/String;)V

    .line 377
    .end local v1    # "equal":Z
    :cond_0
    :goto_3
    return-void

    .line 380
    .end local v0    # "defaultResult":Z
    .end local v2    # "positiveResult":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "positiveResult":Z
    goto :goto_0

    .line 381
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "defaultResult":Z
    goto :goto_1

    .line 385
    :cond_3
    iget-object v4, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    iget-object v4, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_2

    .line 390
    :cond_5
    if-eqz v0, :cond_0

    .line 391
    iget-object v4, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    if-nez v4, :cond_6

    .line 394
    .restart local v1    # "equal":Z
    :goto_4
    if-nez v1, :cond_0

    .line 395
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColor(Ljava/lang/String;)V

    goto :goto_3

    .line 392
    .end local v1    # "equal":Z
    :cond_6
    iget-object v4, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    iget-object v4, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4

    :cond_7
    move v1, v3

    goto :goto_4
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 424
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/oneplus/settings/ui/ColorPickerPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 430
    check-cast v0, Lcom/oneplus/settings/ui/ColorPickerPreference$SavedState;

    .line 431
    .local v0, "myState":Lcom/oneplus/settings/ui/ColorPickerPreference$SavedState;
    invoke-virtual {v0}, Lcom/oneplus/settings/ui/ColorPickerPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 434
    iget-object v1, v0, Lcom/oneplus/settings/ui/ColorPickerPreference$SavedState;->tmpColor:Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mViews:[Landroid/view/View;

    if-eqz v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setSelection(Ljava/lang/String;I)V

    .line 436
    iget-object v1, v0, Lcom/oneplus/settings/ui/ColorPickerPreference$SavedState;->tmpColor:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setTmpColor(Ljava/lang/String;)V

    .line 423
    :cond_0
    return-void

    .line 426
    .end local v0    # "myState":Lcom/oneplus/settings/ui/ColorPickerPreference$SavedState;
    :cond_1
    invoke-super {p0, p1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 427
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 407
    invoke-super {p0}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 410
    .local v1, "superState":Landroid/os/Parcelable;
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 412
    return-object v1

    .line 416
    :cond_0
    new-instance v0, Lcom/oneplus/settings/ui/ColorPickerPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 418
    .local v0, "myState":Lcom/oneplus/settings/ui/ColorPickerPreference$SavedState;
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    iput-object v2, v0, Lcom/oneplus/settings/ui/ColorPickerPreference$SavedState;->tmpColor:Ljava/lang/String;

    .line 419
    return-object v0
.end method

.method protected onSetColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 282
    return-void
.end method

.method protected onSetColorPalette([Ljava/lang/String;)V
    .locals 0
    .param p1, "colors"    # [Ljava/lang/String;

    .prologue
    .line 298
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 402
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, p2}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColor(Ljava/lang/String;)V

    .line 401
    return-void

    .line 402
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 4
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    .line 193
    invoke-direct {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->updateSummary()V

    .line 194
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/ui/ColorPickerPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/ui/ColorPickerPreference;->onSetColor(Ljava/lang/String;)V

    .line 197
    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 198
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 200
    .local v0, "imageDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    .line 208
    .local v1, "showColor":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 210
    .end local v0    # "imageDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "showColor":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->persistString(Ljava/lang/String;)Z

    .line 184
    return-void

    .line 202
    .restart local v0    # "imageDrawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object v1, p1

    .line 200
    .restart local v1    # "showColor":Ljava/lang/String;
    goto :goto_0
.end method

.method public setColorPalette([Ljava/lang/String;)V
    .locals 0
    .param p1, "colors"    # [Ljava/lang/String;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    .line 235
    return-void
.end method

.method public setColorPalette([Ljava/lang/String;[I)V
    .locals 0
    .param p1, "colors"    # [Ljava/lang/String;
    .param p2, "colorStringResIds"    # [I

    .prologue
    .line 230
    iput-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    .line 231
    iput-object p2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPaletteNamesResIds:[I

    .line 229
    return-void
.end method

.method public setDefaultColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 311
    invoke-super {p0, p1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->setEnabled(Z)V

    .line 310
    return-void
.end method

.method public setImageViewVisibility()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mVisibility:Z

    .line 151
    return-void
.end method

.method public setMessage(I)V
    .locals 2
    .param p1, "messageResId"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    return-void
.end method

.method public setMessageText(I)V
    .locals 1
    .param p1, "messageResId"    # I

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mMessageText:Ljava/lang/CharSequence;

    .line 172
    return-void
.end method

.method public setMessageText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mMessageText:Ljava/lang/CharSequence;

    .line 167
    return-void
.end method

.method public setSelection(Ljava/lang/String;I)V
    .locals 4
    .param p1, "color"    # Ljava/lang/String;
    .param p2, "visibility"    # I

    .prologue
    .line 260
    if-nez p1, :cond_0

    return-void

    .line 261
    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v1, -0x1

    .line 262
    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_1

    .line 263
    const/16 v2, 0x8

    new-array v0, v2, [I

    .local v0, "ids":[I
    fill-array-data v0, :array_0

    .line 273
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mViews:[Landroid/view/View;

    aget-object v2, v2, v1

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    .line 259
    .end local v0    # "ids":[I
    :cond_1
    return-void

    .line 261
    .end local v1    # "index":I
    :cond_2
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    .line 263
    :array_0
    .array-data 4
        0x7f110259
        0x7f11025b
        0x7f11025d
        0x7f11025f
        0x7f110262
        0x7f110264
        0x7f110266
        0x7f110268
    .end array-data
.end method
