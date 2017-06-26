.class public Lcom/oneplus/settings/notification/OPSeekBarPreference;
.super Lcom/oneplus/widget/preference/OPPreference;
.source "OPSeekBarPreference.java"

# interfaces
.implements Lcom/oneplus/widget/OPSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/notification/OPSeekBarPreference$SavedState;
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
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/notification/OPSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    const v0, 0x1160029

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/notification/OPSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/settings/notification/OPSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/widget/preference/OPPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    sget-object v2, Lcom/android/internal/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    iget v3, p0, Lcom/oneplus/settings/notification/OPSeekBarPreference;->mMax:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/notification/OPSeekBarPreference;->setMax(I)V

    .line 46
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    sget-object v2, Lcom/android/internal/R$styleable;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 50
    const/4 v2, 0x0

    const v3, 0x10900b5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 53
    .local v1, "layoutResId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    invoke-virtual {p0, v1}, Lcom/oneplus/settings/notification/OPSeekBarPreference;->setLayoutResource(I)V

    .line 56
    return-void
.end method

.method private setProgress(IZ)V
    .locals 1
    .param p1, "progress"    # I
    .param p2, "notifyChanged"    # Z

    .prologue
    .line 125
    iget v0, p0, Lcom/oneplus/settings/notification/OPSeekBarPreference;->mMax:I

    if-le p1, v0, :cond_0

    .line 126
    iget p1, p0, Lcom/oneplus/settings/notification/OPSeekBarPreference;->mMax:I

    .line 128
    :cond_0
    if-gez p1, :cond_1

    .line 129
    const/4 p1, 0x0

    .line 131
    :cond_1
    iget v0, p0, Lcom/oneplus/settings/notification/OPSeekBarPreference;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 132
    iput p1, p0, Lcom/oneplus/settings/notification/OPSeekBarPreference;->mProgress:I

    .line 133
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/notification/OPSeekBarPreference;->persistInt(I)Z

    .line 134
    if-eqz p2, :cond_2

    .line 135
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPSeekBarPreference;->notifyChanged()V

    .line 138
    :cond_2
    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/oneplus/settings/notification/OPSeekBarPreference;->mProgress:I

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/oneplus/widget/preference/OPPreference;->onBindView(Landroid/view/View;)V

    .line 73
    const v1, 0x10203a3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/widget/OPSeekBar;

    .line 75
    .local v0, "seekBar":Lcom/oneplus/widget/OPSeekBar;
    invoke-virtual {v0, p0}, Lcom/oneplus/widget/OPSeekBar;->setOnSeekBarChangeListener(Lcom/oneplus/widget/OPSeekBar$OnSeekBarChangeListener;)V

    .line 76
    iget v1, p0, Lcom/oneplus/settings/notification/OPSeekBarPreference;->mMax:I

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/OPSeekBar;->setMax(I)V

    .line 77
    iget v1, p0, Lcom/oneplus/settings/notification/OPSeekBarPreference;->mProgress:I

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/OPSeekBar;->setProgress(I)V

    .line 78
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPSeekBarPreference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/OPSeekBar;->setEnabled(Z)V

    .line 79
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 99
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 100
    const/16 v1, 0x51

    if-eq p2, v1, :cond_0

    const/16 v1, 0x46

    if-ne p2, v1, :cond_1

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPSeekBarPreference;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/notification/OPSeekBarPreference;->setProgress(I)V

    .line 110
    :goto_0
    return v0

    .line 105
    :cond_1
    const/16 v1, 0x45

    if-ne p2, v1, :cond_2

    .line 106
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPSeekBarPreference;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/notification/OPSeekBarPreference;->setProgress(I)V

    goto :goto_0

    .line 110
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProgressChanged(Lcom/oneplus/widget/OPSeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Lcom/oneplus/widget/OPSeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 162
    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPSeekBarPreference;->mTrackingTouch:Z

    if-nez v0, :cond_0

    .line 163
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/notification/OPSeekBarPreference;->syncProgress(Lcom/oneplus/widget/OPSeekBar;)V

    .line 165
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 203
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/oneplus/settings/notification/OPSeekBarPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    invoke-super {p0, p1}, Lcom/oneplus/widget/preference/OPPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 215
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 210
    check-cast v0, Lcom/oneplus/settings/notification/OPSeekBarPreference$SavedState;

    .line 211
    .local v0, "myState":Lcom/oneplus/settings/notification/OPSeekBarPreference$SavedState;
    invoke-virtual {v0}, Lcom/oneplus/settings/notification/OPSeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/oneplus/widget/preference/OPPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 212
    iget v1, v0, Lcom/oneplus/settings/notification/OPSeekBarPreference$SavedState;->progress:I

    iput v1, p0, Lcom/oneplus/settings/notification/OPSeekBarPreference;->mProgress:I

    .line 213
    iget v1, v0, Lcom/oneplus/settings/notification/OPSeekBarPreference$SavedState;->max:I

    iput v1, p0, Lcom/oneplus/settings/notification/OPSeekBarPreference;->mMax:I

    .line 214
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPSeekBarPreference;->notifyChanged()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 188
    invoke-super {p0}, Lcom/oneplus/widget/preference/OPPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 189
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPSeekBarPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 195
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/oneplus/settings/notification/OPSeekBarPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/oneplus/settings/notification/OPSeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 196
    .local v0, "myState":Lcom/oneplus/settings/notification/OPSeekBarPreference$SavedState;
    iget v2, p0, Lcom/oneplus/settings/notification/OPSeekBarPreference;->mProgress:I

    iput v2, v0, Lcom/oneplus/settings/notification/OPSeekBarPreference$SavedState;->progress:I

    .line 197
    iget v2, p0, Lcom/oneplus/settings/notification/OPSeekBarPreference;->mMax:I

    iput v2, v0, Lcom/oneplus/settings/notification/OPSeekBarPreference$SavedState;->max:I

    move-object v1, v0

    .line 198
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 88
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oneplus/settings/notification/OPSeekBarPreference;->mProgress:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPSeekBarPreference;->getPersistedInt(I)I

    move-result v0

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPSeekBarPreference;->setProgress(I)V

    .line 90
    return-void

    .line 88
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Lcom/oneplus/widget/OPSeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Lcom/oneplus/widget/OPSeekBar;

    .prologue
    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/notification/OPSeekBarPreference;->mTrackingTouch:Z

    .line 170
    return-void
.end method

.method public onStopTrackingTouch(Lcom/oneplus/widget/OPSeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Lcom/oneplus/widget/OPSeekBar;

    .prologue
    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/notification/OPSeekBarPreference;->mTrackingTouch:Z

    .line 175
    invoke-virtual {p1}, Lcom/oneplus/widget/OPSeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/oneplus/settings/notification/OPSeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 176
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/notification/OPSeekBarPreference;->syncProgress(Lcom/oneplus/widget/OPSeekBar;)V

    .line 178
    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 114
    iget v0, p0, Lcom/oneplus/settings/notification/OPSeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_0

    .line 115
    iput p1, p0, Lcom/oneplus/settings/notification/OPSeekBarPreference;->mMax:I

    .line 116
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPSeekBarPreference;->notifyChanged()V

    .line 118
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 121
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/notification/OPSeekBarPreference;->setProgress(IZ)V

    .line 122
    return-void
.end method

.method syncProgress(Lcom/oneplus/widget/OPSeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Lcom/oneplus/widget/OPSeekBar;

    .prologue
    .line 149
    invoke-virtual {p1}, Lcom/oneplus/widget/OPSeekBar;->getProgress()I

    move-result v0

    .line 150
    .local v0, "progress":I
    iget v1, p0, Lcom/oneplus/settings/notification/OPSeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 151
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/notification/OPSeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/settings/notification/OPSeekBarPreference;->setProgress(IZ)V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget v1, p0, Lcom/oneplus/settings/notification/OPSeekBarPreference;->mProgress:I

    invoke-virtual {p1, v1}, Lcom/oneplus/widget/OPSeekBar;->setProgress(I)V

    goto :goto_0
.end method
