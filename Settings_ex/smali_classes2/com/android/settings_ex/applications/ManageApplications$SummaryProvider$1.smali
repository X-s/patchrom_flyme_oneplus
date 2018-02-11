.class Lcom/android/settings_ex/applications/ManageApplications$SummaryProvider$1;
.super Lcom/android/settings_ex/applications/AppCounter;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/ManageApplications$SummaryProvider;->setListening(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/applications/ManageApplications$SummaryProvider;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/ManageApplications$SummaryProvider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/applications/ManageApplications$SummaryProvider;
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1544
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications$SummaryProvider$1;->this$1:Lcom/android/settings_ex/applications/ManageApplications$SummaryProvider;

    invoke-direct {p0, p2}, Lcom/android/settings_ex/applications/AppCounter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected includeInCount(Landroid/content/pm/ApplicationInfo;)Z
    .locals 8
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1553
    iget v5, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_0

    .line 1554
    return v3

    .line 1555
    :cond_0
    iget v5, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_1

    .line 1556
    return v3

    .line 1558
    :cond_1
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1559
    const-string/jumbo v6, "android.intent.category.LAUNCHER"

    .line 1558
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 1560
    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1558
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1561
    .local v1, "launchIntent":Landroid/content/Intent;
    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1562
    .local v2, "userId":I
    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications$SummaryProvider$1;->mPm:Landroid/content/pm/PackageManager;

    .line 1564
    const v6, 0xc0200

    .line 1562
    invoke-virtual {v5, v1, v6, v2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 1568
    .local v0, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_2

    :goto_0
    return v3

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method protected onCountComplete(I)V
    .locals 6
    .param p1, "num"    # I

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$SummaryProvider$1;->this$1:Lcom/android/settings_ex/applications/ManageApplications$SummaryProvider;

    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications$SummaryProvider;->-get1(Lcom/android/settings_ex/applications/ManageApplications$SummaryProvider;)Lcom/android/settings_ex/dashboard/SummaryLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$SummaryProvider$1;->this$1:Lcom/android/settings_ex/applications/ManageApplications$SummaryProvider;

    .line 1548
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$SummaryProvider$1;->this$1:Lcom/android/settings_ex/applications/ManageApplications$SummaryProvider;

    invoke-static {v2}, Lcom/android/settings_ex/applications/ManageApplications$SummaryProvider;->-get0(Lcom/android/settings_ex/applications/ManageApplications$SummaryProvider;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0e0fde

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1547
    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/dashboard/SummaryLoader;->setSummary(Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 1546
    return-void
.end method
