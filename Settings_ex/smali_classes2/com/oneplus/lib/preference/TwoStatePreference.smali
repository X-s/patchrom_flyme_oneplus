.class public abstract Lcom/oneplus/lib/preference/TwoStatePreference;
.super Lcom/oneplus/lib/preference/Preference;
.source "TwoStatePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/preference/TwoStatePreference$SavedState;
    }
.end annotation


# instance fields
.field mChecked:Z

.field private mCheckedSet:Z

.field private mDisableDependentsState:Z

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    return-void
.end method


# virtual methods
.method public getDisableDependentsState()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mDisableDependentsState:Z

    return v0
.end method

.method public getSummaryOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummaryOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mChecked:Z

    return v0
.end method

.method protected onClick()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Lcom/oneplus/lib/preference/Preference;->onClick()V

    .line 63
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 64
    .local v0, "newValue":Z
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/TwoStatePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/TwoStatePreference;->setChecked(Z)V

    .line 60
    :cond_0
    return-void

    .line 63
    .end local v0    # "newValue":Z
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 242
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/oneplus/lib/preference/TwoStatePreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 248
    check-cast v0, Lcom/oneplus/lib/preference/TwoStatePreference$SavedState;

    .line 249
    .local v0, "myState":Lcom/oneplus/lib/preference/TwoStatePreference$SavedState;
    invoke-virtual {v0}, Lcom/oneplus/lib/preference/TwoStatePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/oneplus/lib/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 250
    iget-boolean v1, v0, Lcom/oneplus/lib/preference/TwoStatePreference$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/TwoStatePreference;->setChecked(Z)V

    .line 241
    return-void

    .line 244
    .end local v0    # "myState":Lcom/oneplus/lib/preference/TwoStatePreference$SavedState;
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 245
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 229
    invoke-super {p0}, Lcom/oneplus/lib/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 230
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/TwoStatePreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    return-object v1

    .line 235
    :cond_0
    new-instance v0, Lcom/oneplus/lib/preference/TwoStatePreference$SavedState;

    invoke-direct {v0, v1}, Lcom/oneplus/lib/preference/TwoStatePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 236
    .local v0, "myState":Lcom/oneplus/lib/preference/TwoStatePreference$SavedState;
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/oneplus/lib/preference/TwoStatePreference$SavedState;->checked:Z

    .line 237
    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 187
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mChecked:Z

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/TwoStatePreference;->getPersistedBoolean(Z)Z

    move-result v0

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/TwoStatePreference;->setChecked(Z)V

    .line 186
    return-void

    .line 188
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    const/4 v1, 0x1

    .line 76
    iget-boolean v2, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mChecked:Z

    if-eq v2, p1, :cond_1

    move v0, v1

    .line 77
    .local v0, "changed":Z
    :goto_0
    if-nez v0, :cond_2

    iget-boolean v2, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mCheckedSet:Z

    if-eqz v2, :cond_2

    .line 74
    :cond_0
    :goto_1
    return-void

    .line 76
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 78
    .restart local v0    # "changed":Z
    :cond_2
    iput-boolean p1, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mChecked:Z

    .line 79
    iput-boolean v1, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mCheckedSet:Z

    .line 80
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/TwoStatePreference;->persistBoolean(Z)Z

    .line 81
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/TwoStatePreference;->shouldDisableDependents()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/TwoStatePreference;->notifyDependencyChange(Z)V

    .line 83
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/TwoStatePreference;->notifyChanged()V

    goto :goto_1
.end method

.method public setDisableDependentsState(Z)V
    .locals 0
    .param p1, "disableDependentsState"    # Z

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mDisableDependentsState:Z

    .line 176
    return-void
.end method

.method public setSummaryOff(I)V
    .locals 1
    .param p1, "summaryResId"    # I

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/TwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/TwoStatePreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 147
    return-void
.end method

.method public setSummaryOff(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 138
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/TwoStatePreference;->notifyChanged()V

    .line 136
    :cond_0
    return-void
.end method

.method public setSummaryOn(I)V
    .locals 1
    .param p1, "summaryResId"    # I

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/TwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/TwoStatePreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 119
    return-void
.end method

.method public setSummaryOn(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 110
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/TwoStatePreference;->notifyChanged()V

    .line 108
    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 99
    iget-boolean v2, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mDisableDependentsState:Z

    if-eqz v2, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mChecked:Z

    .line 100
    .local v0, "shouldDisable":Z
    :goto_0
    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/oneplus/lib/preference/Preference;->shouldDisableDependents()Z

    move-result v1

    :cond_0
    return v1

    .line 99
    .end local v0    # "shouldDisable":Z
    :cond_1
    iget-boolean v2, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mChecked:Z

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method syncSummaryView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 197
    const v4, 0x1020010

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 198
    .local v2, "summaryView":Landroid/widget/TextView;
    if-eqz v2, :cond_4

    .line 199
    const/4 v3, 0x1

    .line 200
    .local v3, "useDefaultSummary":Z
    iget-boolean v4, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mChecked:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 203
    :cond_0
    iget-boolean v4, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mChecked:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 208
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 209
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/TwoStatePreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 210
    .local v1, "summary":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 211
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    const/4 v3, 0x0

    .line 216
    .end local v1    # "summary":Ljava/lang/CharSequence;
    :cond_2
    const/16 v0, 0x8

    .line 217
    .local v0, "newVisibility":I
    if-nez v3, :cond_3

    .line 219
    const/4 v0, 0x0

    .line 221
    :cond_3
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eq v0, v4, :cond_4

    .line 222
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    .end local v0    # "newVisibility":I
    .end local v3    # "useDefaultSummary":Z
    :cond_4
    return-void

    .line 201
    .restart local v3    # "useDefaultSummary":Z
    :cond_5
    iget-object v4, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    const/4 v3, 0x0

    .line 200
    goto :goto_0

    .line 204
    :cond_6
    iget-object v4, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    const/4 v3, 0x0

    goto :goto_0
.end method
