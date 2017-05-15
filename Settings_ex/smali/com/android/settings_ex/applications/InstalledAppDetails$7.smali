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
    .line 1029
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

    .line 1032
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$7;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-virtual {v6}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1066
    :cond_0
    :goto_0
    return-void

    .line 1035
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$7;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    const/4 v7, 0x0

    # setter for: Lcom/android/settings_ex/applications/InstalledAppDetails;->mPermissionReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v6, v7}, Lcom/android/settings_ex/applications/InstalledAppDetails;->access$1202(Lcom/android/settings_ex/applications/InstalledAppDetails;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 1036
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$7;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-virtual {v6}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1037
    .local v3, "res":Landroid/content/res/Resources;
    const/4 v4, 0x0

    .line 1038
    .local v4, "summary":Ljava/lang/CharSequence;
    if-eqz p1, :cond_2

    .line 1039
    aget v5, p1, v8

    .line 1040
    .local v5, "totalCount":I
    const/4 v6, 0x2

    aget v0, p1, v6

    .line 1042
    .local v0, "additionalCounts":I
    if-nez v5, :cond_3

    .line 1043
    const v6, 0x7f0c0ce3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1062
    .end local v0    # "additionalCounts":I
    .end local v5    # "totalCount":I
    :cond_2
    :goto_1
    sget-boolean v1, Landroid/os/Build$VERSION;->IS_CTA_BUILD:Z

    .line 1063
    .local v1, "isCtaVersion":Z
    if-nez v1, :cond_0

    .line 1064
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$7;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    # getter for: Lcom/android/settings_ex/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/preference/Preference;
    invoke-static {v6}, Lcom/android/settings_ex/applications/InstalledAppDetails;->access$1300(Lcom/android/settings_ex/applications/InstalledAppDetails;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1046
    .end local v1    # "isCtaVersion":Z
    .restart local v0    # "additionalCounts":I
    .restart local v5    # "totalCount":I
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1047
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    if-lez v0, :cond_4

    .line 1049
    const v6, 0x7f130010

    new-array v7, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v0, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1053
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_5

    .line 1054
    const v6, 0x7f0c0ce2

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1057
    :cond_5
    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method
