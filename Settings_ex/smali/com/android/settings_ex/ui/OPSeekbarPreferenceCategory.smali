.class public Lcom/android/settings_ex/ui/OPSeekbarPreferenceCategory;
.super Lcom/oneplus/widget/preference/OPPreference;
.source "OPSeekbarPreferenceCategory.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/oneplus/widget/preference/OPPreference;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPSeekbarPreferenceCategory;->initViews(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/oneplus/widget/preference/OPPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPSeekbarPreferenceCategory;->initViews(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/widget/preference/OPPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPSeekbarPreferenceCategory;->initViews(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const v0, 0x7f0400b5

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ui/OPSeekbarPreferenceCategory;->setLayoutResource(I)V

    .line 37
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/oneplus/widget/preference/OPPreference;->onBindView(Landroid/view/View;)V

    .line 44
    return-void
.end method
