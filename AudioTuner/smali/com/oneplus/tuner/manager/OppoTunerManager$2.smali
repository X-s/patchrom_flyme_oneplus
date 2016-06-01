.class Lcom/oneplus/tuner/manager/OppoTunerManager$2;
.super Ljava/lang/Object;
.source "OppoTunerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/manager/OppoTunerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/manager/OppoTunerManager;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/manager/OppoTunerManager;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/oneplus/tuner/manager/OppoTunerManager$2;->this$0:Lcom/oneplus/tuner/manager/OppoTunerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 309
    # getter for: Lcom/oneplus/tuner/manager/OppoTunerManager;->mDatabaseHandler:Lcom/oneplus/tuner/manager/DatabaseHandler;
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->access$600()Lcom/oneplus/tuner/manager/DatabaseHandler;

    move-result-object v4

    new-instance v5, Lcom/oneplus/tuner/manager/OppoTunerManager$2$1;

    invoke-direct {v5, p0}, Lcom/oneplus/tuner/manager/OppoTunerManager$2$1;-><init>(Lcom/oneplus/tuner/manager/OppoTunerManager$2;)V

    invoke-virtual {v4, v5}, Lcom/oneplus/tuner/manager/DatabaseHandler;->postInit(Ljava/lang/Runnable;)V

    .line 322
    sget-object v4, Lcom/oneplus/tuner/manager/OppoTunerManager;->mSoundEffectDao:Lcom/oneplus/tuner/providers/SoundEffectDao;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_model"

    aput-object v7, v5, v6

    invoke-virtual {v4, v5, v8, v8}, Lcom/oneplus/tuner/providers/SoundEffectDao;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 325
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-gtz v4, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 331
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v1, "contains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const-string v4, "_model"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, "model":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 339
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    new-instance v3, Lcom/oneplus/tuner/manager/OppoTunerManager$InitRunnable;

    iget-object v4, p0, Lcom/oneplus/tuner/manager/OppoTunerManager$2;->this$0:Lcom/oneplus/tuner/manager/OppoTunerManager;

    invoke-direct {v3, v4, v2}, Lcom/oneplus/tuner/manager/OppoTunerManager$InitRunnable;-><init>(Lcom/oneplus/tuner/manager/OppoTunerManager;Ljava/lang/String;)V

    .line 341
    .local v3, "run":Lcom/oneplus/tuner/manager/OppoTunerManager$InitRunnable;
    # getter for: Lcom/oneplus/tuner/manager/OppoTunerManager;->mDatabaseHandler:Lcom/oneplus/tuner/manager/DatabaseHandler;
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->access$600()Lcom/oneplus/tuner/manager/DatabaseHandler;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/oneplus/tuner/manager/DatabaseHandler;->postInit(Ljava/lang/Runnable;)V

    .line 344
    .end local v3    # "run":Lcom/oneplus/tuner/manager/OppoTunerManager$InitRunnable;
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 346
    # getter for: Lcom/oneplus/tuner/manager/OppoTunerManager;->mDatabaseHandler:Lcom/oneplus/tuner/manager/DatabaseHandler;
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->access$600()Lcom/oneplus/tuner/manager/DatabaseHandler;

    move-result-object v4

    new-instance v5, Lcom/oneplus/tuner/manager/OppoTunerManager$2$2;

    invoke-direct {v5, p0}, Lcom/oneplus/tuner/manager/OppoTunerManager$2$2;-><init>(Lcom/oneplus/tuner/manager/OppoTunerManager$2;)V

    invoke-virtual {v4, v5}, Lcom/oneplus/tuner/manager/DatabaseHandler;->postInit(Ljava/lang/Runnable;)V

    .line 354
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
