.class Lcom/android/settings_ex/dashboard/DashboardAdapter$4;
.super Ljava/lang/Object;
.source "DashboardAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/dashboard/DashboardAdapter;->onBindSuggestionHeader(Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;)V
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
    .line 392
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter$4;->this$0:Lcom/android/settings_ex/dashboard/DashboardAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter$4;->this$0:Lcom/android/settings_ex/dashboard/DashboardAdapter;

    invoke-static {v0}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->-wrap0(Lcom/android/settings_ex/dashboard/DashboardAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter$4;->this$0:Lcom/android/settings_ex/dashboard/DashboardAdapter;

    invoke-static {}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->-get1()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->-set0(Lcom/android/settings_ex/dashboard/DashboardAdapter;I)I

    .line 400
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter$4;->this$0:Lcom/android/settings_ex/dashboard/DashboardAdapter;

    invoke-static {v0}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->-wrap1(Lcom/android/settings_ex/dashboard/DashboardAdapter;)V

    .line 394
    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter$4;->this$0:Lcom/android/settings_ex/dashboard/DashboardAdapter;

    invoke-static {}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->-get0()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->-set0(Lcom/android/settings_ex/dashboard/DashboardAdapter;I)I

    goto :goto_0
.end method
