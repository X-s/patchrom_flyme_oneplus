.class public Lcom/android/settings_ex/PointerSpeedPreference;
.super Lcom/android/settings_ex/SeekBarDialogPreference;
.source "PointerSpeedPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/PointerSpeedPreference$1;,
        Lcom/android/settings_ex/PointerSpeedPreference$SavedState;
    }
.end annotation


# instance fields
.field private final mIm:Landroid/hardware/input/InputManager;

.field private mOldSpeed:I

.field private mRestoredOldState:Z

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSpeedObserver:Landroid/database/ContentObserver;

.field private mTouchInProgress:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/settings_ex/PointerSpeedPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/PointerSpeedPreference;->onSpeedChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Lcom/android/settings_ex/PointerSpeedPreference$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/PointerSpeedPreference$1;-><init>(Lcom/android/settings_ex/PointerSpeedPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/PointerSpeedPreference;->mSpeedObserver:Landroid/database/ContentObserver;

    .line 50
    invoke-virtual {p0}, Lcom/android/settings_ex/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/settings_ex/PointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    .line 48
    return-void
.end method

.method private onSpeedChanged()V
    .locals 3

    .prologue
    .line 91
    iget-object v1, p0, Lcom/android/settings_ex/PointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result v0

    .line 92
    .local v0, "speed":I
    iget-object v1, p0, Lcom/android/settings_ex/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    add-int/lit8 v2, v0, 0x7

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 90
    return-void
.end method

.method private restoreOldState()V
    .locals 2

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/settings_ex/PointerSpeedPreference;->mRestoredOldState:Z

    if-eqz v0, :cond_0

    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/PointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    iget v1, p0, Lcom/android/settings_ex/PointerSpeedPreference;->mOldSpeed:I

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/PointerSpeedPreference;->mRestoredOldState:Z

    .line 111
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/android/settings_ex/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 68
    invoke-static {p1}, Lcom/android/settings_ex/PointerSpeedPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/PointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/PointerSpeedPreference;->mOldSpeed:I

    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings_ex/PointerSpeedPreference;->mOldSpeed:I

    add-int/lit8 v1, v1, 0x7

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 65
    return-void
.end method

.method protected onClick()V
    .locals 4

    .prologue
    .line 55
    invoke-super {p0}, Lcom/android/settings_ex/SeekBarDialogPreference;->onClick()V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings_ex/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 58
    const-string/jumbo v1, "pointer_speed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 59
    iget-object v2, p0, Lcom/android/settings_ex/PointerSpeedPreference;->mSpeedObserver:Landroid/database/ContentObserver;

    .line 58
    const/4 v3, 0x1

    .line 57
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/PointerSpeedPreference;->mRestoredOldState:Z

    .line 54
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .param p1, "positiveResult"    # Z

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/android/settings_ex/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings_ex/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 101
    .local v0, "resolver":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/android/settings_ex/PointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 103
    iget-object v3, p0, Lcom/android/settings_ex/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    add-int/lit8 v3, v3, -0x7

    .line 102
    invoke-virtual {v1, v2, v3}, Landroid/hardware/input/InputManager;->setPointerSpeed(Landroid/content/Context;I)V

    .line 108
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/PointerSpeedPreference;->mSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 96
    return-void

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/PointerSpeedPreference;->restoreOldState()V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/settings_ex/PointerSpeedPreference;->mTouchInProgress:Z

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/settings_ex/PointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    add-int/lit8 v1, p2, -0x7

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    .line 75
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 135
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/settings_ex/PointerSpeedPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 141
    check-cast v0, Lcom/android/settings_ex/PointerSpeedPreference$SavedState;

    .line 142
    .local v0, "myState":Lcom/android/settings_ex/PointerSpeedPreference$SavedState;
    invoke-virtual {v0}, Lcom/android/settings_ex/PointerSpeedPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/android/settings_ex/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 143
    iget v1, v0, Lcom/android/settings_ex/PointerSpeedPreference$SavedState;->oldSpeed:I

    iput v1, p0, Lcom/android/settings_ex/PointerSpeedPreference;->mOldSpeed:I

    .line 144
    iget-object v1, p0, Lcom/android/settings_ex/PointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    iget v2, v0, Lcom/android/settings_ex/PointerSpeedPreference$SavedState;->progress:I

    add-int/lit8 v2, v2, -0x7

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    .line 134
    return-void

    .line 137
    .end local v0    # "myState":Lcom/android/settings_ex/PointerSpeedPreference$SavedState;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 138
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 120
    invoke-super {p0}, Lcom/android/settings_ex/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 121
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/settings_ex/PointerSpeedPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/PointerSpeedPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    new-instance v0, Lcom/android/settings_ex/PointerSpeedPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/settings_ex/PointerSpeedPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 125
    .local v0, "myState":Lcom/android/settings_ex/PointerSpeedPreference$SavedState;
    iget-object v2, p0, Lcom/android/settings_ex/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iput v2, v0, Lcom/android/settings_ex/PointerSpeedPreference$SavedState;->progress:I

    .line 126
    iget v2, p0, Lcom/android/settings_ex/PointerSpeedPreference;->mOldSpeed:I

    iput v2, v0, Lcom/android/settings_ex/PointerSpeedPreference$SavedState;->oldSpeed:I

    .line 129
    invoke-direct {p0}, Lcom/android/settings_ex/PointerSpeedPreference;->restoreOldState()V

    .line 130
    return-object v0

    .line 121
    .end local v0    # "myState":Lcom/android/settings_ex/PointerSpeedPreference$SavedState;
    :cond_0
    return-object v1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/PointerSpeedPreference;->mTouchInProgress:Z

    .line 81
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/PointerSpeedPreference;->mTouchInProgress:Z

    .line 87
    iget-object v0, p0, Lcom/android/settings_ex/PointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, -0x7

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    .line 85
    return-void
.end method
