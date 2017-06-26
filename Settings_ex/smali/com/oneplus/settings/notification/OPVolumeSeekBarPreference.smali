.class public Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;
.super Lcom/oneplus/settings/notification/OPSeekBarPreference;
.source "OPVolumeSeekBarPreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityStopListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VolumeSeekBarPreference"


# instance fields
.field private mCallback:Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference$Callback;

.field private mContext:Landroid/content/Context;

.field private mIconResId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mMuteIconResId:I

.field private mMuted:Z

.field private mSeekBar:Lcom/oneplus/widget/OPSeekBar;

.field private mStopped:Z

.field private mStream:I

.field private mSuppressionText:Ljava/lang/String;

.field private mSuppressionTextView:Landroid/widget/TextView;

.field private mVolumizer:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

.field private mZenMuted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/settings/notification/OPSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 64
    const v0, 0x7f0400df

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->setLayoutResource(I)V

    .line 65
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;)Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mCallback:Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference$Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;

    .prologue
    .line 43
    iget v0, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mStream:I

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mMuted:Z

    return v0
.end method

.method static synthetic access$202(Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mMuted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mZenMuted:Z

    return v0
.end method

.method static synthetic access$302(Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mZenMuted:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->updateIconView()V

    return-void
.end method

.method private getMediaVolumeUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->getContext()Landroid/content/Context;

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
    .locals 6

    .prologue
    .line 119
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    if-nez v3, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceManager;->registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    .line 121
    new-instance v1, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference$1;-><init>(Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;)V

    .line 142
    .local v1, "sbvc":Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;
    iget v3, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mStream:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->getMediaVolumeUri()Landroid/net/Uri;

    move-result-object v0

    .line 143
    .local v0, "sampleUri":Landroid/net/Uri;
    :goto_1
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mVolumizer:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    if-nez v3, :cond_2

    .line 144
    new-instance v3, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mStream:I

    invoke-direct {v3, v4, v5, v0, v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;-><init>(Landroid/content/Context;ILandroid/net/Uri;Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;)V

    iput-object v3, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mVolumizer:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    .line 146
    :cond_2
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mVolumizer:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-virtual {v3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->start()V

    .line 147
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mVolumizer:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    iget-object v4, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    invoke-virtual {v3, v4}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->setSeekBar(Lcom/oneplus/widget/OPSeekBar;)V

    .line 148
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->updateIconView()V

    .line 149
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mCallback:Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference$Callback;

    iget v4, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mStream:I

    iget-object v5, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    invoke-virtual {v5}, Lcom/oneplus/widget/OPSeekBar;->getProgress()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference$Callback;->onStreamValueChanged(II)V

    .line 150
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->updateSuppressionText()V

    .line 151
    const/4 v2, 0x0

    .line 157
    .local v2, "threeKeyMode":I
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    .line 158
    :cond_3
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/oneplus/widget/OPSeekBar;->setEnabled(Z)V

    .line 159
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mVolumizer:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-virtual {v3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->stop()V

    goto :goto_0

    .line 142
    .end local v0    # "sampleUri":Landroid/net/Uri;
    .end local v2    # "threeKeyMode":I
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateIconView()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 172
    :cond_0
    iget v0, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mIconResId:I

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mIconResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 174
    :cond_1
    iget v0, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mMuteIconResId:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mMuted:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mZenMuted:Z

    if-nez v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mMuteIconResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateSuppressionText()V
    .locals 5

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 208
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    if-eqz v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 211
    .local v0, "showSuppression":Z
    :goto_0
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    move v2, v1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v2, v3}, Lcom/oneplus/widget/OPSeekBar;->setVisibility(I)V

    .line 214
    .end local v0    # "showSuppression":Z
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 210
    goto :goto_0

    .restart local v0    # "showSuppression":Z
    :cond_2
    move v2, v3

    .line 211
    goto :goto_1

    :cond_3
    move v3, v1

    .line 212
    goto :goto_2
.end method


# virtual methods
.method public onActivityResume()V
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mStopped:Z

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mVolumizer:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mVolumizer:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-virtual {v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->onResume()V

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->init()V

    .line 95
    :cond_1
    return-void
.end method

.method public onActivityStop()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mStopped:Z

    .line 100
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mVolumizer:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mVolumizer:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-virtual {v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->stop()V

    .line 103
    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/oneplus/settings/notification/OPSeekBarPreference;->onBindView(Landroid/view/View;)V

    .line 108
    iget v0, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mStream:I

    if-nez v0, :cond_0

    .line 109
    const-string v0, "VolumeSeekBarPreference"

    const-string v1, "No stream found, not binding volumizer"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_0
    return-void

    .line 112
    :cond_0
    const v0, 0x10203a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/widget/OPSeekBar;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    .line 113
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    .line 114
    const v0, 0x7f1201ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    .line 115
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->init()V

    goto :goto_0
.end method

.method public onProgressChanged(Lcom/oneplus/widget/OPSeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Lcom/oneplus/widget/OPSeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 166
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/settings/notification/OPSeekBarPreference;->onProgressChanged(Lcom/oneplus/widget/OPSeekBar;IZ)V

    .line 167
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mCallback:Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference$Callback;

    iget v1, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mStream:I

    invoke-interface {v0, v1, p2}, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference$Callback;->onStreamValueChanged(II)V

    .line 168
    return-void
.end method

.method public setCallback(Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference$Callback;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mCallback:Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference$Callback;

    .line 86
    return-void
.end method

.method public setMuteIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 190
    iget v0, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mMuteIconResId:I

    if-ne v0, p1, :cond_0

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    iput p1, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mMuteIconResId:I

    .line 192
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->updateIconView()V

    goto :goto_0
.end method

.method public setStream(I)V
    .locals 0
    .param p1, "stream"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mStream:I

    .line 82
    return-void
.end method

.method public setSuppressionText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    .line 204
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->updateSuppressionText()V

    goto :goto_0
.end method

.method public showIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 184
    iget v0, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mIconResId:I

    if-ne v0, p1, :cond_0

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    iput p1, p0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->mIconResId:I

    .line 186
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->updateIconView()V

    goto :goto_0
.end method
