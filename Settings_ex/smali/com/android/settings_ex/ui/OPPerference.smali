.class public Lcom/android/settings_ex/ui/OPPerference;
.super Lcom/oneplus/widget/preference/OPPreference;
.source "OPPerference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImage:Landroid/widget/ImageView;

.field private mSummary:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private prefsummary:Ljava/lang/String;

.field private preftitle:Ljava/lang/String;

.field private resid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/oneplus/widget/preference/OPPreference;-><init>(Landroid/content/Context;)V

    .line 20
    const v0, 0x7f020140

    iput v0, p0, Lcom/android/settings_ex/ui/OPPerference;->resid:I

    .line 27
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPPerference;->initView(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/oneplus/widget/preference/OPPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const v0, 0x7f020140

    iput v0, p0, Lcom/android/settings_ex/ui/OPPerference;->resid:I

    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPPerference;->initView(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/widget/preference/OPPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const v0, 0x7f020140

    iput v0, p0, Lcom/android/settings_ex/ui/OPPerference;->resid:I

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPPerference;->initView(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPPerference;->mContext:Landroid/content/Context;

    .line 45
    const v0, 0x7f04009d

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ui/OPPerference;->setLayoutResource(I)V

    .line 46
    const v0, 0x7f020140

    iput v0, p0, Lcom/android/settings_ex/ui/OPPerference;->resid:I

    .line 47
    const-string v0, "Language"

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPPerference;->preftitle:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public getPreferenceSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPPerference;->prefsummary:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferenceTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPPerference;->preftitle:Ljava/lang/String;

    return-object v0
.end method

.method public getRightImage()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/android/settings_ex/ui/OPPerference;->resid:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/oneplus/widget/preference/OPPreference;->onBindView(Landroid/view/View;)V

    .line 56
    const v0, 0x7f120139

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPPerference;->mImage:Landroid/widget/ImageView;

    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPPerference;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v0, 0x7f120036

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPPerference;->mTitle:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f120048

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPPerference;->mSummary:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPPerference;->mImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPPerference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/ui/OPPerference;->resid:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPPerference;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPPerference;->preftitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPPerference;->mSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPPerference;->prefsummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPPerference;->mSummary:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 107
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/oneplus/widget/preference/OPPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setPreferenceSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPPerference;->prefsummary:Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Lcom/android/settings_ex/ui/OPPerference;->notifyChanged()V

    .line 101
    return-void
.end method

.method public setPreferenceTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPPerference;->preftitle:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/android/settings_ex/ui/OPPerference;->notifyChanged()V

    .line 92
    return-void
.end method

.method public setRightImage(I)V
    .locals 0
    .param p1, "resid"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/android/settings_ex/ui/OPPerference;->resid:I

    .line 82
    invoke-virtual {p0}, Lcom/android/settings_ex/ui/OPPerference;->notifyChanged()V

    .line 83
    return-void
.end method
