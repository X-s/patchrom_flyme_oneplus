.class Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FilterSpinnerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFilterOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/applications/ManageApplications;)V
    .locals 2
    .param p1, "manageApplications"    # Lcom/android/settings_ex/applications/ManageApplications;

    .prologue
    .line 657
    invoke-virtual {p1}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f04005b

    invoke-direct {p0, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 654
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    .line 658
    const v0, 0x1090009

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->setDropDownViewResource(I)V

    .line 659
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    .line 660
    return-void
.end method

.method private getFilterString(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "filter"    # I

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    sget-object v1, Lcom/android/settings_ex/applications/ManageApplications;->FILTER_LABELS:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/ManageApplications;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public disableFilter(I)V
    .locals 6
    .param p1, "filter"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 692
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 695
    :cond_1
    sget-boolean v0, Lcom/android/settings_ex/applications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 696
    const-string v0, "ManageApplications"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disabling filter "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 698
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$300(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    if-le v0, v4, :cond_4

    move v0, v3

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 699
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->notifyDataSetChanged()V

    .line 700
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    iget v0, v0, Lcom/android/settings_ex/applications/ManageApplications;->mFilter:I

    if-ne v0, p1, :cond_0

    .line 701
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 702
    sget-boolean v0, Lcom/android/settings_ex/applications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 703
    const-string v0, "ManageApplications"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Auto selecting filter "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$400(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 705
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    const-wide/16 v4, 0x0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/applications/ManageApplications;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 698
    :cond_4
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public enableFilter(I)V
    .locals 6
    .param p1, "filter"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 675
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 677
    :cond_1
    sget-boolean v0, Lcom/android/settings_ex/applications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 678
    const-string v0, "ManageApplications"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enabling filter "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 681
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$300(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v5, :cond_4

    move v0, v3

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 682
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->notifyDataSetChanged()V

    .line 683
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 684
    sget-boolean v0, Lcom/android/settings_ex/applications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 685
    const-string v0, "ManageApplications"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Auto selecting filter "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$400(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 687
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    const-wide/16 v4, 0x0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/applications/ManageApplications;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 681
    :cond_4
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFilter(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->getFilterString(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 648
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->getItem(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public setFilterEnabled(IZ)V
    .locals 0
    .param p1, "filter"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 667
    if-eqz p2, :cond_0

    .line 668
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 672
    :goto_0
    return-void

    .line 670
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->disableFilter(I)V

    goto :goto_0
.end method
