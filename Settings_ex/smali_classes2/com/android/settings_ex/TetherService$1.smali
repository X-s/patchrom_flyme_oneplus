.class Lcom/android/settings_ex/TetherService$1;
.super Landroid/content/BroadcastReceiver;
.source "TetherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/TetherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/TetherService;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/TetherService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/TetherService;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/settings_ex/TetherService$1;->this$0:Lcom/android/settings_ex/TetherService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 298
    invoke-static {}, Lcom/android/settings_ex/TetherService;->-get0()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "TetherService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Got provision result "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/TetherService$1;->this$0:Lcom/android/settings_ex/TetherService;

    invoke-virtual {v3}, Lcom/android/settings_ex/TetherService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 300
    const v4, 0x1040035

    .line 299
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "provisionResponse":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 303
    iget-object v3, p0, Lcom/android/settings_ex/TetherService$1;->this$0:Lcom/android/settings_ex/TetherService;

    invoke-static {v3}, Lcom/android/settings_ex/TetherService;->-get3(Lcom/android/settings_ex/TetherService;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 304
    const-string/jumbo v3, "TetherService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected provision response "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void

    .line 307
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/TetherService$1;->this$0:Lcom/android/settings_ex/TetherService;

    invoke-static {v3}, Lcom/android/settings_ex/TetherService;->-get1(Lcom/android/settings_ex/TetherService;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/TetherService$1;->this$0:Lcom/android/settings_ex/TetherService;

    invoke-static {v4}, Lcom/android/settings_ex/TetherService;->-get2(Lcom/android/settings_ex/TetherService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 308
    .local v0, "checkType":I
    iget-object v3, p0, Lcom/android/settings_ex/TetherService$1;->this$0:Lcom/android/settings_ex/TetherService;

    invoke-static {v3, v6}, Lcom/android/settings_ex/TetherService;->-set1(Lcom/android/settings_ex/TetherService;Z)Z

    .line 309
    const-string/jumbo v3, "EntitlementResult"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 310
    .local v2, "result":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 311
    packed-switch v0, :pswitch_data_0

    .line 323
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/TetherService$1;->this$0:Lcom/android/settings_ex/TetherService;

    invoke-static {v3, v0, v2}, Lcom/android/settings_ex/TetherService;->-wrap3(Lcom/android/settings_ex/TetherService;II)V

    .line 325
    iget-object v3, p0, Lcom/android/settings_ex/TetherService$1;->this$0:Lcom/android/settings_ex/TetherService;

    invoke-static {v3}, Lcom/android/settings_ex/TetherService;->-get2(Lcom/android/settings_ex/TetherService;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lcom/android/settings_ex/TetherService;->-set0(Lcom/android/settings_ex/TetherService;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings_ex/TetherService$1;->this$0:Lcom/android/settings_ex/TetherService;

    invoke-static {v4}, Lcom/android/settings_ex/TetherService;->-get1(Lcom/android/settings_ex/TetherService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_4

    .line 327
    iget-object v3, p0, Lcom/android/settings_ex/TetherService$1;->this$0:Lcom/android/settings_ex/TetherService;

    invoke-virtual {v3}, Lcom/android/settings_ex/TetherService;->stopSelf()V

    .line 297
    .end local v0    # "checkType":I
    .end local v2    # "result":I
    :cond_3
    :goto_1
    return-void

    .line 313
    .restart local v0    # "checkType":I
    .restart local v2    # "result":I
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings_ex/TetherService$1;->this$0:Lcom/android/settings_ex/TetherService;

    invoke-static {v3}, Lcom/android/settings_ex/TetherService;->-wrap2(Lcom/android/settings_ex/TetherService;)V

    goto :goto_0

    .line 316
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings_ex/TetherService$1;->this$0:Lcom/android/settings_ex/TetherService;

    invoke-static {v3}, Lcom/android/settings_ex/TetherService;->-wrap0(Lcom/android/settings_ex/TetherService;)V

    goto :goto_0

    .line 319
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings_ex/TetherService$1;->this$0:Lcom/android/settings_ex/TetherService;

    invoke-static {v3}, Lcom/android/settings_ex/TetherService;->-wrap1(Lcom/android/settings_ex/TetherService;)V

    goto :goto_0

    .line 330
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/TetherService$1;->this$0:Lcom/android/settings_ex/TetherService;

    iget-object v4, p0, Lcom/android/settings_ex/TetherService$1;->this$0:Lcom/android/settings_ex/TetherService;

    invoke-static {v4}, Lcom/android/settings_ex/TetherService;->-get2(Lcom/android/settings_ex/TetherService;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings_ex/TetherService;->-wrap4(Lcom/android/settings_ex/TetherService;I)V

    goto :goto_1

    .line 311
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
