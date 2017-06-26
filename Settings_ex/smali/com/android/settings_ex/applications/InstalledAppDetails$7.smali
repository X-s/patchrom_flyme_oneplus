.class Lcom/android/settings_ex/applications/InstalledAppDetails$7;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Lcom/android/settings_ex/applications/PermissionsSummaryHelper$PermissionsResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V
    .locals 0

    .prologue
    .line 951
    iput-object p1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$7;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionSummaryResult([I[Ljava/lang/CharSequence;)V
    .locals 10
    .param p1, "counts"    # [I
    .param p2, "groupLabels"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v8, 0x1

    .line 954
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$7;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-virtual {v6}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_0

    .line 986
    :goto_0
    return-void

    .line 957
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$7;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    const/4 v7, 0x0

    # setter for: Lcom/android/settings_ex/applications/InstalledAppDetails;->mPermissionReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v6, v7}, Lcom/android/settings_ex/applications/InstalledAppDetails;->access$1202(Lcom/android/settings_ex/applications/InstalledAppDetails;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 958
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$7;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-virtual {v6}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 959
    .local v3, "res":Landroid/content/res/Resources;
    const/4 v4, 0x0

    .line 960
    .local v4, "summary":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 961
    .local v1, "enabled":Z
    if-eqz p1, :cond_1

    .line 962
    aget v5, p1, v8

    .line 963
    .local v5, "totalCount":I
    const/4 v6, 0x2

    aget v0, p1, v6

    .line 965
    .local v0, "additionalCounts":I
    if-nez v5, :cond_2

    .line 966
    const v6, 0x7f0c0d11

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 985
    .end local v0    # "additionalCounts":I
    .end local v5    # "totalCount":I
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$7;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    # getter for: Lcom/android/settings_ex/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/preference/Preference;
    invoke-static {v6}, Lcom/android/settings_ex/applications/InstalledAppDetails;->access$1300(Lcom/android/settings_ex/applications/InstalledAppDetails;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 968
    .restart local v0    # "additionalCounts":I
    .restart local v5    # "totalCount":I
    :cond_2
    const/4 v1, 0x1

    .line 970
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 971
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    if-lez v0, :cond_3

    .line 973
    const v6, 0x7f13000e

    new-array v7, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v0, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 976
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_4

    .line 977
    const v6, 0x7f0c0d10

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 979
    :cond_4
    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method
