.class Lcom/android/settings_ex/dashboard/DashboardAdapter$3;
.super Ljava/lang/Object;
.source "DashboardAdapter.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/dashboard/DashboardAdapter;->showRemoveOption(Landroid/view/View;Lcom/android/settings_exlib/drawer/Tile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/dashboard/DashboardAdapter;

.field final synthetic val$suggestion:Lcom/android/settings_exlib/drawer/Tile;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/dashboard/DashboardAdapter;Lcom/android/settings_exlib/drawer/Tile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/dashboard/DashboardAdapter;
    .param p2, "val$suggestion"    # Lcom/android/settings_exlib/drawer/Tile;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter$3;->this$0:Lcom/android/settings_ex/dashboard/DashboardAdapter;

    iput-object p2, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter$3;->val$suggestion:Lcom/android/settings_exlib/drawer/Tile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter$3;->this$0:Lcom/android/settings_ex/dashboard/DashboardAdapter;

    invoke-static {v0}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->-get2(Lcom/android/settings_ex/dashboard/DashboardAdapter;)Landroid/content/Context;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter$3;->this$0:Lcom/android/settings_ex/dashboard/DashboardAdapter;

    invoke-static {v1}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->-get2(Lcom/android/settings_ex/dashboard/DashboardAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter$3;->val$suggestion:Lcom/android/settings_exlib/drawer/Tile;

    invoke-static {v1, v2}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->getSuggestionIdentifier(Landroid/content/Context;Lcom/android/settings_exlib/drawer/Tile;)Ljava/lang/String;

    move-result-object v1

    .line 364
    const/16 v2, 0x183

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter$3;->this$0:Lcom/android/settings_ex/dashboard/DashboardAdapter;

    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter$3;->val$suggestion:Lcom/android/settings_exlib/drawer/Tile;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->disableSuggestion(Lcom/android/settings_exlib/drawer/Tile;)V

    .line 367
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter$3;->this$0:Lcom/android/settings_ex/dashboard/DashboardAdapter;

    invoke-static {v0}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->-get4(Lcom/android/settings_ex/dashboard/DashboardAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter$3;->val$suggestion:Lcom/android/settings_exlib/drawer/Tile;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 368
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter$3;->this$0:Lcom/android/settings_ex/dashboard/DashboardAdapter;

    invoke-static {v0}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->-wrap1(Lcom/android/settings_ex/dashboard/DashboardAdapter;)V

    .line 369
    const/4 v0, 0x1

    return v0
.end method
