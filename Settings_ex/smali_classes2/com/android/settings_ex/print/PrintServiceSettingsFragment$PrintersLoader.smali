.class Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersLoader;
.super Landroid/content/Loader;
.source "PrintServiceSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/print/PrintServiceSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrintersLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/Loader",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/print/PrinterInfo;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PrintersLoader"


# instance fields
.field private mDiscoverySession:Landroid/print/PrinterDiscoverySession;

.field private final mPrinters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/print/PrinterId;",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersLoader;)Landroid/print/PrinterDiscoverySession;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 661
    invoke-direct {p0, p1}, Landroid/content/Loader;-><init>(Landroid/content/Context;)V

    .line 656
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 655
    iput-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersLoader;->mPrinters:Ljava/util/Map;

    .line 660
    return-void
.end method

.method private cancelInternal()Z
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    invoke-virtual {v0}, Landroid/print/PrinterDiscoverySession;->isPrinterDiscoveryStarted()Z

    move-result v0

    .line 731
    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    invoke-virtual {v0}, Landroid/print/PrinterDiscoverySession;->stopPrinterDiscovery()V

    .line 734
    const/4 v0, 0x1

    return v0

    .line 736
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private loadInternal()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 740
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    if-nez v1, :cond_0

    .line 741
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 742
    const-string/jumbo v2, "print"

    .line 741
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    .line 743
    .local v0, "printManager":Landroid/print/PrintManager;
    invoke-virtual {v0}, Landroid/print/PrintManager;->createPrinterDiscoverySession()Landroid/print/PrinterDiscoverySession;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    .line 744
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    new-instance v2, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersLoader$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersLoader$1;-><init>(Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersLoader;)V

    invoke-virtual {v1, v2}, Landroid/print/PrinterDiscoverySession;->setOnPrintersChangeListener(Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;)V

    .line 752
    .end local v0    # "printManager":Landroid/print/PrintManager;
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    invoke-virtual {v1, v3}, Landroid/print/PrinterDiscoverySession;->startPrinterDiscovery(Ljava/util/List;)V

    .line 739
    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "printers"    # Ljava/lang/Object;

    .prologue
    .line 665
    check-cast p1, Ljava/util/List;

    .end local p1    # "printers":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 666
    .local p1, "printers":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    invoke-super {p0, p1}, Landroid/content/Loader;->deliverResult(Ljava/lang/Object;)V

    .line 665
    :cond_0
    return-void
.end method

.method protected onAbandon()V
    .locals 0

    .prologue
    .line 727
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersLoader;->onStopLoading()V

    .line 723
    return-void
.end method

.method protected onCancelLoad()Z
    .locals 1

    .prologue
    .line 706
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersLoader;->cancelInternal()Z

    move-result v0

    return v0
.end method

.method protected onForceLoad()V
    .locals 0

    .prologue
    .line 698
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersLoader;->loadInternal()V

    .line 694
    return-void
.end method

.method protected onReset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 714
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersLoader;->onStopLoading()V

    .line 715
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersLoader;->mPrinters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 716
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    invoke-virtual {v0}, Landroid/print/PrinterDiscoverySession;->destroy()V

    .line 718
    iput-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    .line 710
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersLoader;->mPrinters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 679
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersLoader;->mPrinters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersLoader;->deliverResult(Ljava/util/List;)V

    .line 682
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersLoader;->onForceLoad()V

    .line 672
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 690
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersLoader;->onCancelLoad()Z

    .line 686
    return-void
.end method
