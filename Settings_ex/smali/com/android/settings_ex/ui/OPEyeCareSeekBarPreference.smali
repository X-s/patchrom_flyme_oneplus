.class public Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;
.super Landroid/preference/Preference;
.source "OPEyeCareSeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final CMD_OEM_QDCM_MODE_10:Ljava/lang/String; = "oem:qdcm:mode_10"

.field private static final CMD_OEM_QDCM_MODE_5:Ljava/lang/String; = "oem:qdcm:mode_5"

.field private static final CMD_OEM_QDCM_MODE_6:Ljava/lang/String; = "oem:qdcm:mode_6"

.field private static final CMD_OEM_QDCM_MODE_7:Ljava/lang/String; = "oem:qdcm:mode_7"

.field private static final CMD_OEM_QDCM_MODE_8:Ljava/lang/String; = "oem:qdcm:mode_8"

.field private static final CMD_OEM_QDCM_MODE_9:Ljava/lang/String; = "oem:qdcm:mode_9"

.field private static final TAG:Ljava/lang/String; = "OPEyeCareSeekBarPreference"

.field private static final TYPE_SERVER:Ljava/lang/String; = "pps"


# instance fields
.field private M_TYPE_STRING:Ljava/lang/String;

.field private localSocket:Landroid/net/LocalSocket;

.field private mBetterStatus:I

.field private mContext:Landroid/content/Context;

.field private mEyeCareSeekBar:Landroid/widget/SeekBar;

.field private mHandler:Landroid/os/Handler;

