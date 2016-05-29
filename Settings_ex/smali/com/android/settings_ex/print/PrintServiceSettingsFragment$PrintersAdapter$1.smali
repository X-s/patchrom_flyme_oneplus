.class Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter$1;
.super Landroid/widget/Filter;
.source "PrintServiceSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;)V
    .locals 0

    .prologue
    .line 496
    iput-object p1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 8
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 499
    iget-object v6, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    # getter for: Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->access$1000(Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 500
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 501
    const/4 v5, 0x0

    monitor-exit v7

    .line 515
    :goto_0
    return-object v5

    .line 503
    :cond_0
    new-instance v5, Landroid/widget/Filter$FilterResults;

    invoke-direct {v5}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 504
    .local v5, "results":Landroid/widget/Filter$FilterResults;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 505
    .local v1, "filteredPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "constraintLowerCase":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    # getter for: Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->mPrinters:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->access$1100(Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 507
    .local v4, "printerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 508
    iget-object v6, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    # getter for: Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->mPrinters:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->access$1100(Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrinterInfo;

    .line 509
    .local v3, "printer":Landroid/print/PrinterInfo;
    invoke-virtual {v3}, Landroid/print/PrinterInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 510
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 513
    .end local v3    # "printer":Landroid/print/PrinterInfo;
    :cond_2
    iput-object v1, v5, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 514
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    iput v6, v5, Landroid/widget/Filter$FilterResults;->count:I

    .line 515
    monitor-exit v7

    goto :goto_0

    .line 516
    .end local v0    # "constraintLowerCase":Ljava/lang/String;
    .end local v1    # "filteredPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    .end local v2    # "i":I
    .end local v4    # "printerCount":I
    .end local v5    # "results":Landroid/widget/Filter$FilterResults;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 522
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    # getter for: Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->access$1000(Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 523
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    # setter for: Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->mLastSearchString:Ljava/lang/CharSequence;
    invoke-static {v1, p1}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->access$1202(Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 524
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    # getter for: Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->mFilteredPrinters:Ljava/util/List;
    invoke-static {v1}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->access$1300(Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 525
    if-nez p2, :cond_0

    .line 526
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    # getter for: Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->mFilteredPrinters:Ljava/util/List;
    invoke-static {v1}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->access$1300(Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    # getter for: Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->mPrinters:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->access$1100(Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 531
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->notifyDataSetChanged()V

    .line 533
    return-void

    .line 528
    :cond_0
    :try_start_1
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 529
    .local v0, "printers":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    # getter for: Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->mFilteredPrinters:Ljava/util/List;
    invoke-static {v1}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->access$1300(Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 531
    .end local v0    # "printers":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
