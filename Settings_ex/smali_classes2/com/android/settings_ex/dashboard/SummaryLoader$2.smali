.class Lcom/android/settings_ex/dashboard/SummaryLoader$2;
.super Ljava/lang/Object;
.source "SummaryLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/dashboard/SummaryLoader;->setSummary(Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/dashboard/SummaryLoader;

.field final synthetic val$component:Landroid/content/ComponentName;

.field final synthetic val$summary:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/dashboard/SummaryLoader;Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/dashboard/SummaryLoader;
    .param p2, "val$component"    # Landroid/content/ComponentName;
    .param p3, "val$summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/SummaryLoader$2;->this$0:Lcom/android/settings_ex/dashboard/SummaryLoader;

    iput-object p2, p0, Lcom/android/settings_ex/dashboard/SummaryLoader$2;->val$component:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/settings_ex/dashboard/SummaryLoader$2;->val$summary:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 97
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SummaryLoader$2;->this$0:Lcom/android/settings_ex/dashboard/SummaryLoader;

    invoke-static {v1}, Lcom/android/settings_ex/dashboard/SummaryLoader;->-get1(Lcom/android/settings_ex/dashboard/SummaryLoader;)Lcom/android/settings_ex/dashboard/DashboardAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/dashboard/SummaryLoader$2;->val$component:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->getTile(Landroid/content/ComponentName;)Lcom/android/settings_exlib/drawer/Tile;

    move-result-object v0

    .line 98
    .local v0, "tile":Lcom/android/settings_exlib/drawer/Tile;
    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SummaryLoader$2;->val$summary:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/android/settings_exlib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    .line 101
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SummaryLoader$2;->this$0:Lcom/android/settings_ex/dashboard/SummaryLoader;

    invoke-static {v1}, Lcom/android/settings_ex/dashboard/SummaryLoader;->-get1(Lcom/android/settings_ex/dashboard/SummaryLoader;)Lcom/android/settings_ex/dashboard/DashboardAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->notifyChanged(Lcom/android/settings_exlib/drawer/Tile;)V

    .line 94
    return-void
.end method
