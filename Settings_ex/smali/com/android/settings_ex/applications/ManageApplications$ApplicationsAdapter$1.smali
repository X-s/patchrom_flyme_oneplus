.class Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter$1;
.super Landroid/widget/Filter;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;)V
    .locals 0

    .prologue
    .line 756
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter$1;->this$0:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 4
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 759
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter$1;->this$0:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter$1;->this$0:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->access$500(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 760
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 761
    .local v1, "fr":Landroid/widget/Filter$FilterResults;
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 762
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 763
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 769
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter$1;->this$0:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    iput-object p1, v0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    .line 770
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter$1;->this$0:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    # setter for: Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;
    invoke-static {v1, v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->access$602(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 771
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter$1;->this$0:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 772
    return-void
.end method
