.class final Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsLoader;
.super Landroid/content/AsyncTaskLoader;
.source "PrintSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/print/PrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrintJobsLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/print/PrintJobInfo;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PrintJobsLoader"


# instance fields
.field private mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

.field private mPrintJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrintManager:Landroid/print/PrintManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsLoader;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsLoader;->onForceLoad()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 403
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobs:Ljava/util/List;

    .line 405
    const-string/jumbo v0, "print"

    .line 404
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    .line 406
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 404
    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->getGlobalPrintManagerForUser(I)Landroid/print/PrintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsLoader;->mPrintManager:Landroid/print/PrintManager;

    .line 402
    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "printJobs"    # Ljava/lang/Object;

    .prologue
    .line 410
    check-cast p1, Ljava/util/List;

    .end local p1    # "printJobs":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 411
    .local p1, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 410
    :cond_0
    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 470
    const/4 v3, 0x0

    .line 471
    .local v3, "printJobInfos":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    iget-object v5, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsLoader;->mPrintManager:Landroid/print/PrintManager;

    invoke-virtual {v5}, Landroid/print/PrintManager;->getPrintJobs()Ljava/util/List;

    move-result-object v4

    .line 472
    .local v4, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJob;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 473
    .local v2, "printJobCount":I
    const/4 v0, 0x0

    .end local v3    # "printJobInfos":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 474
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/print/PrintJob;

    invoke-virtual {v5}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v1

    .line 475
    .local v1, "printJob":Landroid/print/PrintJobInfo;
    invoke-static {v1}, Lcom/android/settings_ex/print/PrintSettingsFragment;->-wrap1(Landroid/print/PrintJobInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 476
    if-nez v3, :cond_0

    .line 477
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 479
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 482
    .end local v1    # "printJob":Landroid/print/PrintJobInfo;
    :cond_2
    return-object v3
.end method

.method protected onReset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 457
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsLoader;->onStopLoading()V

    .line 459
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 461
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsLoader;->mPrintManager:Landroid/print/PrintManager;

    .line 463
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

    .line 462
    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->removePrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    .line 464
    iput-object v2, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

    .line 452
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobs:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsLoader;->deliverResult(Ljava/util/List;)V

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

    if-nez v0, :cond_1

    .line 427
    new-instance v0, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsLoader$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsLoader$1;-><init>(Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsLoader;)V

    iput-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

    .line 433
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsLoader;->mPrintManager:Landroid/print/PrintManager;

    .line 434
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

    .line 433
    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->addPrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 438
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsLoader;->onForceLoad()V

    .line 417
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsLoader;->onCancelLoad()Z

    .line 443
    return-void
.end method
