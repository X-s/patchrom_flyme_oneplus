.class public Lcom/oneplus/tuner/providers/SoundEffectItem;
.super Ljava/lang/Object;
.source "SoundEffectItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x10907945b5b7f7a9L


# instance fields
.field public mBassBoost:F

.field public mCategoryId:I

.field public mChannelEqualization:F

.field public mClearVocal:F

.field public mCommend:I

.field public mComment:Ljava/lang/String;

.field public mDownloadNum:I

.field public mEqBand:Lcom/oneplus/tuner/providers/SoundEffectEQBand;

.field public mExpanded:Z

.field public mId:J

.field public mIsDefault:Z

.field public mLocal:I

.field public mModel:Ljava/lang/String;

.field public mShareId:I

.field public mSpeakerExpansion:F

.field public mStyle:Ljava/lang/String;

.field public mTime:J

.field public mTransparentTreble:F

.field public mUserName:Ljava/lang/String;

.field public mUsing:I

.field public mVolumeBalance:F

.field public mVolumeStrengthen:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mId:J

    .line 18
    const-string v0, "default"

    iput-object v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    .line 19
    const-string v0, "default"

    iput-object v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mModel:Ljava/lang/String;

    .line 20
    const-string v0, "default"

    iput-object v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUserName:Ljava/lang/String;

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mLocal:I

    .line 25
    iput v2, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUsing:I

    .line 26
    iput v2, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mShareId:I

    .line 27
    new-instance v0, Lcom/oneplus/tuner/providers/SoundEffectEQBand;

    invoke-direct {v0}, Lcom/oneplus/tuner/providers/SoundEffectEQBand;-><init>()V

    iput-object v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mEqBand:Lcom/oneplus/tuner/providers/SoundEffectEQBand;

    .line 36
    iput-boolean v3, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mExpanded:Z

    .line 37
    iput-boolean v3, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mIsDefault:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mId:J

    .line 18
    const-string v0, "default"

    iput-object v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    .line 19
    const-string v0, "default"

    iput-object v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mModel:Ljava/lang/String;

    .line 20
    const-string v0, "default"

    iput-object v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUserName:Ljava/lang/String;

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mLocal:I

    .line 25
    iput v2, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUsing:I

    .line 26
    iput v2, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mShareId:I

    .line 27
    new-instance v0, Lcom/oneplus/tuner/providers/SoundEffectEQBand;

    invoke-direct {v0}, Lcom/oneplus/tuner/providers/SoundEffectEQBand;-><init>()V

    iput-object v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mEqBand:Lcom/oneplus/tuner/providers/SoundEffectEQBand;

    .line 36
    iput-boolean v3, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mExpanded:Z

    .line 37
    iput-boolean v3, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mIsDefault:Z

    .line 50
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getCommonForumName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oneplus/tuner/utillty/Utilities;->splitEffects(Lcom/oneplus/tuner/providers/SoundEffectItem;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mModel:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getSubject()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getAuthor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUserName:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getSummary()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mComment:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getPraise()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mCommend:I

    .line 57
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getDateline()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mTime:J

    .line 58
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getLocal()I

    move-result v0

    iput v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mLocal:I

    .line 59
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getTid()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mShareId:I

    .line 61
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getCategoryId()I

    move-result v0

    iput v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mCategoryId:I

    .line 62
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getDownloadNum()I

    move-result v0

    iput v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mDownloadNum:I

    .line 64
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/oneplus/tuner/providers/SoundEffectItem;)V
    .locals 4
    .param p1, "item"    # Lcom/oneplus/tuner/providers/SoundEffectItem;

    .prologue
    const/4 v3, 0x0

    .line 68
    iget-wide v0, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mId:J

    iput-wide v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mId:J

    .line 69
    iget-object v0, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "default"

    :goto_0
    iput-object v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    .line 71
    iget-object v0, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mModel:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "default"

    :goto_1
    iput-object v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mModel:Ljava/lang/String;

    .line 73
    iget-object v0, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUserName:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "default"

    :goto_2
    iput-object v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUserName:Ljava/lang/String;

    .line 75
    iget-object v0, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mComment:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_3
    iput-object v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mComment:Ljava/lang/String;

    .line 76
    iget v0, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mCommend:I

    iput v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mCommend:I

    .line 77
    iget-wide v0, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mTime:J

    iput-wide v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mTime:J

    .line 78
    iget v0, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mVolumeStrengthen:F

    iput v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mVolumeStrengthen:F

    .line 79
    iget v0, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mSpeakerExpansion:F

    iput v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mSpeakerExpansion:F

    .line 80
    iget v0, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mVolumeBalance:F

    iput v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mVolumeBalance:F

    .line 81
    iget v0, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mBassBoost:F

    iput v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mBassBoost:F

    .line 82
    iget v0, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mTransparentTreble:F

    iput v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mTransparentTreble:F

    .line 83
    iget v0, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mClearVocal:F

    iput v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mClearVocal:F

    .line 84
    iget v0, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mChannelEqualization:F

    iput v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mChannelEqualization:F

    .line 86
    iput-boolean v3, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mIsDefault:Z

    .line 87
    iget-boolean v0, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mExpanded:Z

    iput-boolean v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mExpanded:Z

    .line 89
    iget v0, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mCategoryId:I

    iput v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mCategoryId:I

    .line 90
    iget v0, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mDownloadNum:I

    iput v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mDownloadNum:I

    .line 91
    iget v0, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mShareId:I

    iput v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mShareId:I

    .line 94
    iget-object v0, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mEqBand:Lcom/oneplus/tuner/providers/SoundEffectEQBand;

    iget-object v0, v0, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqBpGain:[F

    iget-object v1, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mEqBand:Lcom/oneplus/tuner/providers/SoundEffectEQBand;

    iget-object v1, v1, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqBpGain:[F

    const/16 v2, 0x14

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 97
    return-void

    .line 69
    :cond_0
    iget-object v0, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mModel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 73
    :cond_2
    iget-object v0, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUserName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 75
    :cond_3
    iget-object v0, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mComment:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mModel =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mModel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStyle =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUserName =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUserName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCategoryId =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mCategoryId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDownloadNum =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mDownloadNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVolumeStrengthen =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mVolumeStrengthen:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSpeakerExpansion =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mSpeakerExpansion:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBassBoost =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mBassBoost:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTransparentTreble =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mTransparentTreble:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mClearVocal =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mClearVocal:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mChannelEqualization =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mChannelEqualization:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EQ = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mEqBand:Lcom/oneplus/tuner/providers/SoundEffectEQBand;

    iget-object v2, v2, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqBpGain:[F

    const/16 v3, 0x14

    invoke-static {v2, v3}, Lcom/oneplus/tuner/utillty/Utilities;->combineEQ([FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
