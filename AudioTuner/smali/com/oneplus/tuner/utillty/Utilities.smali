.class public Lcom/oneplus/tuner/utillty/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Utilities"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static combineEQ([FI)Ljava/lang/String;
    .locals 7
    .param p0, "eqs"    # [F
    .param p1, "count"    # I

    .prologue
    const/4 v2, 0x0

    .line 43
    if-nez p0, :cond_0

    .line 44
    const-string v3, "Utilities"

    const-string v4, " combineEQ ---- null == eqs failed"

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "error"

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    :goto_0
    return-object v2

    .line 49
    :cond_0
    array-length v3, p0

    if-eq v3, p1, :cond_1

    .line 50
    const-string v3, "Utilities"

    const-string v4, " combineEQ ---- eqs.length != count failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 54
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .local v0, "eqb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    add-int/lit8 v2, p1, -0x1

    if-ge v1, v2, :cond_2

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 62
    :cond_2
    add-int/lit8 v2, p1, -0x1

    aget v2, p0, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static combineEffects(Lcom/oneplus/tuner/providers/SoundEffectItem;)Ljava/lang/String;
    .locals 6
    .param p0, "item"    # Lcom/oneplus/tuner/providers/SoundEffectItem;

    .prologue
    .line 108
    if-nez p0, :cond_0

    .line 109
    const-string v2, "Utilities"

    const-string v3, " combineEffects ---- null == item failed"

    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "error"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    const/4 v2, 0x0

    .line 133
    :goto_0
    return-object v2

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v0, "effects":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mEqBand:Lcom/oneplus/tuner/providers/SoundEffectEQBand;

    iget-object v3, v3, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqBpGain:[F

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 123
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mVolumeStrengthen:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mSpeakerExpansion:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mVolumeBalance:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mBassBoost:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mTransparentTreble:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mClearVocal:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget v2, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mChannelEqualization:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 131
    const-string v2, "dddd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public static compareSimpleThreadInfo(Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)Z
    .locals 4
    .param p0, "info"    # Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;
    .param p1, "infoCompare"    # Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    .prologue
    .line 186
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getTid()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getTid()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 189
    const/4 v0, 0x1

    .line 194
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNullOrEmpty(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNullOrEmpty([B)Z
    .locals 1
    .param p0, "buf"    # [B

    .prologue
    .line 180
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNullOrEmpty([Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "arrays":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static splitEQ(Ljava/lang/String;I)[F
    .locals 7
    .param p0, "eq"    # Ljava/lang/String;
    .param p1, "count"    # I

    .prologue
    const/4 v0, 0x0

    .line 16
    if-nez p0, :cond_1

    .line 17
    const-string v3, "Utilities"

    const-string v4, " splitEQ ---- null == eq failed"

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "error"

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    :cond_0
    :goto_0
    return-object v0

    .line 22
    :cond_1
    const-string v3, "#"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, "eqs":[Ljava/lang/String;
    array-length v3, v1

    if-eq v3, p1, :cond_2

    .line 25
    const-string v3, "Utilities"

    const-string v4, " splitEQ ---- eqs.length != count failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 29
    :cond_2
    new-array v0, p1, [F

    .line 31
    .local v0, "eqi":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, p1, :cond_0

    .line 33
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v0, v2

    .line 31
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static splitEffects(Ljava/lang/String;)Lcom/oneplus/tuner/providers/SoundEffectItem;
    .locals 8
    .param p0, "effects"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/16 v7, 0x14

    const/4 v6, 0x0

    const/16 v5, 0x1b

    .line 70
    if-nez p0, :cond_0

    .line 71
    const-string v4, "Utilities"

    const-string v5, " splitEffects ---- null == effects failed"

    new-instance v6, Ljava/lang/Throwable;

    const-string v7, "error"

    invoke-direct {v6, v7}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    :goto_0
    return-object v3

    .line 76
    :cond_0
    const-string v4, "#"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "effect":[Ljava/lang/String;
    array-length v4, v0

    if-eq v4, v5, :cond_1

    .line 79
    const-string v4, "Utilities"

    const-string v5, " splitEffects ---- effect.length != count failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    :cond_1
    new-instance v3, Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-direct {v3}, Lcom/oneplus/tuner/providers/SoundEffectItem;-><init>()V

    .line 85
    .local v3, "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    new-array v1, v5, [F

    .line 87
    .local v1, "effectInt":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_2

    .line 88
    aget-object v4, v0, v2

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aput v4, v1, v2

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 91
    :cond_2
    iget-object v4, v3, Lcom/oneplus/tuner/providers/SoundEffectItem;->mEqBand:Lcom/oneplus/tuner/providers/SoundEffectEQBand;

    iget-object v4, v4, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqBpGain:[F

    invoke-static {v1, v6, v4, v6, v7}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 94
    aget v4, v1, v7

    iput v4, v3, Lcom/oneplus/tuner/providers/SoundEffectItem;->mVolumeStrengthen:F

    .line 95
    const/16 v4, 0x15

    aget v4, v1, v4

    iput v4, v3, Lcom/oneplus/tuner/providers/SoundEffectItem;->mSpeakerExpansion:F

    .line 96
    const/16 v4, 0x16

    aget v4, v1, v4

    iput v4, v3, Lcom/oneplus/tuner/providers/SoundEffectItem;->mVolumeBalance:F

    .line 97
    const/16 v4, 0x17

    aget v4, v1, v4

    iput v4, v3, Lcom/oneplus/tuner/providers/SoundEffectItem;->mBassBoost:F

    .line 98
    const/16 v4, 0x18

    aget v4, v1, v4

    iput v4, v3, Lcom/oneplus/tuner/providers/SoundEffectItem;->mTransparentTreble:F

    .line 99
    const/16 v4, 0x19

    aget v4, v1, v4

    iput v4, v3, Lcom/oneplus/tuner/providers/SoundEffectItem;->mClearVocal:F

    .line 100
    const/16 v4, 0x1a

    aget v4, v1, v4

    iput v4, v3, Lcom/oneplus/tuner/providers/SoundEffectItem;->mChannelEqualization:F

    goto :goto_0
.end method

.method public static splitEffects(Lcom/oneplus/tuner/providers/SoundEffectItem;Ljava/lang/String;)V
    .locals 7
    .param p0, "item"    # Lcom/oneplus/tuner/providers/SoundEffectItem;
    .param p1, "effects"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x14

    const/4 v5, 0x0

    const/16 v4, 0x1b

    .line 139
    if-nez p1, :cond_0

    .line 140
    const-string v3, "Utilities"

    const-string v4, " splitEffects ---- null == effects failed"

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "error"

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    :goto_0
    return-void

    .line 145
    :cond_0
    const-string v3, "#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "effect":[Ljava/lang/String;
    array-length v3, v0

    if-eq v3, v4, :cond_1

    .line 148
    const-string v3, "Utilities"

    const-string v4, " splitEffects ---- effect.length != count failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 152
    :cond_1
    new-array v1, v4, [F

    .line 154
    .local v1, "effectInt":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 155
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v1, v2

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 158
    :cond_2
    iget-object v3, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mEqBand:Lcom/oneplus/tuner/providers/SoundEffectEQBand;

    iget-object v3, v3, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqBpGain:[F

    invoke-static {v1, v5, v3, v5, v6}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 161
    aget v3, v1, v6

    iput v3, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mVolumeStrengthen:F

    .line 162
    const/16 v3, 0x15

    aget v3, v1, v3

    iput v3, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mSpeakerExpansion:F

    .line 163
    const/16 v3, 0x16

    aget v3, v1, v3

    iput v3, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mVolumeBalance:F

    .line 164
    const/16 v3, 0x17

    aget v3, v1, v3

    iput v3, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mBassBoost:F

    .line 165
    const/16 v3, 0x18

    aget v3, v1, v3

    iput v3, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mTransparentTreble:F

    .line 166
    const/16 v3, 0x19

    aget v3, v1, v3

    iput v3, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mClearVocal:F

    .line 167
    const/16 v3, 0x1a

    aget v3, v1, v3

    iput v3, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mChannelEqualization:F

    goto :goto_0
.end method