.field private mPrevBetterStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 76
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 50
    const-string v0, "oem:qdcm:mode_5"

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->M_TYPE_STRING:Ljava/lang/String;

    .line 59
    iput v1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mBetterStatus:I

    .line 60
    iput v1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mPrevBetterStatus:I

    .line 255
    new-instance v0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference$1;-><init>(Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;)V

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mHandler:Landroid/os/Handler;

    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->initViews(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const-string v0, "oem:qdcm:mode_5"

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->M_TYPE_STRING:Ljava/lang/String;

    .line 59
    iput v1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mBetterStatus:I

    .line 60
    iput v1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mPrevBetterStatus:I

    .line 255
    new-instance v0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference$1;-><init>(Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;)V

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mHandler:Landroid/os/Handler;

    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->initViews(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x1

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    const-string v0, "oem:qdcm:mode_5"

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->M_TYPE_STRING:Ljava/lang/String;

    .line 59
    iput v1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mBetterStatus:I

    .line 60
    iput v1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mPrevBetterStatus:I

    .line 255
    new-instance v0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference$1;-><init>(Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;)V

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mHandler:Landroid/os/Handler;

    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->initViews(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->M_TYPE_STRING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->M_TYPE_STRING:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    .prologue
    .line 26
    iget v0, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mPrevBetterStatus:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mPrevBetterStatus:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    .prologue
    .line 26
    iget v0, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mBetterStatus:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mBetterStatus:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;)Landroid/net/LocalSocket;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->localSocket:Landroid/net/LocalSocket;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;
    .param p1, "x1"    # Landroid/net/LocalSocket;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->localSocket:Landroid/net/LocalSocket;

    return-object p1
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 83
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mContext:Landroid/content/Context;

    .line 84
    const v1, 0x7f040068

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->setLayoutResource(I)V

    .line 86
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_eyecare_progress_status"

    const/16 v3, 0x258

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 90
    .local v0, "progress":I
    if-ltz v0, :cond_1

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    .line 91
    iput v4, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mBetterStatus:I

    .line 92
    iput v4, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mPrevBetterStatus:I

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    const/16 v1, 0x64

    if-lt v0, v1, :cond_2

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_2

    .line 94
    iput v5, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mBetterStatus:I

    .line 95
    iput v5, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mPrevBetterStatus:I

    goto :goto_0

    .line 96
    :cond_2
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_3

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_3

    .line 97
    iput v6, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mBetterStatus:I

    .line 98
    iput v6, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mPrevBetterStatus:I

    goto :goto_0

    .line 99
    :cond_3
    const/16 v1, 0x12c

    if-lt v0, v1, :cond_4

    const/16 v1, 0x190

    if-ge v0, v1, :cond_4

    .line 100
    iput v7, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mBetterStatus:I

    .line 101
    iput v7, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mPrevBetterStatus:I

    goto :goto_0

    .line 102
    :cond_4
    const/16 v1, 0x190

    if-lt v0, v1, :cond_5

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_5

    .line 103
    iput v8, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mBetterStatus:I

    .line 104
    iput v8, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mPrevBetterStatus:I

    goto :goto_0

    .line 105
    :cond_5
    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_0

    const/16 v1, 0x258

    if-gt v0, v1, :cond_0

    .line 106
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mBetterStatus:I

    .line 107
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mPrevBetterStatus:I

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x258

    .line 115
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 117
    const v1, 0x7f0f010f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mEyeCareSeekBar:Landroid/widget/SeekBar;

    .line 118
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mEyeCareSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 119
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mEyeCareSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 121
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_eyecare_progress_status"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 124
    .local v0, "progress":I
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mEyeCareSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 126
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/16 v6, 0x1f4

    const/16 v5, 0x190

    const/16 v4, 0x12c

    const/16 v3, 0xc8

    const/16 v2, 0x64

    .line 142
    if-eqz p1, :cond_1

    .line 144
    iget v0, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mBetterStatus:I

    .line 145
    .local v0, "betterStatus":I
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    if-ltz v1, :cond_2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    if-ge v1, v2, :cond_2

    .line 147
    iget v1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mBetterStatus:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 148
    const/4 v0, 0x1

    .line 188
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 189
    const-string v1, "OPEyeCareSeekBarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "betterStatus 987 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPrevBetterStatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mPrevBetterStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .end local v0    # "betterStatus":I
    :cond_1
    return-void

    .line 151
    .restart local v0    # "betterStatus":I
    :cond_2
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    if-lt v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    if-ge v1, v3, :cond_3

    .line 154
    iget v1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mBetterStatus:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 155
    const/4 v0, 0x2

    goto :goto_0

    .line 158
    :cond_3
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    if-lt v1, v3, :cond_4

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    if-ge v1, v4, :cond_4

    .line 161
    iget v1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mBetterStatus:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 162
    const/4 v0, 0x3

    goto :goto_0

    .line 165
    :cond_4
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    if-lt v1, v4, :cond_5

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    if-ge v1, v5, :cond_5

    .line 168
    iget v1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mBetterStatus:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 169
    const/4 v0, 0x4

    goto :goto_0

    .line 172
    :cond_5
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    if-lt v1, v5, :cond_6

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    if-ge v1, v6, :cond_6

    .line 175
    iget v1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mBetterStatus:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 176
    const/4 v0, 0x5

    goto :goto_0

    .line 179
    :cond_6
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    if-lt v1, v6, :cond_0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    const/16 v2, 0x258

    if-gt v1, v2, :cond_0

    .line 182
    iget v1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mBetterStatus:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 183
    const/4 v0, 0x6

    goto/16 :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 200
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/16 v2, 0x64

    .line 206
    if-eqz p1, :cond_1

    .line 207
    iget v0, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mBetterStatus:I

    .line 208
    .local v0, "betterStatus":I
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    if-ltz v1, :cond_2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    if-ge v1, v2, :cond_2

    .line 209
    iget v1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mBetterStatus:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 210
    const/4 v0, 0x1

    .line 211
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 245
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_eyecare_progress_status"

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 249
    const-string v1, "OPEyeCareSeekBarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "betterStatus 123 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .end local v0    # "betterStatus":I
    :cond_1
    return-void

    .line 213
    .restart local v0    # "betterStatus":I
    :cond_2
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    if-lt v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    const/16 v2, 0xc7

    if-gt v1, v2, :cond_3

    .line 215
    iget v1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mBetterStatus:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 216
    const/4 v0, 0x2

    .line 217
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 219
    :cond_3
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_4

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    const/16 v2, 0x12b

    if-gt v1, v2, :cond_4

    .line 221
    iget v1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mBetterStatus:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 222
    const/4 v0, 0x3

    .line 223
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 225
    :cond_4
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_5

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    const/16 v2, 0x18f

    if-gt v1, v2, :cond_5

    .line 227
    iget v1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mBetterStatus:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 228
    const/4 v0, 0x4

    .line 229
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 231
    :cond_5
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_6

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    const/16 v2, 0x1f3

    if-gt v1, v2, :cond_6

    .line 233
    iget v1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mBetterStatus:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 234
    const/4 v0, 0x5

    .line 235
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 237
    :cond_6
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    const/16 v2, 0x258

    if-gt v1, v2, :cond_0

    .line 239
    iget v1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mBetterStatus:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 240
    const/4 v0, 0x6

    .line 241
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method public setSeekValue(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mEyeCareSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mEyeCareSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->notifyChanged()V

    .line 135
    :cond_0
    return-void
.end method
