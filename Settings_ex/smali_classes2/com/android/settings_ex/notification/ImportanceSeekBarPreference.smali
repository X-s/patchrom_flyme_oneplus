.class public Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;
.super Lcom/android/settings_ex/SeekBarPreference;
.source "ImportanceSeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/notification/ImportanceSeekBarPreference$1;,
        Lcom/android/settings_ex/notification/ImportanceSeekBarPreference$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImportanceSeekBarPref"


# instance fields
.field private mActiveSliderAlpha:F

.field private mActiveSliderTint:Landroid/content/res/ColorStateList;

.field private mAutoOn:Z

.field private mCallback:Lcom/android/settings_ex/notification/ImportanceSeekBarPreference$Callback;

.field private mHandler:Landroid/os/Handler;

.field private mInactiveSliderAlpha:F

.field private mInactiveSliderTint:Landroid/content/res/ColorStateList;

.field private mMinProgress:I

.field private final mNotifyChanged:Ljava/lang/Runnable;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSummary:Ljava/lang/String;

.field private mSummaryTextView:Landroid/widget/TextView;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "autoButton"    # Landroid/widget/ImageView;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->applyAuto(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->postNotifyChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings_ex/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mActiveSliderAlpha:F

    .line 197
    new-instance v1, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference$1;-><init>(Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;)V

    iput-object v1, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mNotifyChanged:Ljava/lang/Runnable;

    .line 57
    const v1, 0x7f040148

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->setLayoutResource(I)V

    .line 59
    const v1, 0x7f0b0352

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 58
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mActiveSliderTint:Landroid/content/res/ColorStateList;

    .line 61
    const v1, 0x7f0b0353

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 60
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    .line 62
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mHandler:Landroid/os/Handler;

    .line 64
    sget-object v1, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 65
    iput v1, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mInactiveSliderAlpha:F

    .line 67
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    return-void
.end method

.method private applyAuto(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "autoButton"    # Landroid/widget/ImageView;

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 120
    iget-boolean v0, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mAutoOn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mAutoOn:Z

    .line 121
    iget-boolean v0, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mAutoOn:Z

    if-nez v0, :cond_1

    .line 122
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->setProgress(I)V

    .line 123
    iget-object v0, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mCallback:Lcom/android/settings_ex/notification/ImportanceSeekBarPreference$Callback;

    invoke-interface {v0, v2, v1}, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference$Callback;->onImportanceChanged(IZ)V

    .line 129
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->applyAutoUi(Landroid/widget/ImageView;)V

    .line 119
    return-void

    :cond_0
    move v0, v1

    .line 120
    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mCallback:Lcom/android/settings_ex/notification/ImportanceSeekBarPreference$Callback;

    .line 127
    const/16 v2, -0x3e8

    .line 126
    invoke-interface {v0, v2, v1}, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference$Callback;->onImportanceChanged(IZ)V

    goto :goto_1
.end method

.method private applyAutoUi(Landroid/widget/ImageView;)V
    .locals 5
    .param p1, "autoButton"    # Landroid/widget/ImageView;

    .prologue
    .line 133
    iget-object v4, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v3, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mAutoOn:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 135
    iget-boolean v3, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mAutoOn:Z

    if-eqz v3, :cond_2

    iget v0, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mInactiveSliderAlpha:F

    .line 136
    .local v0, "alpha":F
    :goto_1
    iget-boolean v3, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mAutoOn:Z

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mActiveSliderTint:Landroid/content/res/ColorStateList;

    .line 137
    .local v2, "starTint":Landroid/content/res/ColorStateList;
    :goto_2
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 138
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 139
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    iget-object v3, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setAlpha(F)V

    .line 142
    iget-boolean v3, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mAutoOn:Z

    if-eqz v3, :cond_0

    .line 143
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->setProgress(I)V

    .line 145
    const/16 v3, -0x3e8

    .line 144
    invoke-direct {p0, v3}, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->getProgressSummary(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mSummary:Ljava/lang/String;

    .line 147
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mSummaryTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    return-void

    .line 133
    .end local v0    # "alpha":F
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "starTint":Landroid/content/res/ColorStateList;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 135
    :cond_2
    iget v0, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mActiveSliderAlpha:F

    .restart local v0    # "alpha":F
    goto :goto_1

    .line 136
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    .restart local v2    # "starTint":Landroid/content/res/ColorStateList;
    goto :goto_2
.end method

.method private getProgressSummary(I)Ljava/lang/String;
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 170
    packed-switch p1, :pswitch_data_0

    .line 184
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0e7e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 172
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0e78

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 174
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0e79

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 176
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0e7a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 178
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0e7b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 180
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0e7c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 182
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0e7d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private postNotifyChanged()V
    .locals 0

    .prologue
    .line 194
    invoke-super {p0}, Lcom/android/settings_ex/SeekBarPreference;->notifyChanged()V

    .line 193
    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method protected notifyChanged()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mNotifyChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 189
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/android/settings_ex/SeekBarPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 105
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mSummaryTextView:Landroid/widget/TextView;

    .line 107
    const v1, 0x10203d9

    .line 106
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 109
    const v1, 0x7f11027d

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 110
    .local v0, "autoButton":Landroid/widget/ImageView;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->applyAutoUi(Landroid/widget/ImageView;)V

    .line 111
    new-instance v1, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference$2;

    invoke-direct {v1, p0, v0}, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference$2;-><init>(Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 157
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SeekBarPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 158
    iget v0, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mMinProgress:I

    if-ge p2, v0, :cond_0

    .line 159
    iget v0, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mMinProgress:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 160
    iget p2, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mMinProgress:I

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mSummaryTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 163
    invoke-direct {p0, p2}, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->getProgressSummary(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mSummary:Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mSummaryTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mCallback:Lcom/android/settings_ex/notification/ImportanceSeekBarPreference$Callback;

    invoke-interface {v0, p2, p3}, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference$Callback;->onImportanceChanged(IZ)V

    .line 156
    return-void
.end method

.method public setAutoOn(Z)V
    .locals 0
    .param p1, "autoOn"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mAutoOn:Z

    .line 99
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->notifyChanged()V

    .line 97
    return-void
.end method

.method public setCallback(Lcom/android/settings_ex/notification/ImportanceSeekBarPreference$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/settings_ex/notification/ImportanceSeekBarPreference$Callback;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mCallback:Lcom/android/settings_ex/notification/ImportanceSeekBarPreference$Callback;

    .line 82
    return-void
.end method

.method public setMinimumProgress(I)V
    .locals 0
    .param p1, "minProgress"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mMinProgress:I

    .line 88
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->notifyChanged()V

    .line 86
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->getProgressSummary(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->mSummary:Ljava/lang/String;

    .line 94
    invoke-super {p0, p1}, Lcom/android/settings_ex/SeekBarPreference;->setProgress(I)V

    .line 92
    return-void
.end method
