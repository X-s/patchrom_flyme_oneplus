.class Lcom/android/settings_ex/dashboard/DashboardAdapter$2;
.super Ljava/lang/Object;
.source "DashboardAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/dashboard/DashboardAdapter;->onBindViewHolder(Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/dashboard/DashboardAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/dashboard/DashboardAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/dashboard/DashboardAdapter;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter$2;->this$0:Lcom/android/settings_ex/dashboard/DashboardAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter$2;->this$0:Lcom/android/settings_ex/dashboard/DashboardAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->onExpandClick(Landroid/view/View;)V

    .line 345
    return-void
.end method
