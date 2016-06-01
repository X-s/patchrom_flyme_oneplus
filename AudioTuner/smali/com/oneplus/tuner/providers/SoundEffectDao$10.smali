.class Lcom/oneplus/tuner/providers/SoundEffectDao$10;
.super Ljava/lang/Object;
.source "SoundEffectDao.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/providers/SoundEffectDao;->setDefaultUsed(Lcom/oneplus/tuner/providers/SoundEffectItem;)Z
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
    .line 376
    iput-object p1, p0, Lcom/oneplus/tuner/providers/SoundEffectDao$10;->this$0:Lcom/oneplus/tuner/providers/SoundEffectDao;

    iput-object p2, p0, Lcom/oneplus/tuner/providers/SoundEffectDao$10;->val$item:Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/oneplus/tuner/providers/SoundEffectDao$10;->val$item:Lcom/oneplus/tuner/providers/SoundEffectItem;

    const/4 v1, 0x1

    iput v1, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUsing:I

    .line 381
    iget-object v0, p0, Lcom/oneplus/tuner/providers/SoundEffectDao$10;->val$item:Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-static {v0}, Lcom/oneplus/tuner/manager/OppoTunerManager;->update(Lcom/oneplus/tuner/providers/SoundEffectItem;)V

    .line 383
    return-void
.end method
