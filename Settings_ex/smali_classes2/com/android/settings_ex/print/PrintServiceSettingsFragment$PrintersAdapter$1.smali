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
    .param p1, "this$1"    # Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 10
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v9, 0x0

    .line 477
    iget-object v7, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-static {v7}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->-get1(Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 478
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    monitor-exit v8

    .line 479
    return-object v9

    .line 481
    :cond_0
    :try_start_1
    new-instance v6, Landroid/widget/Filter$FilterResults;

    invoke-direct {v6}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 482
    .local v6, "results":Landroid/widget/Filter$FilterResults;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 483
    .local v1, "filteredPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, "constraintLowerCase":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-static {v7}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->-get2(Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 485
    .local v5, "printerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_2

    .line 486
    iget-object v7, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-static {v7}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->-get2(Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrinterInfo;

    .line 487
    .local v4, "printer":Landroid/print/PrinterInfo;
    invoke-virtual {v4}, Landroid/print/PrinterInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 488
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 489
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 492
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "printer":Landroid/print/PrinterInfo;
    :cond_2
    iput-object v1, v6, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 493
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    iput v7, v6, Landroid/widget/Filter$FilterResults;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v8

    .line 494
    return-object v6

    .line 477
    .end local v0    # "constraintLowerCase":Ljava/lang/String;
    .end local v1    # "filteredPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    .end local v2    # "i":I
    .end local v5    # "printerCount":I
    .end local v6    # "results":Landroid/widget/Filter$FilterResults;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 501
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-static {v1}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->-get1(Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 502
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-static {v1, p1}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->-set0(Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 503
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-static {v1}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->-get0(Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 504
    if-nez p2, :cond_0

    .line 505
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-static {v1}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->-get0(Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-static {v3}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->-get2(Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 511
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->notifyDataSetChanged()V

    .line 500
    return-void

    .line 507
    :cond_0
    :try_start_1
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 508
    .local v0, "printers":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-static {v1}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->-get0(Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 501
    .end local v0    # "printers":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
