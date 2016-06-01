.class Lcom/oneplus/tuner/providers/TableDao$1;
.super Ljava/lang/Object;
.source "TableDao.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/providers/TableDao;->insert(Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;)Z
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
.method constructor <init>(Lcom/oneplus/tuner/providers/TableDao;Ljava/util/List;Lcom/oneplus/tuner/providers/BatchOperation;)V
    .locals 0

    .prologue
    .line 124
    .local p0, "this":Lcom/oneplus/tuner/providers/TableDao$1;, "Lcom/oneplus/tuner/providers/TableDao.1;"
    iput-object p1, p0, Lcom/oneplus/tuner/providers/TableDao$1;->this$0:Lcom/oneplus/tuner/providers/TableDao;

    iput-object p2, p0, Lcom/oneplus/tuner/providers/TableDao$1;->val$list:Ljava/util/List;

    iput-object p3, p0, Lcom/oneplus/tuner/providers/TableDao$1;->val$batch:Lcom/oneplus/tuner/providers/BatchOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 126
    .local p0, "this":Lcom/oneplus/tuner/providers/TableDao$1;, "Lcom/oneplus/tuner/providers/TableDao.1;"
    iget-object v5, p0, Lcom/oneplus/tuner/providers/TableDao$1;->val$list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 127
    .local v0, "count":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v2, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v5, p0, Lcom/oneplus/tuner/providers/TableDao$1;->val$batch:Lcom/oneplus/tuner/providers/BatchOperation;

    iget-object v6, p0, Lcom/oneplus/tuner/providers/TableDao$1;->this$0:Lcom/oneplus/tuner/providers/TableDao;

    iget-object v6, v6, Lcom/oneplus/tuner/providers/TableDao;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v2}, Lcom/oneplus/tuner/providers/BatchOperation;->apply(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result v4

    .line 129
    .local v4, "res":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 130
    iget-object v5, p0, Lcom/oneplus/tuner/providers/TableDao$1;->val$list:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 131
    .local v3, "item":Ljava/lang/Object;, "TT;"
    if-eqz v3, :cond_0

    .line 132
    check-cast v3, Lcom/oneplus/tuner/providers/SoundEffectItem;

    .end local v3    # "item":Ljava/lang/Object;, "TT;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/oneplus/tuner/providers/SoundEffectItem;->mId:J

    .line 129
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_1
    if-eqz v4, :cond_2

    .line 136
    iget-object v5, p0, Lcom/oneplus/tuner/providers/TableDao$1;->val$list:Ljava/util/List;

    invoke-static {v5}, Lcom/oneplus/tuner/manager/OppoTunerManager;->add(Ljava/util/List;)V

    .line 138
    :cond_2
    const-string v5, "TableDao"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " insert list --- res = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method
