.class Landroid/telecom/Call$8;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/Call;->fireCallDestroyed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/Call;

.field final synthetic val$call:Landroid/telecom/Call;

.field final synthetic val$callback:Landroid/telecom/Call$Callback;

.field final synthetic val$record:Landroid/telecom/CallbackRecord;


# direct methods
.method constructor <init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/CallbackRecord;)V
    .locals 0

    .prologue
    .line 1292
    iput-object p1, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    iput-object p2, p0, Landroid/telecom/Call$8;->val$callback:Landroid/telecom/Call$Callback;

    iput-object p3, p0, Landroid/telecom/Call$8;->val$call:Landroid/telecom/Call;

    iput-object p4, p0, Landroid/telecom/Call$8;->val$record:Landroid/telecom/CallbackRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1295
    const/4 v1, 0x0

    .line 1296
    .local v1, "isFinalRemoval":Z
    const/4 v2, 0x0

    .line 1298
    .local v2, "toThrow":Ljava/lang/RuntimeException;
    :try_start_0
    iget-object v3, p0, Landroid/telecom/Call$8;->val$callback:Landroid/telecom/Call$Callback;

    iget-object v4, p0, Landroid/telecom/Call$8;->val$call:Landroid/telecom/Call;

    invoke-virtual {v3, v4}, Landroid/telecom/Call$Callback;->onCallDestroyed(Landroid/telecom/Call;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1302
    :goto_0
    iget-object v4, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    monitor-enter v4

    .line 1303
    :try_start_1
    iget-object v3, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    # getter for: Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;
    invoke-static {v3}, Landroid/telecom/Call;->access$100(Landroid/telecom/Call;)Ljava/util/List;

    move-result-object v3

    iget-object v5, p0, Landroid/telecom/Call$8;->val$record:Landroid/telecom/CallbackRecord;

    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1304
    iget-object v3, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    # getter for: Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;
    invoke-static {v3}, Landroid/telecom/Call;->access$100(Landroid/telecom/Call;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1305
    const/4 v1, 0x1

    .line 1307
    :cond_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1308
    if-eqz v1, :cond_1

    .line 1309
    iget-object v3, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    # getter for: Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;
    invoke-static {v3}, Landroid/telecom/Call;->access$200(Landroid/telecom/Call;)Landroid/telecom/Phone;

    move-result-object v3

    iget-object v4, p0, Landroid/telecom/Call$8;->val$call:Landroid/telecom/Call;

    invoke-virtual {v3, v4}, Landroid/telecom/Phone;->internalRemoveCall(Landroid/telecom/Call;)V

    .line 1311
    :cond_1
    if-eqz v2, :cond_2

    .line 1312
    throw v2

    .line 1299
    :catch_0
    move-exception v0

    .line 1300
    .local v0, "e":Ljava/lang/RuntimeException;
    move-object v2, v0

    goto :goto_0

    .line 1307
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1314
    :cond_2
    return-void
.end method
