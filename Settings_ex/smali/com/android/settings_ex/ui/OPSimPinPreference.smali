.class public Lcom/android/settings_ex/ui/OPSimPinPreference;
.super Landroid/preference/Preference;
.source "OPSimPinPreference.java"

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
    .line 26
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 21
    const v0, 0x7f020140

    iput v0, p0, Lcom/android/settings_ex/ui/OPSimPinPreference;->resid:I

    .line 28
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPSimPinPreference;->initView(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const v0, 0x7f020140

    iput v0, p0, Lcom/android/settings_ex/ui/OPSimPinPreference;->resid:I

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPSimPinPreference;->initView(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const v0, 0x7f020140

    iput v0, p0, Lcom/android/settings_ex/ui/OPSimPinPreference;->resid:I

    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPSimPinPreference;->initView(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPSimPinPreference;->mContext:Landroid/content/Context;

    .line 46
    const v0, 0x7f0400b8

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ui/OPSimPinPreference;->setLayoutResource(I)V

    .line 51
    return-void
.end method


# virtual methods
.method public getImage()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/android/settings_ex/ui/OPSimPinPreference;->resid:I

    return v0
.end method

.method public getPreferenceSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSimPinPreference;->prefsummary:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferenceTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSimPinPreference;->preftitle:Ljava/lang/String;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 57
    const v0, 0x7f120139

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPSimPinPreference;->mImage:Landroid/widget/ImageView;

    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSimPinPreference;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v0, 0x7f120036

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPSimPinPreference;->mTitle:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f120048

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPSimPinPreference;->mSummary:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSimPinPreference;->mImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPSimPinPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/ui/OPSimPinPreference;->resid:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSimPinPreference;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPSimPinPreference;->preftitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSimPinPreference;->mSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPSimPinPreference;->prefsummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSimPinPreference;->mSummary:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 108
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setImage(I)V
    .locals 0
    .param p1, "resid"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/android/settings_ex/ui/OPSimPinPreference;->resid:I

    .line 83
    invoke-virtual {p0}, Lcom/android/settings_ex/ui/OPSimPinPreference;->notifyChanged()V

    .line 84
    return-void
.end method

.method public setPreferenceSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPSimPinPreference;->prefsummary:Ljava/lang/String;

    .line 101
    invoke-virtual {p0}, Lcom/android/settings_ex/ui/OPSimPinPreference;->notifyChanged()V

    .line 102
    return-void
.end method

.method public setPreferenceTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPSimPinPreference;->preftitle:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lcom/android/settings_ex/ui/OPSimPinPreference;->notifyChanged()V

    .line 93
    return-void
.end method
