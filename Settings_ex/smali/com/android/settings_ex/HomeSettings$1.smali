.class Lcom/android/settings_ex/HomeSettings$1;
.super Ljava/lang/Object;
.source "HomeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/HomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/HomeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/HomeSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/HomeSettings;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/settings_ex/HomeSettings$1;->this$0:Lcom/android/settings_ex/HomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 104
    .local v0, "index":I
    iget-object v2, p0, Lcom/android/settings_ex/HomeSettings$1;->this$0:Lcom/android/settings_ex/HomeSettings;

    invoke-static {v2}, Lcom/android/settings_ex/HomeSettings;->-get2(Lcom/android/settings_ex/HomeSettings;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    .line 105
    .local v1, "pref":Lcom/android/settings_ex/HomeSettings$HomeAppPreference;
    iget-boolean v2, v1, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->isChecked:Z

    if-nez v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/android/settings_ex/HomeSettings$1;->this$0:Lcom/android/settings_ex/HomeSettings;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/HomeSettings;->makeCurrentHome(Lcom/android/settings_ex/HomeSettings$HomeAppPreference;)V

    .line 102
    :cond_0
    return-void
.end method
