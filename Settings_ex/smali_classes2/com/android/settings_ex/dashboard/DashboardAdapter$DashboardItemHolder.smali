.class public Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "DashboardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/dashboard/DashboardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DashboardItemHolder"
.end annotation


# instance fields
.field public final divider:Landroid/view/View;

.field public final icon:Landroid/widget/ImageView;

.field public newverison:Landroid/widget/ImageView;

.field public final summary:Landroid/widget/TextView;

.field public final sw:Landroid/widget/Switch;

.field public final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 4
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "hasSwitch"    # Z

    .prologue
    const v3, 0x7f1100ea

    const v2, 0x1020016

    const v1, 0x1020010

    const v0, 0x1020006

    .line 605
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 606
    if-nez p2, :cond_0

    .line 607
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->icon:Landroid/widget/ImageView;

    .line 608
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    .line 609
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    .line 611
    const v0, 0x7f110113

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->newverison:Landroid/widget/ImageView;

    .line 612
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->divider:Landroid/view/View;

    .line 614
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->sw:Landroid/widget/Switch;

    .line 604
    :goto_0
    return-void

    .line 616
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->icon:Landroid/widget/ImageView;

    .line 617
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    .line 618
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    .line 620
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->divider:Landroid/view/View;

    .line 622
    const v0, 0x7f1100a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->sw:Landroid/widget/Switch;

    goto :goto_0
.end method
