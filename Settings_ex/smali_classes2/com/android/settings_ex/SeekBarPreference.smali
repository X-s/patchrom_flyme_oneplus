.class public Lcom/android/settings_ex/SeekBarPreference;
.super Lcom/android/settings_exlib/RestrictedPreference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/SeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field private mMax:I

.field private mProgress:I

.field private mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    const v0, 0x1160026

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings_ex/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings_exlib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    sget-object v2, Lcom/android/internal/R$styleable;->ProgressBar:[I

    .line 47
    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v2, p0, Lcom/android/settings_ex/SeekBarPreference;->mMax:I

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SeekBarPreference;->setMax(I)V

    .line 50
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    sget-object v2, Lcom/android/internal/R$styleable;->SeekBarPreference:[I

    .line 52
    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    const/4 v2, 0x0

    .line 56
    const v3, 0x10900bc

    .line 54
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 57
    .local v1, "layoutResId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SeekBarPreference;->setLayoutResource(I)V

    .line 44
    return-void
.end method

.method private setProgress(IZ)V
    .locals 1
    .param p1, "progress"    # I
    .param p2, "notifyChanged"    # Z

    .prologue
    .line 127
    iget v0, p0, Lcom/android/settings_ex/SeekBarPreference;->mMax:I

    if-le p1, v0, :cond_0

    .line 128
    iget p1, p0, Lcom/android/settings_ex/SeekBarPreference;->mMax:I

    .line 130
    :cond_0
    if-gez p1, :cond_1

    .line 131
    const/4 p1, 0x0

    .line 133
    :cond_1
    iget v0, p0, Lcom/android/settings_ex/SeekBarPreference;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 134
    iput p1, p0, Lcom/android/settings_ex/SeekBarPreference;->mProgress:I

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/SeekBarPreference;->persistInt(I)Z

    .line 136
    if-eqz p2, :cond_2

    .line 137
    invoke-virtual {p0}, Lcom/android/settings_ex/SeekBarPreference;->notifyChanged()V

    .line 126
    :cond_2
    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/android/settings_ex/SeekBarPreference;->mProgress:I

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/android/settings_exlib/RestrictedPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 77
    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 79
    const v1, 0x10203d9

    .line 78
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 80
    .local v0, "seekBar":Landroid/widget/SeekBar;
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 81
    iget v1, p0, Lcom/android/settings_ex/SeekBarPreference;->mMax:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 82
    iget v1, p0, Lcom/android/settings_ex/SeekBarPreference;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings_ex/SeekBarPreference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 75
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    return v2

    .line 108
    :cond_0
    const v1, 0x10203d9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 109
    .local v0, "seekBar":Landroid/widget/SeekBar;
    if-nez v0, :cond_1

    .line 110
    return v2

    .line 112
    :cond_1
    invoke-virtual {v0, p2, p3}, Landroid/widget/SeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 164
    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/SeekBarPreference;->mTrackingTouch:Z

    if-eqz v0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 205
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/settings_ex/SeekBarPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    invoke-super {p0, p1}, Lcom/android/settings_exlib/RestrictedPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 208
    return-void

    :cond_0
    move-object v0, p1

    .line 212
    check-cast v0, Lcom/android/settings_ex/SeekBarPreference$SavedState;

    .line 213
    .local v0, "myState":Lcom/android/settings_ex/SeekBarPreference$SavedState;
    invoke-virtual {v0}, Lcom/android/settings_ex/SeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/android/settings_exlib/RestrictedPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 214
    iget v1, v0, Lcom/android/settings_ex/SeekBarPreference$SavedState;->progress:I

    iput v1, p0, Lcom/android/settings_ex/SeekBarPreference;->mProgress:I

    .line 215
    iget v1, v0, Lcom/android/settings_ex/SeekBarPreference$SavedState;->max:I

    iput v1, p0, Lcom/android/settings_ex/SeekBarPreference;->mMax:I

    .line 216
    invoke-virtual {p0}, Lcom/android/settings_ex/SeekBarPreference;->notifyChanged()V

    .line 204
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 190
    invoke-super {p0}, Lcom/android/settings_exlib/RestrictedPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 191
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/settings_ex/SeekBarPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    return-object v1

    .line 197
    :cond_0
    new-instance v0, Lcom/android/settings_ex/SeekBarPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/settings_ex/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 198
    .local v0, "myState":Lcom/android/settings_ex/SeekBarPreference$SavedState;
    iget v2, p0, Lcom/android/settings_ex/SeekBarPreference;->mProgress:I

    iput v2, v0, Lcom/android/settings_ex/SeekBarPreference$SavedState;->progress:I

    .line 199
    iget v2, p0, Lcom/android/settings_ex/SeekBarPreference;->mMax:I

    iput v2, v0, Lcom/android/settings_ex/SeekBarPreference$SavedState;->max:I

    .line 200
    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 93
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/settings_ex/SeekBarPreference;->mProgress:I

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SeekBarPreference;->getPersistedInt(I)I

    move-result v0

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SeekBarPreference;->setProgress(I)V

    .line 92
    return-void

    .line 94
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/SeekBarPreference;->mTrackingTouch:Z

    .line 170
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/SeekBarPreference;->mTrackingTouch:Z

    .line 177
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/android/settings_ex/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 178
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 175
    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 116
    iget v0, p0, Lcom/android/settings_ex/SeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_0

    .line 117
    iput p1, p0, Lcom/android/settings_ex/SeekBarPreference;->mMax:I

    .line 118
    invoke-virtual {p0}, Lcom/android/settings_ex/SeekBarPreference;->notifyChanged()V

    .line 115
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 123
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/SeekBarPreference;->setProgress(IZ)V

    .line 122
    return-void
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 152
    .local v0, "progress":I
    iget v1, p0, Lcom/android/settings_ex/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 153
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/SeekBarPreference;->setProgress(IZ)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget v1, p0, Lcom/android/settings_ex/SeekBarPreference;->mProgress:I

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
