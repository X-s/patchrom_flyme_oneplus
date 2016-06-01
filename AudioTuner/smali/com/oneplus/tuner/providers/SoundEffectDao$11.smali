.class Lcom/oneplus/tuner/providers/SoundEffectDao$11;
.super Ljava/lang/Object;
.source "SoundEffectDao.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/providers/SoundEffectDao;->update(Lcom/oneplus/tuner/providers/SoundEffectItem;JLjava/lang/String;[Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/providers/SoundEffectDao;

.field final synthetic val$batch:Lcom/oneplus/tuner/providers/BatchOperation;

.field final synthetic val$list:Lcom/oneplus/tuner/providers/SoundEffectItem;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/providers/SoundEffectDao;Lcom/oneplus/tuner/providers/BatchOperation;Lcom/oneplus/tuner/providers/SoundEffectItem;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/oneplus/tuner/providers/SoundEffectDao$11;->this$0:Lcom/oneplus/tuner/providers/SoundEffectDao;

    iput-object p2, p0, Lcom/oneplus/tuner/providers/SoundEffectDao$11;->val$batch:Lcom/oneplus/tuner/providers/BatchOperation;

    iput-object p3, p0, Lcom/oneplus/tuner/providers/SoundEffectDao$11;->val$list:Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 420
    iget-object v3, p0, Lcom/oneplus/tuner/providers/SoundEffectDao$11;->val$batch:Lcom/oneplus/tuner/providers/BatchOperation;

    if-eqz v3, :cond_0

    .line 421
    iget-object v3, p0, Lcom/oneplus/tuner/providers/SoundEffectDao$11;->val$batch:Lcom/oneplus/tuner/providers/BatchOperation;

    iget-object v4, p0, Lcom/oneplus/tuner/providers/SoundEffectDao$11;->this$0:Lcom/oneplus/tuner/providers/SoundEffectDao;

    iget-object v4, v4, Lcom/oneplus/tuner/providers/SoundEffectDao;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/oneplus/tuner/providers/BatchOperation;->apply(Landroid/content/Context;)Z

    .line 425
    :cond_0
    iget-object v3, p0, Lcom/oneplus/tuner/providers/SoundEffectDao$11;->val$list:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget v3, v3, Lcom/oneplus/tuner/providers/SoundEffectItem;->mLocal:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/oneplus/tuner/providers/SoundEffectDao$11;->val$list:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget v3, v3, Lcom/oneplus/tuner/providers/SoundEffectItem;->mShareId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 426
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/tuner/providers/SoundEffectDao$11;->val$list:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-wide v4, v4, Lcom/oneplus/tuner/providers/SoundEffectItem;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "selection":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/oneplus/tuner/providers/SoundEffectDao$11;->this$0:Lcom/oneplus/tuner/providers/SoundEffectDao;

    iget-object v4, p0, Lcom/oneplus/tuner/providers/SoundEffectDao$11;->val$list:Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-virtual {v3, v4}, Lcom/oneplus/tuner/providers/SoundEffectDao;->newInsertValues(Lcom/oneplus/tuner/providers/SoundEffectItem;)Landroid/content/ContentValues;

    move-result-object v2

    .line 434
    .local v2, "values":Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/oneplus/tuner/providers/SoundEffectDao$11;->this$0:Lcom/oneplus/tuner/providers/SoundEffectDao;

    iget-object v3, v3, Lcom/oneplus/tuner/providers/SoundEffectDao;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/tuner/providers/SoundEffectDao$11;->this$0:Lcom/oneplus/tuner/providers/SoundEffectDao;

    invoke-virtual {v4}, Lcom/oneplus/tuner/providers/SoundEffectDao;->contentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v0, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 436
    .local v1, "updateCount":I
    if-gtz v1, :cond_1

    .line 437
    iget-object v3, p0, Lcom/oneplus/tuner/providers/SoundEffectDao$11;->this$0:Lcom/oneplus/tuner/providers/SoundEffectDao;

    iget-object v4, p0, Lcom/oneplus/tuner/providers/SoundEffectDao$11;->val$list:Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-virtual {v3, v4, v6, v6}, Lcom/oneplus/tuner/providers/SoundEffectDao;->insert(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 439
    :cond_1
    return-void

    .line 427
    .end local v0    # "selection":Ljava/lang/String;
    .end local v1    # "updateCount":I
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_2
    iget-object v3, p0, Lcom/oneplus/tuner/providers/SoundEffectDao$11;->val$list:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget v3, v3, Lcom/oneplus/tuner/providers/SoundEffectItem;->mShareId:I

    if-lez v3, :cond_3

    .line 428
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_share_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/tuner/providers/SoundEffectDao$11;->val$list:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget v4, v4, Lcom/oneplus/tuner/providers/SoundEffectItem;->mShareId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "selection":Ljava/lang/String;
    goto :goto_0

    .line 430
    .end local v0    # "selection":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_local = 1 AND _category_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/tuner/providers/SoundEffectDao$11;->val$list:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget v4, v4, Lcom/oneplus/tuner/providers/SoundEffectItem;->mCategoryId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "selection":Ljava/lang/String;
    goto :goto_0
.end method
