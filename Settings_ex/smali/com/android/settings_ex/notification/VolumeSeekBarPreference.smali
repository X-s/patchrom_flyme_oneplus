.class public Lcom/android/settings_ex/notification/VolumeSeekBarPreference;
.super Landroid/preference/SeekBarPreference;
.source "VolumeSeekBarPreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityStopListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VolumeSeekBarPreference"


# instance fields
.field private mCallback:Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;

.field private mIconResId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mMuteIconResId:I

.field private mMuted:Z

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStopped:Z

.field private mStream:I

.field private mSuppressionText:Ljava/lang/String;

.field private mSuppressionTextView:Landroid/widget/TextView;

.field private mVolumizer:Landroid/preference/SeekBarVolumizer;

.field private mZenMuted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
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

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    const v0, 0x7f0400df

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->setLayoutResource(I)V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .prologue
    .line 39
    iget v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mStream:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mMuted:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/VolumeSeekBarPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mMuted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mZenMuted:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/VolumeSeekBarPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mZenMuted:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->updateIconView()V

    return-void
.end method

.method private getMediaVolumeUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v1, 0x7f090000

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 5

    .prologue
    .line 110
    iget-object v2, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v2, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    .line 112
    new-instance v1, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$1;-><init>(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)V

    .line 133
    .local v1, "sbvc":Landroid/preference/SeekBarVolumizer$Callback;
    iget v2, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mStream:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    invoke-direct {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->getMediaVolumeUri()Landroid/net/Uri;

    move-result-object v0

    .line 134
    .local v0, "sampleUri":Landroid/net/Uri;
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    if-nez v2, :cond_2

    .line 135
    new-instance v2, Landroid/preference/SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mStream:I

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/preference/SeekBarVolumizer;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V

    iput-object v2, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    .line 137
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v2}, Landroid/preference/SeekBarVolumizer;->start()V

    .line 138
    iget-object v2, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    iget-object v3, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v3}, Landroid/preference/SeekBarVolumizer;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 139
    invoke-direct {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->updateIconView()V

    .line 140
    iget-object v2, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;

    iget v3, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mStream:I

    iget-object v4, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;->onStreamValueChanged(II)V

    .line 141
    invoke-direct {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->updateSuppressionText()V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 143
    iget-object v2, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 144
    iget-object v2, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v2}, Landroid/preference/SeekBarVolumizer;->stop()V

    goto :goto_0

    .line 133
    .end local v0    # "sampleUri":Landroid/net/Uri;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateIconView()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 157
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mIconResId:I

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mIconResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 159
    :cond_1
    iget v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mMuteIconResId:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mMuted:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mZenMuted:Z

    if-nez v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mMuteIconResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateSuppressionText()V
    .locals 5

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 193
    iget-object v2, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v2, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 196
    .local v0, "showSuppression":Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    move v2, v1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    iget-object v2, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 199
    .end local v0    # "showSuppression":Z
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 195
    goto :goto_0

    .restart local v0    # "showSuppression":Z
    :cond_2
    move v2, v3

    .line 196
    goto :goto_1

    :cond_3
    move v3, v1

    .line 197
    goto :goto_2
.end method


# virtual methods
.method public onActivityResume()V
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mStopped:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->init()V

    .line 86
    :cond_0
    return-void
.end method

.method public onActivityStop()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mStopped:Z

    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stop()V

    .line 94
    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onBindView(Landroid/view/View;)V

    .line 99
    iget v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mStream:I

    if-nez v0, :cond_0

    .line 100
    const-string v0, "VolumeSeekBarPreference"

    const-string v1, "No stream found, not binding volumizer"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    return-void

    .line 103
    :cond_0
    const v0, 0x10203a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 104
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    .line 105
    const v0, 0x7f1201ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    .line 106
    invoke-direct {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->init()V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 151
    invoke-super {p0, p1, p2, p3}, Landroid/preference/SeekBarPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 152
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;

    iget v1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mStream:I

    invoke-interface {v0, v1, p2}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;->onStreamValueChanged(II)V

    .line 153
    return-void
.end method

.method public setCallback(Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;

    .line 80
    return-void
.end method

.method public setMuteIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 175
    iget v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mMuteIconResId:I

    if-ne v0, p1, :cond_0

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    iput p1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mMuteIconResId:I

    .line 177
    invoke-direct {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->updateIconView()V

    goto :goto_0
.end method

.method public setStream(I)V
    .locals 0
    .param p1, "stream"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mStream:I

    .line 76
    return-void
.end method

.method public setSuppressionText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    iput-object p1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    .line 189
    invoke-direct {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->updateSuppressionText()V

    goto :goto_0
.end method

.method public showIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 169
    iget v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mIconResId:I

    if-ne v0, p1, :cond_0

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    iput p1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mIconResId:I

    .line 171
    invoke-direct {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->updateIconView()V

    goto :goto_0
.end method
