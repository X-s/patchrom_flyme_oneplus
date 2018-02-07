.class public abstract Landroid/support/v7/preference/TwoStatePreference;
.super Landroid/support/v7/preference/Preference;
.source "TwoStatePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/TwoStatePreference$SavedState;
    }
.end annotation


# instance fields
.field protected mChecked:Z

.field private mCheckedSet:Z

.field private mDisableDependentsState:Z

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    return-void
.end method


# virtual methods
.method public getDisableDependentsState()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Landroid/support/v7/preference/TwoStatePreference;->mDisableDependentsState:Z

    return v0
.end method

.method public getSummaryOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Landroid/support/v7/preference/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummaryOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Landroid/support/v7/preference/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Landroid/support/v7/preference/TwoStatePreference;->mChecked:Z

    return v0
.end method

.method protected onClick()V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onClick()V

    .line 65
    invoke-virtual {p0}, Landroid/support/v7/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 66
    .local v0, "newValue":Z
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/TwoStatePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    .line 62
    :cond_0
    return-void

    .line 65
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
    .line 184
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
    .line 252
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/support/v7/preference/TwoStatePreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 258
    check-cast v0, Landroid/support/v7/preference/TwoStatePreference$SavedState;

    .line 259
    .local v0, "myState":Landroid/support/v7/preference/TwoStatePreference$SavedState;
    invoke-virtual {v0}, Landroid/support/v7/preference/TwoStatePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/support/v7/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 260
    iget-boolean v1, v0, Landroid/support/v7/preference/TwoStatePreference$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    .line 251
    return-void

    .line 254
    .end local v0    # "myState":Landroid/support/v7/preference/TwoStatePreference$SavedState;
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 255
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 239
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 240
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/support/v7/preference/TwoStatePreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    return-object v1

    .line 245
    :cond_0
    new-instance v0, Landroid/support/v7/preference/TwoStatePreference$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v7/preference/TwoStatePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 246
    .local v0, "myState":Landroid/support/v7/preference/TwoStatePreference$SavedState;
    invoke-virtual {p0}, Landroid/support/v7/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Landroid/support/v7/preference/TwoStatePreference$SavedState;->checked:Z

    .line 247
    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 189
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/preference/TwoStatePreference;->mChecked:Z

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/TwoStatePreference;->getPersistedBoolean(Z)Z

    move-result v0

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    .line 188
    return-void

    .line 190
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

    .line 78
    iget-boolean v2, p0, Landroid/support/v7/preference/TwoStatePreference;->mChecked:Z

    if-eq v2, p1, :cond_1

    move v0, v1

    .line 79
    .local v0, "changed":Z
    :goto_0
    if-nez v0, :cond_2

    iget-boolean v2, p0, Landroid/support/v7/preference/TwoStatePreference;->mCheckedSet:Z

    if-eqz v2, :cond_2

    .line 76
    :cond_0
    :goto_1
    return-void

    .line 78
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 80
    .restart local v0    # "changed":Z
    :cond_2
    iput-boolean p1, p0, Landroid/support/v7/preference/TwoStatePreference;->mChecked:Z

    .line 81
    iput-boolean v1, p0, Landroid/support/v7/preference/TwoStatePreference;->mCheckedSet:Z

    .line 82
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/TwoStatePreference;->persistBoolean(Z)Z

    .line 83
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Landroid/support/v7/preference/TwoStatePreference;->shouldDisableDependents()Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/TwoStatePreference;->notifyDependencyChange(Z)V

    .line 85
    invoke-virtual {p0}, Landroid/support/v7/preference/TwoStatePreference;->notifyChanged()V

    goto :goto_1
.end method

.method public setDisableDependentsState(Z)V
    .locals 0
    .param p1, "disableDependentsState"    # Z

    .prologue
    .line 179
    iput-boolean p1, p0, Landroid/support/v7/preference/TwoStatePreference;->mDisableDependentsState:Z

    .line 178
    return-void
.end method

.method public setSummaryOff(I)V
    .locals 1
    .param p1, "summaryResId"    # I

    .prologue
    .line 150
    invoke-virtual {p0}, Landroid/support/v7/preference/TwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/TwoStatePreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 149
    return-void
.end method

.method public setSummaryOff(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 139
    iput-object p1, p0, Landroid/support/v7/preference/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 140
    invoke-virtual {p0}, Landroid/support/v7/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p0}, Landroid/support/v7/preference/TwoStatePreference;->notifyChanged()V

    .line 138
    :cond_0
    return-void
.end method

.method public setSummaryOn(I)V
    .locals 1
    .param p1, "summaryResId"    # I

    .prologue
    .line 122
    invoke-virtual {p0}, Landroid/support/v7/preference/TwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/TwoStatePreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 121
    return-void
.end method

.method public setSummaryOn(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 111
    iput-object p1, p0, Landroid/support/v7/preference/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 112
    invoke-virtual {p0}, Landroid/support/v7/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Landroid/support/v7/preference/TwoStatePreference;->notifyChanged()V

    .line 110
    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 101
    iget-boolean v2, p0, Landroid/support/v7/preference/TwoStatePreference;->mDisableDependentsState:Z

    if-eqz v2, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/preference/TwoStatePreference;->mChecked:Z

    .line 102
    .local v0, "shouldDisable":Z
    :goto_0
    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/preference/Preference;->shouldDisableDependents()Z

    move-result v1

    :cond_0
    return v1

    .line 101
    .end local v0    # "shouldDisable":Z
    :cond_1
    iget-boolean v2, p0, Landroid/support/v7/preference/TwoStatePreference;->mChecked:Z

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected syncSummaryView(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 199
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 200
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/TwoStatePreference;->syncSummaryView(Landroid/view/View;)V

    .line 197
    return-void
.end method

.method protected syncSummaryView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 208
    instance-of v4, p1, Landroid/widget/TextView;

    if-nez v4, :cond_0

    .line 209
    return-void

    :cond_0
    move-object v2, p1

    .line 211
    check-cast v2, Landroid/widget/TextView;

    .line 212
    .local v2, "summaryView":Landroid/widget/TextView;
    const/4 v3, 0x1

    .line 213
    .local v3, "useDefaultSummary":Z
    iget-boolean v4, p0, Landroid/support/v7/preference/TwoStatePreference;->mChecked:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/support/v7/preference/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 216
    :cond_1
    iget-boolean v4, p0, Landroid/support/v7/preference/TwoStatePreference;->mChecked:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/support/v7/preference/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 220
    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    .line 221
    invoke-virtual {p0}, Landroid/support/v7/preference/TwoStatePreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 222
    .local v1, "summary":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 223
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    const/4 v3, 0x0

    .line 227
    .end local v1    # "summary":Ljava/lang/CharSequence;
    :cond_3
    const/16 v0, 0x8

    .line 228
    .local v0, "newVisibility":I
    if-nez v3, :cond_4

    .line 230
    const/4 v0, 0x0

    .line 232
    :cond_4
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eq v0, v4, :cond_5

    .line 233
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    :cond_5
    return-void

    .line 214
    .end local v0    # "newVisibility":I
    :cond_6
    iget-object v4, p0, Landroid/support/v7/preference/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    const/4 v3, 0x0

    .line 213
    goto :goto_0

    .line 217
    :cond_7
    iget-object v4, p0, Landroid/support/v7/preference/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    const/4 v3, 0x0

    goto :goto_0
.end method
