.class public Lcom/oneplus/tuner/providers/SoundEffectDao;
.super Lcom/oneplus/tuner/providers/TableDao;
.source "SoundEffectDao.java"

# interfaces
.implements Lcom/oneplus/tuner/providers/Tables$SoundEffect;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/tuner/providers/TableDao",
        "<",
        "Lcom/oneplus/tuner/providers/SoundEffectItem;",
        ">;",
        "Lcom/oneplus/tuner/providers/Tables$SoundEffect;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/tuner/manager/DatabaseHandler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mHandler"    # Lcom/oneplus/tuner/manager/DatabaseHandler;

    .prologue
    .line 27
    const-class v0, Lcom/oneplus/tuner/providers/SoundEffectDao;

    invoke-direct {p0, p1, v0, p2}, Lcom/oneplus/tuner/providers/TableDao;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/oneplus/tuner/manager/DatabaseHandler;)V

    .line 28
    return-void
.end method


# virtual methods
.method public contentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/oneplus/tuner/providers/SoundEffectDao;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected isExistAlready(Lcom/oneplus/tuner/providers/SoundEffectItem;)Z
    .locals 4
    .param p1, "data"    # Lcom/oneplus/tuner/providers/SoundEffectItem;

    .prologue
    .line 399
    const/4 v0, 0x0

    .line 400
    .local v0, "flag":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_share_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mShareId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/tuner/providers/SoundEffectDao;->query(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 401
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/tuner/providers/SoundEffectItem;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 402
    const/4 v0, 0x1

    .line 404
    :cond_0
    return v0
.end method

.method protected newInsertValues(Lcom/oneplus/tuner/providers/SoundEffectItem;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "item"    # Lcom/oneplus/tuner/providers/SoundEffectItem;

    .prologue
    .line 78
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 80
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "_style"

    iget-object v2, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v1, "_model"

    iget-object v2, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mModel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v1, "_user_name"

    iget-object v2, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUserName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "_comment"

    iget-object v2, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mComment:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v1, "_commend"

    iget v2, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mCommend:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 85
    const-string v1, "_time"

    iget-wide v2, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 86
    const-string v1, "_using"

    iget v2, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUsing:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    const-string v1, "_local"

    iget v2, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mLocal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    const-string v1, "_share_id"

    iget v2, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mShareId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    const-string v1, "_eq"

    iget-object v2, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mEqBand:Lcom/oneplus/tuner/providers/SoundEffectEQBand;

    iget-object v2, v2, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqBpGain:[F

    const/16 v3, 0x14

    invoke-static {v2, v3}, Lcom/oneplus/tuner/utillty/Utilities;->combineEQ([FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v1, "_volume_strengthen"

    iget v2, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mVolumeStrengthen:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 92
    const-string v1, "_speaker_expansion"

    iget v2, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mSpeakerExpansion:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 93
    const-string v1, "_volume_balance"

    iget v2, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mVolumeBalance:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 94
    const-string v1, "_bass_boost"

    iget v2, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mBassBoost:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 95
    const-string v1, "_transparent_treble"

    iget v2, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mTransparentTreble:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 96
    const-string v1, "_clear_vocal"

    iget v2, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mClearVocal:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 97
    const-string v1, "_channel_equalization"

    iget v2, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mChannelEqualization:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 99
    const-string v1, "_category_id"

    iget v2, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mCategoryId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    return-object v0
.end method

.method protected bridge synthetic newInsertValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/oneplus/tuner/providers/SoundEffectItem;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/tuner/providers/SoundEffectDao;->newInsertValues(Lcom/oneplus/tuner/providers/SoundEffectItem;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected newRecord(Landroid/database/Cursor;)Lcom/oneplus/tuner/providers/SoundEffectItem;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 48
    new-instance v0, Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-direct {v0}, Lcom/oneplus/tuner/providers/SoundEffectItem;-><init>()V

    .line 50
    .local v0, "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    const-string v1, "_id"

    invoke-static {p1, v1}, Lcom/oneplus/tuner/providers/Cursors;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mId:J

    .line 51
    const-string v1, "_style"

    invoke-static {p1, v1}, Lcom/oneplus/tuner/providers/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    .line 52
    const-string v1, "_model"

    invoke-static {p1, v1}, Lcom/oneplus/tuner/providers/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mModel:Ljava/lang/String;

    .line 53
    const-string v1, "_user_name"

    invoke-static {p1, v1}, Lcom/oneplus/tuner/providers/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUserName:Ljava/lang/String;

    .line 54
    const-string v1, "_comment"

    invoke-static {p1, v1}, Lcom/oneplus/tuner/providers/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mComment:Ljava/lang/String;

    .line 55
    const-string v1, "_commend"

    invoke-static {p1, v1}, Lcom/oneplus/tuner/providers/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mCommend:I

    .line 56
    const-string v1, "_time"

    invoke-static {p1, v1}, Lcom/oneplus/tuner/providers/Cursors;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mTime:J

    .line 57
    const-string v1, "_using"

    invoke-static {p1, v1}, Lcom/oneplus/tuner/providers/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUsing:I

    .line 58
    const-string v1, "_local"

    invoke-static {p1, v1}, Lcom/oneplus/tuner/providers/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mLocal:I

    .line 59
    const-string v1, "_share_id"

    invoke-static {p1, v1}, Lcom/oneplus/tuner/providers/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mShareId:I

    .line 60
    iget-object v1, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mEqBand:Lcom/oneplus/tuner/providers/SoundEffectEQBand;

    const-string v2, "_eq"

    invoke-static {p1, v2}, Lcom/oneplus/tuner/providers/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x14

    invoke-static {v2, v3}, Lcom/oneplus/tuner/utillty/Utilities;->splitEQ(Ljava/lang/String;I)[F

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqBpGain:[F

    .line 62
    const-string v1, "_volume_strengthen"

    invoke-static {p1, v1}, Lcom/oneplus/tuner/providers/Cursors;->getFloat(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mVolumeStrengthen:F

    .line 63
    const-string v1, "_speaker_expansion"

    invoke-static {p1, v1}, Lcom/oneplus/tuner/providers/Cursors;->getFloat(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mSpeakerExpansion:F

    .line 64
    const-string v1, "_volume_balance"

    invoke-static {p1, v1}, Lcom/oneplus/tuner/providers/Cursors;->getFloat(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mVolumeBalance:F

    .line 65
    const-string v1, "_bass_boost"

    invoke-static {p1, v1}, Lcom/oneplus/tuner/providers/Cursors;->getFloat(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mBassBoost:F

    .line 66
    const-string v1, "_transparent_treble"

    invoke-static {p1, v1}, Lcom/oneplus/tuner/providers/Cursors;->getFloat(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mTransparentTreble:F

    .line 67
    const-string v1, "_clear_vocal"

    invoke-static {p1, v1}, Lcom/oneplus/tuner/providers/Cursors;->getFloat(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mClearVocal:F

    .line 68
    const-string v1, "_channel_equalization"

    invoke-static {p1, v1}, Lcom/oneplus/tuner/providers/Cursors;->getFloat(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mChannelEqualization:F

    .line 71
    const-string v1, "_category_id"

    invoke-static {p1, v1}, Lcom/oneplus/tuner/providers/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mCategoryId:I

    .line 72
    return-object v0
.end method

.method protected bridge synthetic newRecord(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/oneplus/tuner/providers/SoundEffectDao;->newRecord(Landroid/database/Cursor;)Lcom/oneplus/tuner/providers/SoundEffectItem;

    move-result-object v0

    return-object v0
.end method

.method protected onUpdateRecord(Lcom/oneplus/tuner/providers/SoundEffectItem;Lcom/oneplus/tuner/providers/SoundEffectItem;)V
    .locals 0
    .param p1, "newRecord"    # Lcom/oneplus/tuner/providers/SoundEffectItem;
    .param p2, "oldRecord"    # Lcom/oneplus/tuner/providers/SoundEffectItem;

    .prologue
    .line 395
    return-void
.end method

.method protected bridge synthetic onUpdateRecord(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/oneplus/tuner/providers/SoundEffectItem;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/oneplus/tuner/providers/SoundEffectItem;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/tuner/providers/SoundEffectDao;->onUpdateRecord(Lcom/oneplus/tuner/providers/SoundEffectItem;Lcom/oneplus/tuner/providers/SoundEffectItem;)V

    return-void
.end method

.method protected projection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/oneplus/tuner/providers/SoundEffectDao;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method protected queryRecordCondition(Lcom/oneplus/tuner/providers/SoundEffectItem;)Ljava/lang/String;
    .locals 5
    .param p1, "newRecord"    # Lcom/oneplus/tuner/providers/SoundEffectItem;

    .prologue
    .line 106
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v2, "_style"

    iget-object v1, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    :goto_0
    invoke-direct {v0, v2, v1}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    const-string v1, "_id"

    iget-wide v2, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/tribune/provider/Condition;->appendAnd(Ljava/lang/String;J)Lcom/oppo/tribune/provider/Condition;

    .line 110
    const-string v2, "_model"

    iget-object v1, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mModel:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mModel:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v2, v1}, Lcom/oppo/tribune/provider/Condition;->appendAnd(Ljava/lang/String;Ljava/lang/String;)Lcom/oppo/tribune/provider/Condition;

    .line 112
    const-string v2, "_user_name"

    iget-object v1, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUserName:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUserName:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v2, v1}, Lcom/oppo/tribune/provider/Condition;->appendAnd(Ljava/lang/String;Ljava/lang/String;)Lcom/oppo/tribune/provider/Condition;

    .line 115
    const-string v2, "_comment"

    iget-object v1, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mComment:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mComment:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v2, v1}, Lcom/oppo/tribune/provider/Condition;->appendAnd(Ljava/lang/String;Ljava/lang/String;)Lcom/oppo/tribune/provider/Condition;

    .line 118
    const-string v1, "_local"

    iget v2, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mLocal:I

    invoke-virtual {v0, v1, v2}, Lcom/oppo/tribune/provider/Condition;->appendAnd(Ljava/lang/String;I)Lcom/oppo/tribune/provider/Condition;

    .line 119
    const-string v1, "_share_id"

    iget v2, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mShareId:I

    invoke-virtual {v0, v1, v2}, Lcom/oppo/tribune/provider/Condition;->appendAnd(Ljava/lang/String;I)Lcom/oppo/tribune/provider/Condition;

    .line 120
    const-string v1, "_using"

    iget v2, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUsing:I

    invoke-virtual {v0, v1, v2}, Lcom/oppo/tribune/provider/Condition;->appendAnd(Ljava/lang/String;I)Lcom/oppo/tribune/provider/Condition;

    .line 122
    const-string v1, "_category_id"

    iget v2, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mCategoryId:I

    invoke-virtual {v0, v1, v2}, Lcom/oppo/tribune/provider/Condition;->appendAnd(Ljava/lang/String;I)Lcom/oppo/tribune/provider/Condition;

    .line 123
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 106
    .end local v0    # "condition":Lcom/oppo/tribune/provider/Condition;
    :cond_0
    iget-object v1, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    const-string v3, "\'"

    const-string v4, "\'\'"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 110
    .restart local v0    # "condition":Lcom/oppo/tribune/provider/Condition;
    :cond_1
    iget-object v1, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mModel:Ljava/lang/String;

    const-string v3, "\'"

    const-string v4, "\'\'"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 112
    :cond_2
    iget-object v1, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUserName:Ljava/lang/String;

    const-string v3, "\'"

    const-string v4, "\'\'"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 115
    :cond_3
    iget-object v1, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mComment:Ljava/lang/String;

    const-string v3, "\'"

    const-string v4, "\'\'"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method protected bridge synthetic queryRecordCondition(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/oneplus/tuner/providers/SoundEffectItem;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/tuner/providers/SoundEffectDao;->queryRecordCondition(Lcom/oneplus/tuner/providers/SoundEffectItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultUsed(Lcom/oneplus/tuner/providers/SoundEffectItem;)Z
    .locals 4
    .param p1, "item"    # Lcom/oneplus/tuner/providers/SoundEffectItem;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 345
    sget-boolean v2, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->mHeadsetPlugged:Z

    if-nez v2, :cond_1

    .line 346
    iget-object v2, p0, Lcom/oneplus/tuner/providers/SoundEffectDao;->mContext:Landroid/content/Context;

    const v3, 0x7f0c06fc

    invoke-static {v2, v3, v1}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 387
    :cond_0
    :goto_0
    return v0

    .line 351
    :cond_1
    iget v2, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUsing:I

    if-eq v2, v1, :cond_0

    .line 355
    iget-object v0, p0, Lcom/oneplus/tuner/providers/SoundEffectDao;->mHandler:Lcom/oneplus/tuner/manager/DatabaseHandler;

    new-instance v2, Lcom/oneplus/tuner/providers/SoundEffectDao$9;

    invoke-direct {v2, p0}, Lcom/oneplus/tuner/providers/SoundEffectDao$9;-><init>(Lcom/oneplus/tuner/providers/SoundEffectDao;)V

    invoke-virtual {v0, v2}, Lcom/oneplus/tuner/manager/DatabaseHandler;->postCommon(Ljava/lang/Runnable;)V

    .line 376
    iget-object v0, p0, Lcom/oneplus/tuner/providers/SoundEffectDao;->mHandler:Lcom/oneplus/tuner/manager/DatabaseHandler;

    new-instance v2, Lcom/oneplus/tuner/providers/SoundEffectDao$10;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/tuner/providers/SoundEffectDao$10;-><init>(Lcom/oneplus/tuner/providers/SoundEffectDao;Lcom/oneplus/tuner/providers/SoundEffectItem;)V

    invoke-virtual {v0, v2}, Lcom/oneplus/tuner/manager/DatabaseHandler;->postCommon(Ljava/lang/Runnable;)V

    move v0, v1

    .line 387
    goto :goto_0
.end method

.method public setDownloadUsed(Lcom/oneplus/tuner/providers/SoundEffectItem;)V
    .locals 10
    .param p1, "item"    # Lcom/oneplus/tuner/providers/SoundEffectItem;

    .prologue
    const/4 v8, 0x1

    .line 261
    sget-boolean v5, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->mHeadsetPlugged:Z

    if-nez v5, :cond_1

    .line 262
    new-instance v5, Lcom/oneplus/tuner/providers/SoundEffectDao$6;

    invoke-direct {v5, p0}, Lcom/oneplus/tuner/providers/SoundEffectDao$6;-><init>(Lcom/oneplus/tuner/providers/SoundEffectDao;)V

    invoke-static {v5}, Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncMainRunnable(Ljava/lang/Runnable;)V

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    invoke-static {}, Lcom/waves/maxxaudio/MaxxAudioManager;->getInstance()Lcom/waves/maxxaudio/MaxxAudioManager;

    move-result-object v2

    .line 273
    .local v2, "manager":Lcom/waves/maxxaudio/MaxxAudioManager;
    invoke-virtual {v2}, Lcom/waves/maxxaudio/MaxxAudioManager;->isEnabled()Z

    move-result v0

    .line 274
    .local v0, "enabled":Z
    if-nez v0, :cond_2

    .line 275
    new-instance v5, Lcom/oneplus/tuner/providers/SoundEffectDao$7;

    invoke-direct {v5, p0}, Lcom/oneplus/tuner/providers/SoundEffectDao$7;-><init>(Lcom/oneplus/tuner/providers/SoundEffectDao;)V

    invoke-static {v5}, Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncMainRunnable(Ljava/lang/Runnable;)V

    .line 284
    :cond_2
    iget v5, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUsing:I

    if-eq v5, v8, :cond_0

    .line 288
    iget-object v5, p0, Lcom/oneplus/tuner/providers/SoundEffectDao;->mHandler:Lcom/oneplus/tuner/manager/DatabaseHandler;

    new-instance v6, Lcom/oneplus/tuner/providers/SoundEffectDao$8;

    invoke-direct {v6, p0}, Lcom/oneplus/tuner/providers/SoundEffectDao$8;-><init>(Lcom/oneplus/tuner/providers/SoundEffectDao;)V

    invoke-virtual {v5, v6}, Lcom/oneplus/tuner/manager/DatabaseHandler;->postCommon(Ljava/lang/Runnable;)V

    .line 323
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 324
    .local v1, "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/oneplus/tuner/providers/SoundEffectItem;>;"
    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 330
    iput v8, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUsing:I

    .line 332
    const-string v3, "_share_id=? AND _time=?"

    .line 333
    .local v3, "where":Ljava/lang/String;
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mShareId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 334
    .local v4, "whereArgs":[Ljava/lang/String;
    const-string v5, "diaodiao"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mId:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {p0, v1, v3, v4}, Lcom/oneplus/tuner/providers/SoundEffectDao;->update(Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method public setLocalModify(Lcom/oneplus/tuner/providers/SoundEffectItem;)V
    .locals 3
    .param p1, "item"    # Lcom/oneplus/tuner/providers/SoundEffectItem;

    .prologue
    const/4 v2, 0x1

    .line 215
    sget-boolean v0, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->mHeadsetPlugged:Z

    if-nez v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/oneplus/tuner/providers/SoundEffectDao;->mContext:Landroid/content/Context;

    const v1, 0x7f0c06fd

    invoke-static {v0, v1, v2}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget v0, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUsing:I

    if-eq v0, v2, :cond_0

    .line 225
    iget-object v0, p0, Lcom/oneplus/tuner/providers/SoundEffectDao;->mHandler:Lcom/oneplus/tuner/manager/DatabaseHandler;

    new-instance v1, Lcom/oneplus/tuner/providers/SoundEffectDao$4;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/providers/SoundEffectDao$4;-><init>(Lcom/oneplus/tuner/providers/SoundEffectDao;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/tuner/manager/DatabaseHandler;->postCommon(Ljava/lang/Runnable;)V

    .line 246
    iget-object v0, p0, Lcom/oneplus/tuner/providers/SoundEffectDao;->mHandler:Lcom/oneplus/tuner/manager/DatabaseHandler;

    new-instance v1, Lcom/oneplus/tuner/providers/SoundEffectDao$5;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/tuner/providers/SoundEffectDao$5;-><init>(Lcom/oneplus/tuner/providers/SoundEffectDao;Lcom/oneplus/tuner/providers/SoundEffectItem;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/tuner/manager/DatabaseHandler;->postCommon(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setLocalUsed(Lcom/oneplus/tuner/providers/SoundEffectItem;)V
    .locals 3
    .param p1, "item"    # Lcom/oneplus/tuner/providers/SoundEffectItem;

    .prologue
    .line 128
    sget-boolean v0, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->mHeadsetPlugged:Z

    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/oneplus/tuner/providers/SoundEffectDao;->mContext:Landroid/content/Context;

    const v1, 0x7f0c06fc

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget v0, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUsing:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/oneplus/tuner/providers/SoundEffectDao;->mHandler:Lcom/oneplus/tuner/manager/DatabaseHandler;

    new-instance v1, Lcom/oneplus/tuner/providers/SoundEffectDao$1;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/providers/SoundEffectDao$1;-><init>(Lcom/oneplus/tuner/providers/SoundEffectDao;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/tuner/manager/DatabaseHandler;->postCommon(Ljava/lang/Runnable;)V

    .line 182
    iget-object v0, p0, Lcom/oneplus/tuner/providers/SoundEffectDao;->mHandler:Lcom/oneplus/tuner/manager/DatabaseHandler;

    new-instance v1, Lcom/oneplus/tuner/providers/SoundEffectDao$2;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/tuner/providers/SoundEffectDao$2;-><init>(Lcom/oneplus/tuner/providers/SoundEffectDao;Lcom/oneplus/tuner/providers/SoundEffectItem;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/tuner/manager/DatabaseHandler;->postCommon(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setLocalUsed_14049(Lcom/oneplus/tuner/providers/SoundEffectItem;)V
    .locals 2
    .param p1, "item"    # Lcom/oneplus/tuner/providers/SoundEffectItem;

    .prologue
    .line 197
    iget v0, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUsing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 211
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/providers/SoundEffectDao;->mHandler:Lcom/oneplus/tuner/manager/DatabaseHandler;

    new-instance v1, Lcom/oneplus/tuner/providers/SoundEffectDao$3;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/tuner/providers/SoundEffectDao$3;-><init>(Lcom/oneplus/tuner/providers/SoundEffectDao;Lcom/oneplus/tuner/providers/SoundEffectItem;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/tuner/manager/DatabaseHandler;->postCommon(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected sortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "_id ASC"

    return-object v0
.end method

.method public update(Lcom/oneplus/tuner/providers/SoundEffectItem;JLjava/lang/String;[Ljava/lang/String;)Z
    .locals 6
    .param p1, "list"    # Lcom/oneplus/tuner/providers/SoundEffectItem;
    .param p2, "id"    # J
    .param p4, "whereClause"    # Ljava/lang/String;
    .param p5, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 410
    const/4 v1, 0x0

    .line 411
    .local v1, "batchTemp":Lcom/oneplus/tuner/providers/BatchOperation;
    if-eqz p1, :cond_0

    iget v3, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUsing:I

    if-ne v3, v5, :cond_0

    .line 412
    new-instance v1, Lcom/oneplus/tuner/providers/BatchOperation;

    .end local v1    # "batchTemp":Lcom/oneplus/tuner/providers/BatchOperation;
    invoke-virtual {p0}, Lcom/oneplus/tuner/providers/SoundEffectDao;->contentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/oneplus/tuner/providers/BatchOperation;-><init>(Landroid/net/Uri;)V

    .line 413
    .restart local v1    # "batchTemp":Lcom/oneplus/tuner/providers/BatchOperation;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 414
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "_using"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 415
    const-string v3, "_using = 1"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/oneplus/tuner/providers/BatchOperation;->newUpdate(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 417
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_0
    move-object v0, v1

    .line 418
    .local v0, "batch":Lcom/oneplus/tuner/providers/BatchOperation;
    iget-object v3, p0, Lcom/oneplus/tuner/providers/SoundEffectDao;->mHandler:Lcom/oneplus/tuner/manager/DatabaseHandler;

    new-instance v4, Lcom/oneplus/tuner/providers/SoundEffectDao$11;

    invoke-direct {v4, p0, v0, p1}, Lcom/oneplus/tuner/providers/SoundEffectDao$11;-><init>(Lcom/oneplus/tuner/providers/SoundEffectDao;Lcom/oneplus/tuner/providers/BatchOperation;Lcom/oneplus/tuner/providers/SoundEffectItem;)V

    invoke-virtual {v3, v4}, Lcom/oneplus/tuner/manager/DatabaseHandler;->postCommon(Ljava/lang/Runnable;)V

    .line 441
    return v5
.end method

.method public bridge synthetic update(Ljava/lang/Object;JLjava/lang/String;[Ljava/lang/String;)Z
    .locals 6
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # J
    .param p4, "x2"    # Ljava/lang/String;
    .param p5, "x3"    # [Ljava/lang/String;

    .prologue
    .line 23
    move-object v1, p1

    check-cast v1, Lcom/oneplus/tuner/providers/SoundEffectItem;

    move-object v0, p0

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/tuner/providers/SoundEffectDao;->update(Lcom/oneplus/tuner/providers/SoundEffectItem;JLjava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
