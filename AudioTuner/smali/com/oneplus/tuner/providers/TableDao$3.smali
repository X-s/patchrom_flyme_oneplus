.class Lcom/oneplus/tuner/providers/TableDao$3;
.super Ljava/lang/Object;
.source "TableDao.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/providers/TableDao;->update(Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/providers/TableDao;

.field final synthetic val$batch:Lcom/oneplus/tuner/providers/BatchOperation;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/providers/TableDao;Lcom/oneplus/tuner/providers/BatchOperation;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 207
    .local p0, "this":Lcom/oneplus/tuner/providers/TableDao$3;, "Lcom/oneplus/tuner/providers/TableDao.3;"
    iput-object p1, p0, Lcom/oneplus/tuner/providers/TableDao$3;->this$0:Lcom/oneplus/tuner/providers/TableDao;

    iput-object p2, p0, Lcom/oneplus/tuner/providers/TableDao$3;->val$batch:Lcom/oneplus/tuner/providers/BatchOperation;

    iput-object p3, p0, Lcom/oneplus/tuner/providers/TableDao$3;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 209
    .local p0, "this":Lcom/oneplus/tuner/providers/TableDao$3;, "Lcom/oneplus/tuner/providers/TableDao.3;"
    iget-object v1, p0, Lcom/oneplus/tuner/providers/TableDao$3;->val$batch:Lcom/oneplus/tuner/providers/BatchOperation;

    iget-object v2, p0, Lcom/oneplus/tuner/providers/TableDao$3;->this$0:Lcom/oneplus/tuner/providers/TableDao;

    iget-object v2, v2, Lcom/oneplus/tuner/providers/TableDao;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/oneplus/tuner/providers/BatchOperation;->apply(Landroid/content/Context;)Z

    move-result v0

    .line 210
    .local v0, "res":Z
    if-eqz v0, :cond_0

    .line 211
    iget-object v1, p0, Lcom/oneplus/tuner/providers/TableDao$3;->val$list:Ljava/util/List;

    invoke-static {v1}, Lcom/oneplus/tuner/manager/OppoTunerManager;->update(Ljava/util/List;)V

    .line 213
    :cond_0
    const-string v1, "TableDao"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " update list --- res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-void
.end method
