.class Lcom/android/settings_ex/applications/ProcessStatsDetail$4;
.super Ljava/lang/Object;
.source "ProcessStatsDetail.java"

# interfaces
.implements Lcom/android/settings_ex/CancellablePreference$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/ProcessStatsDetail;->updateRunningServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/ProcessStatsDetail;

.field final synthetic val$service:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/ProcessStatsDetail;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/applications/ProcessStatsDetail;
    .param p2, "val$service"    # Landroid/content/ComponentName;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail$4;->this$0:Lcom/android/settings_ex/applications/ProcessStatsDetail;

    iput-object p2, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail$4;->val$service:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/android/settings_ex/CancellablePreference;)V
    .locals 3
    .param p1, "preference"    # Lcom/android/settings_ex/CancellablePreference;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail$4;->this$0:Lcom/android/settings_ex/applications/ProcessStatsDetail;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail$4;->val$service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail$4;->val$service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->-wrap1(Lcom/android/settings_ex/applications/ProcessStatsDetail;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method
