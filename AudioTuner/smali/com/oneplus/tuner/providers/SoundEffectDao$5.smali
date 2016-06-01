.class Lcom/oneplus/tuner/providers/SoundEffectDao$5;
.super Ljava/lang/Object;
.source "SoundEffectDao.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/providers/SoundEffectDao;->setLocalModify(Lcom/oneplus/tuner/providers/SoundEffectItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/providers/SoundEffectDao;

.field final synthetic val$item:Lcom/oneplus/tuner/providers/SoundEffectItem;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/providers/SoundEffectDao;Lcom/oneplus/tuner/providers/SoundEffectItem;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/oneplus/tuner/providers/SoundEffectDao$5;->this$0:Lcom/oneplus/tuner/providers/SoundEffectDao;

    iput-object p2, p0, Lcom/oneplus/tuner/providers/SoundEffectDao$5;->val$item:Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 250
    iget-object v0, p0, Lcom/oneplus/tuner/providers/SoundEffectDao$5;->val$item:Lcom/oneplus/tuner/providers/SoundEffectItem;

    const/4 v1, 0x1

    iput v1, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUsing:I

    .line 251
    iget-object v0, p0, Lcom/oneplus/tuner/providers/SoundEffectDao$5;->this$0:Lcom/oneplus/tuner/providers/SoundEffectDao;

    iget-object v1, p0, Lcom/oneplus/tuner/providers/SoundEffectDao$5;->val$item:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-object v2, p0, Lcom/oneplus/tuner/providers/SoundEffectDao$5;->val$item:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-wide v2, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mId:J

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/tuner/providers/SoundEffectDao;->update(Lcom/oneplus/tuner/providers/SoundEffectItem;JLjava/lang/String;[Ljava/lang/String;)Z

    .line 253
    return-void
.end method
