.class public Lcom/android/settings_ex/UsageStatsActivity;
.super Landroid/app/Activity;
.source "UsageStatsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/UsageStatsActivity$AppNameComparator;,
        Lcom/android/settings_ex/UsageStatsActivity$AppViewHolder;,
        Lcom/android/settings_ex/UsageStatsActivity$LastTimeUsedComparator;,
        Lcom/android/settings_ex/UsageStatsActivity$UsageStatsAdapter;,
        Lcom/android/settings_ex/UsageStatsActivity$UsageTimeComparator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UsageStatsActivity"

.field private static final localLOGV:Z


# instance fields
.field private mAdapter:Lcom/android/settings_ex/UsageStatsActivity$UsageStatsAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mUsageStatsManager:Landroid/app/usage/UsageStatsManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/UsageStatsActivity;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/UsageStatsActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/UsageStatsActivity;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/UsageStatsActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/UsageStatsActivity;)Landroid/app/usage/UsageStatsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/UsageStatsActivity;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 231
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 232
    const v2, 0x7f0401f4

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/UsageStatsActivity;->setContentView(I)V

    .line 234
    const-string/jumbo v2, "usagestats"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/UsageStatsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManager;

    iput-object v2, p0, Lcom/android/settings_ex/UsageStatsActivity;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    .line 235
    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/UsageStatsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/settings_ex/UsageStatsActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 236
    invoke-virtual {p0}, Lcom/android/settings_ex/UsageStatsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/UsageStatsActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 238
    const v2, 0x7f11033e

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/UsageStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 239
    .local v1, "typeSpinner":Landroid/widget/Spinner;
    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 241
    const v2, 0x7f11033f

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/UsageStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 242
    .local v0, "listView":Landroid/widget/ListView;
    new-instance v2, Lcom/android/settings_ex/UsageStatsActivity$UsageStatsAdapter;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/UsageStatsActivity$UsageStatsAdapter;-><init>(Lcom/android/settings_ex/UsageStatsActivity;)V

    iput-object v2, p0, Lcom/android/settings_ex/UsageStatsActivity;->mAdapter:Lcom/android/settings_ex/UsageStatsActivity$UsageStatsAdapter;

    .line 243
    iget-object v2, p0, Lcom/android/settings_ex/UsageStatsActivity;->mAdapter:Lcom/android/settings_ex/UsageStatsActivity$UsageStatsAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 230
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings_ex/UsageStatsActivity;->mAdapter:Lcom/android/settings_ex/UsageStatsActivity$UsageStatsAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings_ex/UsageStatsActivity$UsageStatsAdapter;->sortList(I)V

    .line 247
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
