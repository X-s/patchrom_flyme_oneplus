.class Lcom/google/tagmanager/DataLayer$2;
.super Ljava/lang/Object;
.source "DataLayer.java"

# interfaces
.implements Lcom/google/tagmanager/DataLayer$PersistentStore$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/tagmanager/DataLayer;->loadSavedMaps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tagmanager/DataLayer;


# direct methods
.method constructor <init>(Lcom/google/tagmanager/DataLayer;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/google/tagmanager/DataLayer$2;->this$0:Lcom/google/tagmanager/DataLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyValuesLoaded(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/tagmanager/DataLayer$KeyValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/google/tagmanager/DataLayer$2;->this$0:Lcom/google/tagmanager/DataLayer;

    invoke-static {v0}, Lcom/google/tagmanager/DataLayer;->access$100(Lcom/google/tagmanager/DataLayer;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 288
    return-void

    .line 284
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/DataLayer$KeyValue;

    .line 285
    iget-object v2, p0, Lcom/google/tagmanager/DataLayer$2;->this$0:Lcom/google/tagmanager/DataLayer;

    iget-object v3, p0, Lcom/google/tagmanager/DataLayer$2;->this$0:Lcom/google/tagmanager/DataLayer;

    iget-object v4, v0, Lcom/google/tagmanager/DataLayer$KeyValue;->mKey:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/tagmanager/DataLayer$KeyValue;->mValue:Ljava/lang/Object;

    invoke-virtual {v3, v4, v0}, Lcom/google/tagmanager/DataLayer;->expandKeyValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/tagmanager/DataLayer;->access$000(Lcom/google/tagmanager/DataLayer;Ljava/util/Map;)V

    goto :goto_0
.end method
