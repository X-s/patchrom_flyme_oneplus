.class public Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;
.super Landroid/support/v7/preference/Preference;
.source "OPFingerPrintEditCategory.java"


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private mFingerprintName:Ljava/lang/CharSequence;

.field private mFingerprintNameView:Landroid/widget/TextView;

.field private mLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 31
    const v0, 0x7f0400e2

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mLayoutResId:I

    .line 36
    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->initViews(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const v0, 0x7f0400e2

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mLayoutResId:I

    .line 42
    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->initViews(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const v0, 0x7f0400e2

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mLayoutResId:I

    .line 49
    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->initViews(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mContext:Landroid/content/Context;

    .line 54
    iget v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mLayoutResId:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->setLayoutResource(I)V

    .line 52
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 68
    const v0, 0x7f110204

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mFingerprintNameView:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mFingerprintNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mFingerprintName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 66
    return-void
.end method

.method public setFingerprintName(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mFingerprintName:Ljava/lang/CharSequence;

    .line 75
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mFingerprintNameView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mFingerprintNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_0
    return-void
.end method
