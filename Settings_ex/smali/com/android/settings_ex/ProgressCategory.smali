.class public Lcom/android/settings_ex/ProgressCategory;
.super Lcom/android/settings_ex/ProgressCategoryBase;
.source "ProgressCategory.java"


# instance fields
.field private mEmptyTextRes:I

.field private mNoDeviceFoundAdded:Z

.field private mNoDeviceFoundPreference:Landroid/preference/Preference;

.field private mProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/ProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    iput-boolean v0, p0, Lcom/android/settings_ex/ProgressCategory;->mProgress:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings_ex/ProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings_ex/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/ProgressCategory;->mProgress:Z

    .line 49
    const v0, 0x7f0400d6

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ProgressCategory;->setLayoutResource(I)V

    .line 50
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings_ex/ProgressCategoryBase;->onBindView(Landroid/view/View;)V

    .line 59
    const v4, 0x7f1201a0

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 61
    .local v1, "progressBar":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings_ex/ProgressCategory;->getPreferenceCount()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/ProgressCategory;->getPreferenceCount()I

    move-result v4

    if-ne v4, v3, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-ne v4, v5, :cond_3

    :cond_0
    move v0, v3

    .line 63
    .local v0, "noDeviceFound":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/settings_ex/ProgressCategory;->mProgress:Z

    if-eqz v4, :cond_4

    move v4, v2

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-boolean v4, p0, Lcom/android/settings_ex/ProgressCategory;->mProgress:Z

    if-nez v4, :cond_1

    if-nez v0, :cond_5

    .line 66
    :cond_1
    iget-boolean v3, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-eqz v3, :cond_2

    .line 67
    iget-object v3, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/ProgressCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 68
    iput-boolean v2, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundAdded:Z

    .line 82
    :cond_2
    :goto_2
    return-void

    .end local v0    # "noDeviceFound":Z
    :cond_3
    move v0, v2

    .line 61
    goto :goto_0

    .line 63
    .restart local v0    # "noDeviceFound":Z
    :cond_4
    const/16 v4, 0x8

    goto :goto_1

    .line 71
    :cond_5
    iget-boolean v4, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-nez v4, :cond_2

    .line 72
    iget-object v4, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-nez v4, :cond_6

    .line 73
    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/ProgressCategory;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    .line 74
    iget-object v4, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    const v5, 0x7f0400cb

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 75
    iget-object v4, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    iget v5, p0, Lcom/android/settings_ex/ProgressCategory;->mEmptyTextRes:I

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 76
    iget-object v4, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 78
    :cond_6
    iget-object v2, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 79
    iput-boolean v3, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundAdded:Z

    goto :goto_2
.end method

.method public setEmptyTextRes(I)V
    .locals 0
    .param p1, "emptyTextRes"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/settings_ex/ProgressCategory;->mEmptyTextRes:I

    .line 54
    return-void
.end method

.method public setProgress(Z)V
    .locals 0
    .param p1, "progressOn"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/settings_ex/ProgressCategory;->mProgress:Z

    .line 87
    invoke-virtual {p0}, Lcom/android/settings_ex/ProgressCategory;->notifyChanged()V

    .line 88
    return-void
.end method
