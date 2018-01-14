.class Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;
.super Ljava/lang/Object;
.source "RemotePrintService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteServiceConneciton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/RemotePrintService;


# direct methods
.method private constructor <init>(Lcom/android/server/print/RemotePrintService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/print/RemotePrintService;

    .prologue
    .line 580
    iput-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/print/RemotePrintService;Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/print/RemotePrintService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;-><init>(Lcom/android/server/print/RemotePrintService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v6, 0x0

    .line 583
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get4(Lcom/android/server/print/RemotePrintService;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get0(Lcom/android/server/print/RemotePrintService;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 587
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4, v6}, Lcom/android/server/print/RemotePrintService;->-set0(Lcom/android/server/print/RemotePrintService;Z)Z

    .line 588
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p2}, Landroid/printservice/IPrintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/printservice/IPrintService;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/print/RemotePrintService;->-set1(Lcom/android/server/print/RemotePrintService;Landroid/printservice/IPrintService;)Landroid/printservice/IPrintService;

    .line 590
    :try_start_0
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    const/4 v5, 0x0

    invoke-interface {p2, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    :try_start_1
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get9(Lcom/android/server/print/RemotePrintService;)Landroid/printservice/IPrintService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v5}, Lcom/android/server/print/RemotePrintService;->-get10(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/printservice/IPrintService;->setClient(Landroid/printservice/IPrintServiceClient;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 603
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get12(Lcom/android/server/print/RemotePrintService;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get7(Lcom/android/server/print/RemotePrintService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 604
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-wrap2(Lcom/android/server/print/RemotePrintService;)V

    .line 607
    :cond_0
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get12(Lcom/android/server/print/RemotePrintService;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get5(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 608
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-object v5, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v5}, Lcom/android/server/print/RemotePrintService;->-get5(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/print/RemotePrintService;->-wrap8(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V

    .line 611
    :cond_1
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get12(Lcom/android/server/print/RemotePrintService;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get14(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 612
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get14(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 613
    .local v3, "trackedPrinterCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_3

    .line 614
    iget-object v5, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get14(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrinterId;

    invoke-static {v5, v4}, Lcom/android/server/print/RemotePrintService;->-wrap9(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    .line 613
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 584
    .end local v0    # "i":I
    .end local v3    # "trackedPrinterCount":I
    :cond_2
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get3(Lcom/android/server/print/RemotePrintService;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v5}, Lcom/android/server/print/RemotePrintService;->-get11(Lcom/android/server/print/RemotePrintService;)Landroid/content/ServiceConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 585
    return-void

    .line 591
    :catch_0
    move-exception v2

    .line 592
    .local v2, "re":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-wrap1(Lcom/android/server/print/RemotePrintService;)V

    .line 593
    return-void

    .line 597
    .end local v2    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 598
    .restart local v2    # "re":Landroid/os/RemoteException;
    const-string/jumbo v4, "RemotePrintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error setting client for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 599
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-wrap1(Lcom/android/server/print/RemotePrintService;)V

    .line 600
    return-void

    .line 618
    .end local v2    # "re":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get8(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 619
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get8(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 620
    .local v1, "pendingCommand":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 625
    .end local v1    # "pendingCommand":Ljava/lang/Runnable;
    :cond_4
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get7(Lcom/android/server/print/RemotePrintService;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get6(Lcom/android/server/print/RemotePrintService;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 628
    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4, v6}, Lcom/android/server/print/RemotePrintService;->-set2(Lcom/android/server/print/RemotePrintService;Z)Z

    .line 582
    return-void

    .line 626
    :cond_6
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-wrap0(Lcom/android/server/print/RemotePrintService;)V

    goto :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/print/RemotePrintService;->-set0(Lcom/android/server/print/RemotePrintService;Z)Z

    .line 632
    return-void
.end method
