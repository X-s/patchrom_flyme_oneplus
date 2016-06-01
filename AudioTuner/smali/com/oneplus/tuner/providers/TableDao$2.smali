.class Lcom/oneplus/tuner/providers/TableDao$2;
.super Ljava/lang/Object;
.source "TableDao.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/providers/TableDao;->insert(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/providers/TableDao;

.field final synthetic val$batch:Lcom/oneplus/tuner/providers/BatchOperation;

.field final synthetic val$list:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/providers/TableDao;Lcom/oneplus/tuner/providers/BatchOperation;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 158
    .local p0, "this":Lcom/oneplus/tuner/providers/TableDao$2;, "Lcom/oneplus/tuner/providers/TableDao.2;"
    iput-object p1, p0, Lcom/oneplus/tuner/providers/TableDao$2;->this$0:Lcom/oneplus/tuner/providers/TableDao;

    iput-object p2, p0, Lcom/oneplus/tuner/providers/TableDao$2;->val$batch:Lcom/oneplus/tuner/providers/BatchOperation;

    iput-object p3, p0, Lcom/oneplus/tuner/providers/TableDao$2;->val$list:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 160
    .local p0, "this":Lcom/oneplus/tuner/providers/TableDao$2;, "Lcom/oneplus/tuner/providers/TableDao.2;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/oneplus/tuner/providers/TableDao$2;->val$batch:Lcom/oneplus/tuner/providers/BatchOperation;

    iget-object v3, p0, Lcom/oneplus/tuner/providers/TableDao$2;->this$0:Lcom/oneplus/tuner/providers/TableDao;

    iget-object v3, v3, Lcom/oneplus/tuner/providers/TableDao;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/oneplus/tuner/providers/BatchOperation;->apply(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result v1

    .line 162
    .local v1, "res":Z
    iget-object v2, p0, Lcom/oneplus/tuner/providers/TableDao$2;->val$list:Ljava/lang/Object;

    check-cast v2, Lcom/oneplus/tuner/providers/SoundEffectItem;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mId:J

    .line 164
    if-eqz v1, :cond_0

    .line 165
    iget-object v2, p0, Lcom/oneplus/tuner/providers/TableDao$2;->val$list:Ljava/lang/Object;

    check-cast v2, Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-static {v2}, Lcom/oneplus/tuner/manager/OppoTunerManager;->add(Lcom/oneplus/tuner/providers/SoundEffectItem;)V

    .line 168
    :cond_0
    const-string v2, "TableDao"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " insert --- res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void
.end method
