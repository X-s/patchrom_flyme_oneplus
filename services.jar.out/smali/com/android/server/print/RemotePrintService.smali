.class final Lcom/android/server/print/RemotePrintService;
.super Ljava/lang/Object;
.source "RemotePrintService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/print/RemotePrintService$MyHandler;,
        Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;,
        Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;,
        Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "RemotePrintService"


# instance fields
.field private mBinding:Z

.field private final mCallbacks:Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mDiscoveryPriorityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mHasActivePrintJobs:Z

.field private mHasPrinterDiscoverySession:Z

.field private final mIntent:Landroid/content/Intent;

.field private final mPendingCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mPrintService:Landroid/printservice/IPrintService;

.field private final mPrintServiceClient:Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceDied:Z

.field private final mSpooler:Lcom/android/server/print/RemotePrintSpooler;

.field private mTrackedPrinterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/server/print/RemotePrintService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mCallbacks:Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;
    .locals 1

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintServiceClient:Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/print/RemotePrintService;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/print/RemotePrintService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/print/RemotePrintService;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/print/RemotePrintService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/print/RemotePrintService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mDestroyed:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/print/RemotePrintService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/print/RemotePrintService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/print/RemotePrintService;)Landroid/printservice/IPrintService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/print/RemotePrintService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/print/RemotePrintService;Landroid/printservice/IPrintService;)Landroid/printservice/IPrintService;
    .locals 0

    iput-object p1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/print/RemotePrintService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/print/RemotePrintService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/print/RemotePrintService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->handleBinderDied()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/android/server/print/RemotePrintService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->handleStopPrinterDiscovery()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    .locals 0
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleStopPrinterStateTracking(Landroid/print/PrinterId;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V
    .locals 0
    .param p1, "printerIds"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleValidatePrinters(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/print/RemotePrintService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->handleCreatePrinterDiscoverySession()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/print/RemotePrintService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->handleDestroyPrinterDiscoverySession()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/print/RemotePrintService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->handleDestroy()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/print/RemotePrintService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->handleOnAllPrintJobsHandled()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;)V
    .locals 0
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleOnPrintJobQueued(Landroid/print/PrintJobInfo;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;)V
    .locals 0
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleRequestCancelPrintJob(Landroid/print/PrintJobInfo;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V
    .locals 0
    .param p1, "priorityList"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleStartPrinterDiscovery(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    .locals 0
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleStartPrinterStateTracking(Landroid/print/PrinterId;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/print/RemotePrintSpooler;Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "spooler"    # Lcom/android/server/print/RemotePrintSpooler;
    .param p5, "callbacks"    # Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    .line 77
    new-instance v0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;-><init>(Lcom/android/server/print/RemotePrintService;Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 116
    iput-object p1, p0, Lcom/android/server/print/RemotePrintService;->mContext:Landroid/content/Context;

    .line 117
    iput-object p5, p0, Lcom/android/server/print/RemotePrintService;->mCallbacks:Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

    .line 118
    iput-object p2, p0, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    .line 119
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mIntent:Landroid/content/Intent;

    .line 120
    iput p3, p0, Lcom/android/server/print/RemotePrintService;->mUserId:I

    .line 121
    iput-object p4, p0, Lcom/android/server/print/RemotePrintService;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    .line 122
    new-instance v0, Lcom/android/server/print/RemotePrintService$MyHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/print/RemotePrintService$MyHandler;-><init>(Lcom/android/server/print/RemotePrintService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mHandler:Landroid/os/Handler;

    .line 123
    new-instance v0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;

    invoke-direct {v0, p0}, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;-><init>(Lcom/android/server/print/RemotePrintService;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintServiceClient:Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;

    .line 115
    return-void
.end method

.method private ensureBound()V
    .locals 5

    .prologue
    .line 537
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    if-eqz v0, :cond_1

    .line 538
    :cond_0
    return-void

    .line 543
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    .line 544
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/print/RemotePrintService;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 546
    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/server/print/RemotePrintService;->mUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 545
    const v4, 0x4000001

    .line 544
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 536
    return-void
.end method

.method private ensureUnbound()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 550
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    if-eqz v1, :cond_2

    .line 556
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    .line 557
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 558
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    .line 559
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    .line 560
    iput-object v4, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    .line 561
    iput-object v4, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    .line 562
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 564
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/printservice/IPrintService;->setClient(Landroid/printservice/IPrintServiceClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    :goto_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v1}, Landroid/printservice/IPrintService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 569
    iput-object v4, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    .line 570
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/print/RemotePrintService;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 549
    :cond_1
    return-void

    .line 551
    :cond_2
    return-void

    .line 565
    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private handleBinderDied()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 165
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v0}, Landroid/printservice/IPrintService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 169
    :cond_0
    iput-object v2, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    .line 171
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mCallbacks:Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

    invoke-interface {v0, p0}, Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;->onServiceDied(Lcom/android/server/print/RemotePrintService;)V

    .line 162
    return-void
.end method

.method private handleCreatePrinterDiscoverySession()V
    .locals 3

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->throwIfDestroyed()V

    .line 268
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    .line 269
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 271
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v2, Lcom/android/server/print/RemotePrintService$4;

    invoke-direct {v2, p0}, Lcom/android/server/print/RemotePrintService$4;-><init>(Lcom/android/server/print/RemotePrintService;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    :goto_0
    return-void

    .line 282
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v1}, Landroid/printservice/IPrintService;->createPrinterDiscoverySession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "RemotePrintService"

    const-string/jumbo v2, "Error creating printer discovery session."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleDestroy()V
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->throwIfDestroyed()V

    .line 138
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->stopTrackingAllPrinters()V

    .line 141
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->handleStopPrinterDiscovery()V

    .line 146
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    if-eqz v0, :cond_1

    .line 147
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->handleDestroyPrinterDiscoverySession()V

    .line 151
    :cond_1
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mDestroyed:Z

    .line 134
    return-void
.end method

.method private handleDestroyPrinterDiscoverySession()V
    .locals 3

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->throwIfDestroyed()V

    .line 295
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    .line 296
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v1

    if-nez v1, :cond_3

    .line 299
    iget-boolean v1, p0, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    if-eqz v1, :cond_2

    .line 303
    :cond_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 304
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v2, Lcom/android/server/print/RemotePrintService$5;

    invoke-direct {v2, p0}, Lcom/android/server/print/RemotePrintService$5;-><init>(Lcom/android/server/print/RemotePrintService;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_1
    :goto_0
    return-void

    .line 300
    :cond_2
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    .line 301
    return-void

    .line 315
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v1}, Landroid/printservice/IPrintService;->destroyPrinterDiscoverySession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    if-nez v1, :cond_1

    .line 322
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "RemotePrintService"

    const-string/jumbo v2, "Error destroying printer dicovery session."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private handleOnAllPrintJobsHandled()V
    .locals 2

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->throwIfDestroyed()V

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    .line 181
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_3

    .line 184
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    if-eqz v0, :cond_2

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 189
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v1, Lcom/android/server/print/RemotePrintService$1;

    invoke-direct {v1, p0}, Lcom/android/server/print/RemotePrintService$1;-><init>(Lcom/android/server/print/RemotePrintService;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_1
    :goto_0
    return-void

    .line 185
    :cond_2
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    .line 186
    return-void

    .line 201
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    if-nez v0, :cond_1

    .line 202
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    goto :goto_0
.end method

.method private handleOnPrintJobQueued(Landroid/print/PrintJobInfo;)V
    .locals 3
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->throwIfDestroyed()V

    .line 241
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    .line 242
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 244
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v2, Lcom/android/server/print/RemotePrintService$3;

    invoke-direct {v2, p0, p1}, Lcom/android/server/print/RemotePrintService$3;-><init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    :goto_0
    return-void

    .line 255
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v1, p1}, Landroid/printservice/IPrintService;->onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "RemotePrintService"

    const-string/jumbo v2, "Error announcing queued pring job."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleRequestCancelPrintJob(Landroid/print/PrintJobInfo;)V
    .locals 3
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->throwIfDestroyed()V

    .line 214
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 216
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v2, Lcom/android/server/print/RemotePrintService$2;

    invoke-direct {v2, p0, p1}, Lcom/android/server/print/RemotePrintService$2;-><init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    :goto_0
    return-void

    .line 227
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v1, p1}, Landroid/printservice/IPrintService;->requestCancelPrintJob(Landroid/print/PrintJobInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "RemotePrintService"

    const-string/jumbo v2, "Error canceling a pring job."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleStartPrinterDiscovery(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 333
    .local p1, "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->throwIfDestroyed()V

    .line 335
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    .line 336
    if-eqz p1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 339
    :cond_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v1

    if-nez v1, :cond_1

    .line 340
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 341
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v2, Lcom/android/server/print/RemotePrintService$6;

    invoke-direct {v2, p0, p1}, Lcom/android/server/print/RemotePrintService$6;-><init>(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    :goto_0
    return-void

    .line 352
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v1, p1}, Landroid/printservice/IPrintService;->startPrinterDiscovery(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "RemotePrintService"

    const-string/jumbo v2, "Error starting printer dicovery."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleStartPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 3
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->throwIfDestroyed()V

    .line 442
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 443
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    .line 445
    :cond_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v1

    if-nez v1, :cond_1

    .line 447
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 448
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v2, Lcom/android/server/print/RemotePrintService$9;

    invoke-direct {v2, p0, p1}, Lcom/android/server/print/RemotePrintService$9;-><init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    :goto_0
    return-void

    .line 459
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v1, p1}, Landroid/printservice/IPrintService;->startPrinterStateTracking(Landroid/print/PrinterId;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "RemotePrintService"

    const-string/jumbo v2, "Error requesting start printer tracking."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleStopPrinterDiscovery()V
    .locals 3

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->throwIfDestroyed()V

    .line 366
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    .line 367
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    .line 368
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 369
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v2, Lcom/android/server/print/RemotePrintService$7;

    invoke-direct {v2, p0}, Lcom/android/server/print/RemotePrintService$7;-><init>(Lcom/android/server/print/RemotePrintService;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    :goto_0
    return-void

    .line 381
    :cond_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->stopTrackingAllPrinters()V

    .line 384
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v1}, Landroid/printservice/IPrintService;->stopPrinterDiscovery()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "RemotePrintService"

    const-string/jumbo v2, "Error stopping printer discovery."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleStopPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 3
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .prologue
    const/4 v2, 0x0

    .line 472
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->throwIfDestroyed()V

    .line 474
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 477
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    iput-object v2, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    .line 480
    :cond_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v1

    if-nez v1, :cond_2

    .line 481
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 482
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v2, Lcom/android/server/print/RemotePrintService$10;

    invoke-direct {v2, p0, p1}, Lcom/android/server/print/RemotePrintService$10;-><init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    :goto_0
    return-void

    .line 475
    :cond_1
    return-void

    .line 493
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v1, p1}, Landroid/printservice/IPrintService;->stopPrinterStateTracking(Landroid/print/PrinterId;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "RemotePrintService"

    const-string/jumbo v2, "Error requesting stop printer tracking."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleValidatePrinters(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 397
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->throwIfDestroyed()V

    .line 398
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    .line 399
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 400
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v2, Lcom/android/server/print/RemotePrintService$8;

    invoke-direct {v2, p0, p1}, Lcom/android/server/print/RemotePrintService$8;-><init>(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    :goto_0
    return-void

    .line 411
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v1, p1}, Landroid/printservice/IPrintService;->validatePrinters(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "RemotePrintService"

    const-string/jumbo v2, "Error requesting printers validation."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isBound()Z
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopTrackingAllPrinters()V
    .locals 5

    .prologue
    .line 501
    iget-object v3, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 502
    return-void

    .line 504
    :cond_0
    iget-object v3, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 505
    .local v2, "trackedPrinterCount":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 506
    iget-object v3, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrinterId;

    .line 507
    .local v1, "printerId":Landroid/print/PrinterId;
    invoke-virtual {v1}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 508
    invoke-direct {p0, v1}, Lcom/android/server/print/RemotePrintService;->handleStopPrinterStateTracking(Landroid/print/PrinterId;)V

    .line 505
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 500
    .end local v1    # "printerId":Landroid/print/PrinterId;
    :cond_2
    return-void
.end method

.method private throwIfDestroyed()V
    .locals 2

    .prologue
    .line 575
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 576
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot interact with a destroyed service"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 158
    return-void
.end method

.method public createPrinterDiscoverySession()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 262
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 130
    return-void
.end method

.method public destroyPrinterDiscoverySession()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 289
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 514
    const-string/jumbo v0, "  "

    .line 515
    .local v0, "tab":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "service:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 516
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "componentName="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    .line 517
    iget-object v2, p0, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    .line 516
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 518
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "destroyed="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    .line 519
    iget-boolean v2, p0, Lcom/android/server/print/RemotePrintService;->mDestroyed:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 518
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 520
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "bound="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    .line 521
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 520
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 522
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "hasDicoverySession="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    .line 523
    iget-boolean v2, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 522
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 524
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "hasActivePrintJobs="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    .line 525
    iget-boolean v2, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 524
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 526
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "isDiscoveringPrinters="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    .line 527
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 526
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 528
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "trackedPrinters="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    .line 529
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 528
    :goto_1
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 513
    return-void

    .line 527
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 529
    :cond_1
    const-string/jumbo v1, "null"

    goto :goto_1
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public onAllPrintJobsHandled()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 174
    return-void
.end method

.method public onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    .locals 2
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 234
    return-void
.end method

.method public onRequestCancelPrintJob(Landroid/print/PrintJobInfo;)V
    .locals 2
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 207
    return-void
.end method

.method public requestCustomPrinterIcon(Landroid/print/PrinterId;)V
    .locals 4
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .prologue
    .line 431
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v1, p1}, Landroid/printservice/IPrintService;->requestCustomPrinterIcon(Landroid/print/PrinterId;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "RemotePrintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error requesting icon for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startPrinterDiscovery(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 328
    .local p1, "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 327
    return-void
.end method

.method public startPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 2
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 418
    return-void
.end method

.method public stopPrinterDiscovery()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 359
    return-void
.end method

.method public stopPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 2
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 466
    return-void
.end method

.method public validatePrinters(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 392
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 391
    return-void
.end method
