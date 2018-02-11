.class public Lcom/android/settings_ex/ProgressCategory;
.super Lcom/android/settings_ex/ProgressCategoryBase;
.source "ProgressCategory.java"


# instance fields
.field private mEmptyTextRes:I

.field private mNoDeviceFoundAdded:Z

.field private mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

.field private mProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/ProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput-boolean v0, p0, Lcom/android/settings_ex/ProgressCategory;->mProgress:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings_ex/ProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings_ex/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/ProgressCategory;->mProgress:Z

    .line 50
    const v0, 0x7f040153

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ProgressCategory;->setLayoutResource(I)V

    .line 48
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 6
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings_ex/ProgressCategoryBase;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 60
    const v2, 0x7f110287

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 62
    .local v1, "progressBar":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings_ex/ProgressCategory;->getPreferenceCount()I

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    invoke-virtual {p0}, Lcom/android/settings_ex/ProgressCategory;->getPreferenceCount()I

    move-result v2

    if-ne v2, v5, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/ProgressCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    if-ne v2, v4, :cond_3

    const/4 v0, 0x1

    .line 64
    .local v0, "noDeviceFound":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/settings_ex/ProgressCategory;->mProgress:Z

    if-eqz v2, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-boolean v2, p0, Lcom/android/settings_ex/ProgressCategory;->mProgress:Z

    if-nez v2, :cond_5

    if-eqz v0, :cond_5

    .line 72
    iget-boolean v2, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-nez v2, :cond_1

    .line 73
    iget-object v2, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    if-nez v2, :cond_0

    .line 74
    new-instance v2, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/ProgressCategory;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    .line 75
    iget-object v2, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    const v4, 0x7f040142

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/Preference;->setLayoutResource(I)V

    .line 76
    iget-object v2, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    iget v4, p0, Lcom/android/settings_ex/ProgressCategory;->mEmptyTextRes:I

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 77
    iget-object v2, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 79
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ProgressCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 80
    iput-boolean v5, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundAdded:Z

    .line 58
    :cond_1
    :goto_2
    return-void

    .line 62
    .end local v0    # "noDeviceFound":Z
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "noDeviceFound":Z
    goto :goto_0

    .line 63
    .end local v0    # "noDeviceFound":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "noDeviceFound":Z
    goto :goto_0

    .line 64
    :cond_4
    const/16 v2, 0x8

    goto :goto_1

    .line 67
    :cond_5
    iget-boolean v2, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-eqz v2, :cond_1

    .line 68
    iget-object v2, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ProgressCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 69
    iput-boolean v3, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundAdded:Z

    goto :goto_2
.end method

.method public setEmptyTextRes(I)V
    .locals 0
    .param p1, "emptyTextRes"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/android/settings_ex/ProgressCategory;->mEmptyTextRes:I

    .line 53
    return-void
.end method

.method public setProgress(Z)V
    .locals 0
    .param p1, "progressOn"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/settings_ex/ProgressCategory;->mProgress:Z

    .line 88
    invoke-virtual {p0}, Lcom/android/settings_ex/ProgressCategory;->notifyChanged()V

    .line 86
    return-void
.end method
